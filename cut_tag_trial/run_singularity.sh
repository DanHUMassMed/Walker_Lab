#!/bin/bash
COMMAND=$1
SINGULARITY_HOME=/home/daniel.higgins-umw/.singularity
CONTAINER=danhumassmed-picard-trimmomatic-1.0.1.img
singularity exec ${SINGULARITY_HOME}/${CONTAINER} ${COMMAND}
