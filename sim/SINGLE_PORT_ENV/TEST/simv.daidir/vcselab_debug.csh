#!/bin/csh -f

cd /home/master/euclide_project/Triangle_New_1/sim/SINGLE_PORT_ENV/TEST

#This ENV is used to avoid overriding current script in next vcselab run 
setenv SNPS_VCSELAB_SCRIPT_NO_OVERRIDE  1

/export/SoftWare/Synopsys/vcs/T-2022.06/linux64/bin/vcselab $* \
    -o \
    simv \
    -nobanner \

cd -

