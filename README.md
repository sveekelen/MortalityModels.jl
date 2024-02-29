# PopMoMo
PopMoMo stands for Population Mortality Models and can be used to fit popular population mortality models in Julia. As of right now, PopMoMo is still under development and can only be used to fit a simple Lee-Carter (LC) model using a SVD decomposition.

The LC model can be fitted in Julia using the following function:
``` julia
    LC_SVD(mMu)
```
The function returns age and period effects for the LC model fitted using an SVD methodology. Note that the input here is a log force of mortality matrix with ages on the row and years on the columns.


[![Build Status](https://github.com/sveekelen/JuMoMo.jl/actions/workflows/CI.yml/badge.svg?branch=master)](https://github.com/sveekelen/JuMoMo.jl/actions/workflows/CI.yml?query=branch%3Amaster)
