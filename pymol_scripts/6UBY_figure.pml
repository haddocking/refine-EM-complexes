load structures/6UBY.pdb
load structures/6UBY_1.pdb
align 6UBY , 6UBY_1
load structures/6UBY_clash.pdb
load structures/6UBY_declash.pdb

remove hydrogens
set_view (\
    -0.141810581,   -0.922271490,   -0.359567344,\
     0.477027208,   -0.381947696,    0.791546822,\
    -0.867368817,   -0.059277020,    0.494117022,\
     0.000195707,   -0.000098644,  -46.125476837,\
    13.577714920,  -40.677696228,   -3.987326622,\
   -72.461273193,  164.719116211,   20.000000000 )
color white, chain H
color Cyan, chain I
hide all
show cartoon, chain I chain H
sele chain H and (resi 351 or resi 143) or chain I and (resi 4 or resi 5 or resi 115 or resi 119)
show sticks, sele
show spheres, 6UBY_declash 6UBY_clash
color orange, 6UBY_declash 6UBY_clash
set sphere_scale, 0.2
unset specular
bg_color white
set ray_trace_mode, 1
set ray_trace_gain, 0
set ray_trace_color, black
unset depth_cue
set orthoscopic

