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

## Citation

**Original LPJ-LMfire model:**  
Vitali, R., Belcher, C. M., Kaplan, J. O., & Watson, A. J. (2019). LPJ-LMfire Dynamic Global Vegetation Model. [https://doi.org/10.5281/zenodo.1184588](https://doi.org/10.5281/zenodo.1184588)

**Manuscript version (this repository):**  
Tag `v1.0-paper`, frozen version used for “Combined effects of photorespiration and fire strongly regulate atmospheric oxygen levels” (Science Advances, in review).

---

## Contact

For further details or questions about running the model, please contact the corresponding author: rvitali@envs.au.dk 
