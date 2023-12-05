#!/bin/bash
#nextflow -c conf/experiment.config run ../../Cut-and-Tag-Nextflow --save_reference true -resume -bg -with-tower -N daniel.higgins@umassmed.edu
nextflow  -c conf/experiment.config run ../../Cut-and-Tag-Nextflow -resume -bg -with-tower -N daniel.higgins@umassmed.edu
