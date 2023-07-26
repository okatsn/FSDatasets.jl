```@meta
CurrentModule = FSDatasets
```

# FSDatasets.jl

[FSDatasets](https://github.com/okatsn/FSDatasets.jl) provides the julia interface for retrieving the data of [Fisher information and Shannon entropy of Rock friction experiment](https://data.mendeley.com/datasets/ybcs4mjp6d/).

## Example 

### List available datasets

```@example a123
using FSDatasets
FSDatasets.datasets()
```


### Load a specific dataset

```@example a123
df = FSDatasets.dataset("LHVRSHIVA", "SHIVA")
df[1:5, :]
```

## Description

Name
- SHIVA: Fisher information Measure (FIM) and Shannon Entropy Power (SEP) of the timeseries of Friction coefficient in the rock shearing experiment of Spagnuolo et al. (2015) 
- LHVR: Fisher information Measure (FIM) and Shannon Entropy Power (SEP) of the timeseries of Friction coefficient in the rock shearing experiment of Hung et al. (2019) 

Columns:
| Header               | Description                                           |
|----------------------|-------------------------------------------------------|
| time (s)             | time in the unit of second                            |
| friction coefficient | friction coefficient                                  |
| time (ms)            | time in the unit of millisecond                       |
| moving window        | the size of moving window for calculating FIM and SEP |
| SEP                  | Shannon Entropy Power                                 |
| FIM                  | Fisher Information Measure                            |
| trial                | Code for a specific experiment/test                   |
| rock type            | Rock type                                             |

Reference:
- Hung, C.-C., Kuo, L.-W., Spagnuolo, E., Wang, C.-C., Toro, G. D., Wu, W.-J., et al. (2019). Grain Fragmentation and Frictional Melting During Initial Experimental Deformation and Implications for Seismic Slip at Shallow Depths. Journal of Geophysical Research: Solid Earth, 124(11), 11150–11169. https://doi.org/10.1029/2019JB017905
- Spagnuolo, E., Plümper, O., Violay, M., Cavallo, A., & Di Toro, G. (2015). Fast-moving dislocations trigger flash weakening in carbonate-bearing faults during earthquakes. Scientific Reports, 5(16112), 1–11. https://doi.org/10.1038/srep16112

## Index

```@index
```

```@autodocs
Modules = [FSDatasets]
```
