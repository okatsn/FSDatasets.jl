
## Variables

- `Mu1` is the friction coefficients
- `Mu1` is derived from the ratio of `shear1` to `Normal`
- `Mu2` is an obsolete measure that we are not using anymore.
- `LVDT1` and `LVDT2` are the axial shortening, respectively from: an high resolution LVDT placed close to the surface; and a low resolution LVDT placed far from the surface. 
- Please notice that, in the SHIVA configuration, the LVDT only measures the axial displacement whereas slip comes from the Encoder and Encoder 2. `Encoder` and `Encoder2` are the number of rotations, respectively from: an high resolution encoder sensitive to the slow velocities and a low resolution encoder sensitive to the high velocities, placed at a similar distance.
- If `shear2` exists, it is an old measure of the shear stress, made with the same load cell of shear1 but with a different electronics. It should provide the same value of shear stress but prevents signal saturation in some cases.
- Indexing is to distinguish between the several sensors we are using. They should provide the same information with different resolution.


## The units


- Time (ms)
- shear, Normal (MPa) 
- slip (m), 
- shortening - LVDT (mm).

## Sampling rate

- We can sample at a sampling rates up to 25000 S/s. By choice, we only sample the fast slip events at this rate. At the beginning and at the end of the test, we sample at 2.5 s/s
