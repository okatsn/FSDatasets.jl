# FSDatasets

[![Stable](https://img.shields.io/badge/docs-stable-blue.svg)](https://okatsn.github.io/FSDatasets.jl/stable/)
[![Dev](https://img.shields.io/badge/docs-dev-blue.svg)](https://okatsn.github.io/FSDatasets.jl/dev/)
[![Build Status](https://github.com/okatsn/FSDatasets.jl/actions/workflows/CI.yml/badge.svg?branch=main)](https://github.com/okatsn/FSDatasets.jl/actions/workflows/CI.yml?query=branch%3Amain)
[![Coverage](https://codecov.io/gh/okatsn/FSDatasets.jl/branch/main/graph/badge.svg)](https://codecov.io/gh/okatsn/FSDatasets.jl)

<!-- Don't have any of your custom contents above; they won't occur if there is no citation. -->

## Introduction

## Package `LHVRSHIVA` of Dataset `SHIVA` and `LHVR`
### Description
SHIVA_combined.csv: Fisher information Measure (FIM) and Shannon Entropy Power (SEP) of the timeseries of Friction coefficient in the rock shearing experiment of Spagnuolo et al. (2015) 
LHVR_combined.csv: Fisher information Measure (FIM) and Shannon Entropy Power (SEP) of the timeseries of Friction coefficient in the rock shearing experiment of Hung et al. (2019) 

#### Columns:
   time (s)             : time in the unit of second
   friction coefficient : friction coefficient 
   time (ms)            : time in the unit of millisecond
   moving window        : the size of moving window for calculating FIM and SEP
   SEP                  : Shannon Entropy Power
   FIM                  : Fisher Information Measure
   trial                : Code for a specific experiment/test
   rock type            : Rock type

    
#### Reference:
Hung, C.-C., Kuo, L.-W., Spagnuolo, E., Wang, C.-C., Toro, G. D., Wu, W.-J., et al. (2019). Grain Fragmentation and Frictional Melting During Initial Experimental Deformation and Implications for Seismic Slip at Shallow Depths. Journal of Geophysical Research: Solid Earth, 124(11), 11150–11169. https://doi.org/10.1029/2019JB017905
Spagnuolo, E., Plümper, O., Violay, M., Cavallo, A., & Di Toro, G. (2015). Fast-moving dislocations trigger flash weakening in carbonate-bearing faults during earthquakes. Scientific Reports, 5(16112), 1–11. https://doi.org/10.1038/srep16112

This package is create on 2023-03-02.
