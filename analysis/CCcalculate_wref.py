#----------------------------------------------------------------------------------------
# This script is tested for Chimera 1.11.2
# Called as:
#
#    chimera --nogui --script "CCcalculate_wref.py <pdb file> <reference PDB> <map> <resolution> "
#
# The model PDB will be superimposed onto a reference PDB which is prepositioned in the EM density. 
# A synthetic map of the PDB structure with the resolution of the experimental map
# will be generated and fitted on the experimental map.
# After fitting, the correlation of the best fitted structure is measured
#----------------------------------------------------------------------------------------

import argparse
import chimera
import VolumeViewer
from MoleculeMap import molmap
from FitMap.fitcmd import fitmap
from Measure import measure
import Midas

# Parsing 
parser = argparse.ArgumentParser(description="Fits model in EM map using a reference pdb")
parser.add_argument("model", help="Path to model PDB")
parser.add_argument("reference", help="Path to reference PDB")
parser.add_argument("em_map", help="Path to experimental EM density map")
parser.add_argument("resolution", help="EM map resolution")
args = parser.parse_args()


model = chimera.openModels.open(args.model)[0]
ref = chimera.openModels.open(args.reference)[0]
em_map = VolumeViewer.open_volume_file(args.em_map)[0]
res = float(args.resolution)

model_list = []
ref_list = []

# Lists of CA atoms are generated as the number of atoms for aligment has to be equal 

for atom in model.atoms:
    if "CA" == atom.name:
        model_list.append(atom)
        

for atom in ref.atoms:
    if len(ref_list) == len(model_list):
        continue   
    if "CA" == atom.name:
        ref_list.append(atom)

  
Midas.match(model_list, ref_list)

# After aligment, a synthetic map is generated and localy fit on the experintal map 
synth_map = molmap.molecule_map(model.atoms, res)
select = chimera.selection.ItemizedSelection([synth_map])
fitmap(select, em_map, listFits = False)

# Correlation is measured after fitting

measure.correlation("correlation", [synth_map], [em_map])
