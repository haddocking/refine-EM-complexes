# Annalysis scripts

### Itermolecular clashes
The intermolecular clashes are discribed as intermolecular contacts of < 2.5 Angstrom.  
This is done using the `contact-chainID.cpp` script which is assessable at [haddock-tools](https://github.com/haddocking/haddock-tools).  
This script is called in the terminal as:  
`contact-chainID <pdb-file> 2.5 | wc | awk '{print $1}'`

### Probe score

The probe score of the complexes are calculared using [Probe]{http://kinemage.biochem.duke.edu/software/probe.php}.  
For this, default settings were used.

### Cross correlation

The Cross correlation was calculated using the fit in map function of [UCSF Chimera]{https://www.cgl.ucsf.edu/chimera/}.  
To calculate reliable cross correlation values, the Python script `CCcalculate_wref` was used.  
This script uses a reference model which is prepositioned in the density map.  
Running this script is done via the terminal:  
`chimera --nogui --script "CCcalculate_wref.py <model> <reference-model> <density-map> <resolution>`

### Molprobity

### Secondary structure
