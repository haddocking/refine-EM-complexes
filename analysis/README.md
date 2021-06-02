# Analysis scripts

### Intermolecular clashes
The intermolecular clashes are defined as intermolecular contacts of < 2.5 Angstrom.  
This is done using the `contact-chainID.cpp` script which is assessable at [haddock-tools](https://github.com/haddocking/haddock-tools).  
This script is called in the terminal as:  
`contact-chainID <pdb-file> 2.5 | wc | awk '{print $1}'`

### Probe score

The probe score of the complexes are calculated using [Probe](http://kinemage.biochem.duke.edu/software/probe.php).  
For this, default settings were used.

### Cross correlation

The Cross correlation was calculated using the fit in map function of [UCSF Chimera](https://www.cgl.ucsf.edu/chimera/).  
To calculate reliable cross correlation values, the Python script `CCcalculate_wref` was used.  
This script uses a reference model which is prepositioned in the density map.  
Running this script is done via the terminal:  
`chimera --nogui --script "CCcalculate_wref.py <model> <reference-model> <density-map> <resolution>`

### Molprobity

To calculate Ramachandran outliers, rotamer outliers and the clash score, [Molprobity](http://molprobity.biochem.duke.edu) was used with default settings.

### Secondary structure

Secondary structure elements were calculated using [stride](http://webclu.bio.wzw.tum.de/stride/) using default settings.

---

## Jupiter notebooks used to analyse the raw data and generate the plots

* ***Clash_probescore_CC.ipynb***: contains the analyses of the intermolecular clashes, probescore and cross-correlation.  
* ***Computational_load.ipynb***: contains the analyses of the computational load of each protocol.  
* ***Molprobity.ipynb***: contains the analysis of the rotamer outliers, ramachandran outliers and clashscore.  
* ***stride.ipynb***: contains the analysis of the secondary structure elements
