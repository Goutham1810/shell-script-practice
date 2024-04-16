#!/bin/bash

MOVIES=("RRR" "GarudaVedgha" "Aaata")

#print 1st item of array
echo "First Movie" ${MOVIES[0]}
#print 2nd item of array
echo "Second Movie ${MOVIES[1]}"
#print all the array elements
echo "To Print all movies ${MOVIES[@]}"
