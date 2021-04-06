load ../../dataset/6R7I.pdb
load ../../top4_structures/SA_CTRD/6R7I_1.pdb
align 6R7I , 6R7I_1
load structures/6R7I_clash.pdb
load structures/6R7I_declash.pdb
remove hydrogens
set_view (\
    -0.288249046,    0.545026481,    0.787304223,\
     0.159212738,    0.838034034,   -0.521860957,\
    -0.944220901,   -0.025075510,   -0.328340620,\
    -0.000271522,    0.000296589,  -43.099422455,\
     2.714448929,  -32.448623657,  -34.954910278,\
    -8.838713646,   95.015190125,   20.000000000 )    
color white, chain N
color Cyan, chain E
hide all
show cartoon, chain N chain E
sele chain N and (resi 132 or resi 133 or resi 129 or resi 128 or resi 125 or resi 124 or resi 122 or resi 115) or chain E and (resi 113 or resi 112 or resi 115 or resi 78 or resi 107 or resi 114 or resi 106)
show sticks, sele
show spheres, 6R7I_declash 6R7I_clash
color orange, 6R7I_declash 6R7I_clash
set sphere_scale, 0.2
unset specular
bg_color white
set ray_trace_mode, 1
set ray_trace_gain, 0
set ray_trace_color, black
unset depth_cue
set orthoscopic

