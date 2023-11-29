#!/bin/bash

nextflow run nf-core/cutandrun -r 3.2.1 -params-file params.json -resume -bg -with-tower
