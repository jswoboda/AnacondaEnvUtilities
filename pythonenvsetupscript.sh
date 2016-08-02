#!/bin/bash

ALLVAR=""
for var in "$@"
do
    ALLVAR="$ALLVAR $var"
done

if [ "$ALLVAR"  != "" ]; then
    bash $ALLVAR
fi

# For betting looking plots, used in RadarDataSim
conda install seaborn
# Need for RadarDataSim and to speed up calculations
conda install six
conda install numba
# Needed for GeoData. Use menpo as mayavi 4.4 causes matplotlib to be downgraded below 1.5. Need at least Mayavi 4.4.4
conda install -c menpo mayavi
