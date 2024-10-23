#!/bin/csh -f

cd /home/icvm/my_prj/Triangle_Design/Triangle_New_1/sim/DUAL_PORT_ENV/FADD_40_ENV

#This ENV is used to avoid overriding current script in next vcselab run 
setenv SNPS_VCSELAB_SCRIPT_NO_OVERRIDE  1

/export/SoftWare/Synopsys/vcs/T-2022.06/linux64/bin/vcselab $* \
    -o \
    simv \
    -nobanner \

cd -

