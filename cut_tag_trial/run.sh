#!/bin/bash
nextflow -c conf/experiment.config run ../../Cut-and-Tag-Nextflow -resume -bg -with-tower -N daniel.higgins@umassmed.edu
