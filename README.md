# LPJ-LMfire – Oxygen branch for manuscript

This repository contains the version of the LPJ-LMfire Dynamic Global Vegetation Model used in the manuscript:

**"Combined effects of photorespiration and fire strongly regulate atmospheric oxygen levels"** 

Rayanne Vitali*, Claire M. Belcher, Benjamin J.W. Mills, Andrew J. Watson, *Science Advances* (in review)

---

## Overview

This version is derived from the `oxygen` branch of [ARVE-Research/LPJ-LMfire](https://github.com/ARVE-Research/LPJ-LMfire) and includes modifications specifically for this manuscript:

- Adjustments to **fire behavior**, including dependence on atmospheric O₂ concentration.  
- Changes to the **photosynthesis module**, including O₂ dependence for productivity.  
- Modifications influence how **fire and photorespiration interact with atmospheric oxygen**, affecting burned area, biomass, and vegetation cover.

---

## Repository contents

| File / Directory              | Description |
|-------------------------------|-------------|
| `src/`                        | Model source code, including Fortran modules and main routines for LPJ-LMfire. |
| `joboptions/`                  | Example input configurations (`.namelist` files) for different simulation setups. |
| `share/`                       | Shared parameter files, e.g., `pftpars_global.csv`. |
| `.gitignore`                   | Git ignore file for excluding temporary or output files. |
| `LICENSE`                      | License for the repository (same as upstream LPJ-LMfire). |
| `load_lpj_env_sophia.sh`      | Script to load LPJ environment modules on HPC (DTU, Sophia). |
| `outvarsinfo.namelist`         | Definitions of output variables. |
| `pftpars_global.csv`           | Global plant functional type parameters. |
| `run.sh`                       | Example run script for HPC/local execution. |
| `run_sophia.sh`                | HPC-specific run script for Sophia (DTU). |

> **Note:** Large HPC outputs are **not included**.

---

## Input data

This repository does **not include input data** used to run the model.  

An overview of the input datasets, including forcing files and parameter values, is provided in **Table S1** of the manuscript:  
*"Combined effects of photorespiration and fire strongly regulate atmospheric oxygen levels"* (Science Advances, in review).  

For reproducibility, the repository includes example joboptions and scripts (`joboptions/`, `load_lpj_env_sophia.sh`) that show how input data were used.  

> **Note:** To obtain the actual input datasets, please contact the corresponding author: rvitali@envs.au.dk

---

## How to run / reproduce output

To reproduce model simulations, the following steps should be followed:

1. **Obtain input data**  
   - All input datasets required to run the model are not included in this repository.  
   - An overview of inputs is provided in **Table S1** of the manuscript.  

2. **Set model parameters**  
   - In `src/parametersmod.f90`, set the parameters required for a given run.  
     - For example, set `O2` for the desired oxygen concentration.  
     - Use switches `HoC`, `PoI`, `MoE` to turn on/off O₂ dependence for **heat of combustion**, **probability of ignition**, and **moisture of extinction**.
     - Use switch `O2_photo` to turn on/off O₂ dependence for **photosynthesis**.
   - These settings can alternatively be incorporated into **namelist files** (`joboptions/`) for convenience.  

3. **Load relevant modules and compile the model**  
   - Compilation has been tested on HPC systems including **ISCA (University of Exeter)** and **Sophia (DTU)**.  
   - Ensure all required Fortran and MPI modules are loaded for your system.  

4. **Edit the namelist for the run**  
   - `joboptions/standard.namelist` provides a default configuration including paths and run requirements.  
   - For manuscript simulations:  
     - Spin-up for 1500 years  
     - Last 10 years of output used for analysis  

5. **Edit run scripts**  
   - Update paths and settings in `run.sh` or HPC-specific scripts (`run_sophia.sh`) as appropriate.  
   - Submit the job to run on your system.  

> **Note:** Scripts and namelists in this repository are configured as examples; users must ensure paths, modules, and HPC settings match their environment.
> 
---

## Citation

**Original LPJ-LMfire model:**  
Vitali, R., Belcher, C. M., Kaplan, J. O., & Watson, A. J. (2019). LPJ-LMfire Dynamic Global Vegetation Model. [https://doi.org/10.5281/zenodo.1184588](https://doi.org/10.5281/zenodo.1184588)

**Manuscript version (this repository):**  
Tag `v1.0-paper`, frozen version used for “Combined effects of photorespiration and fire strongly regulate atmospheric oxygen levels” (Science Advances, in review).

---

## Contact

For further details or questions about running the model, please contact the corresponding author: rvitali@envs.au.dk 
