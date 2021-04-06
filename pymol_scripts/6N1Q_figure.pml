load structures/6N1Q.pdb
load structures/6N1Q_1.pdb
align 6N1Q_1, 6N1Q
load structures/6N1Q_clash.pdb
load structures/6N1Q_declash.pdb
set_view (\
    -0.759542167,   -0.176655620,    0.626006842,\
    -0.631129801,   -0.032648325,   -0.774977922,\
     0.157344386,   -0.983720243,   -0.086692400,\
     0.002798610,    0.004302630,  -32.651885986,\
   139.404556274,  144.573226929,  165.373397827,\
  -1372.664428711, 1439.646362305,   20.000000000 )
remove hydrogens

color white, chain B
color Cyan, chain C
hide all
show cartoon, chain B chain C
sele chain B and (resi 77 or resi 78 or resi 147 or resi 148) or chain C and (resi 85 or resi 89 or resi 57 or resi 63 or resi 73)
show sticks, sele
show spheres, 6N1Q_clash 6N1Q_declash
color orange, 6N1Q_clash 6N1Q_clash
set sphere_scale, 0.2
unset specular
bg_color white
set ray_trace_mode, 1
set ray_trace_gain, 0
set ray_trace_color, black
unset depth_cue
set orthoscopic

