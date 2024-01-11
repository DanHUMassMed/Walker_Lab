#!/bin/bash
nextflow -c conf/experiment.config run ../../RNA-Seq-Nextflow -resume -bg -with-tower -N daniel.higgins@umassmed.edu
#nextflow -c conf/experiment.config run ../../Cut-and-Tag-Nextflow -bg -with-tower -N daniel.higgins@umassmed.edu
