# Title of Study
** Insert names of the original auhtors in Kedron, P.J. format **

### Abstract

> Briefly describe the study. If the study is a reproduction or replication, the full citation of the original study should be included here with digital object identifier (DOI) to the study and, if applicable, any preregistration, code or data repositories. Delete this instruction from the final repository.

### Respository Documents

> Link your reports, manuscripts, presentations, publication DOIs, preregistrations, etc. here. Delete this instruction and unused list items from your final repository. Adjust the file names and paths and add additional items as necessary.

- Preregistration: https://osf.io/my_study
- Publication: https://doi.org/my_study
- Pre-analysis plan: [docs/report/preanalysis.pdf](docs/report/preanalysis.pdf)
- Study report: [docs/report/report.pdf](docs/report/report.pdf)
- Manuscript: [docs/manuscript/manuscript.pdf](docs/manuscript/manuscript.pdf)
- Presentation: [docs/presentation/presentation.pdf](docs/presentation/presentation.pdf)

### Repository Contents

The contents of this repository are outlined in three tables:
- Data: [data/data_metadata.csv](data/data_metadata.csv)
- Procedures: [procedure/procedure_metadata.csv](procedure/procedure_metadata.csv)
- Results: [results/results_metadata.csv](results/results_metadata.csv)

# Templates for Reproducible and Replicable Research

A template repository that contains a folder structure, template documents, and best practice suggestions for conducting reproducible geographic research. The folder structure presented here can be used to

1. pre-register, document, and share original research, or
2. document, organize, and share a reproduction and/or replication of original research.

An overview of the folder structure of this repository is provided below. The `readme.md` file contained in each folder provides details about the purpose of that folder and suggestions on its use. The authors should maintain the [data/data_metadata.csv](data/data_metadata.csv) file to list all raw and derived data, the [procedure/procedure_metadata.csv](procedure/procedure_metadata.csv) file with an ordered list of all procedures and/or code, and the [results/results_metadata.csv](results/results_metadata.csv) folder with a list of all figures, tables, and other media produced by the research.
The `docs/report/` folder contains templates to facilitate 1) the pre-registration of research plans, and 2) report the complete details of original, reproduction, or replication studies.

## Repository Overview

    <Study Name>
    |- docs/           # study documentation
    |  +- report/      # reproduction plan, reproduction report
    |  +- manuscript/  # manuscript components
    |
    |- data            # raw data, which are not changed once created
    |  +- raw/         # raw data, will not be altered
    |  +- derived/     # derived data, will not be altered once created
    |  +- scratch/     # temporary files that can be safely deleted or lost
    |  +- metadata/    # documentation of metadata
    |
    |-procedure
    |  +- code/        # any programmatic code, clearly named and commented
    |  +- protocols/   # any non-computational protocols
    |
    |- results         # all output from workflows and analyses
    |  +- figures/     # graphs, likely designated for manuscript
    |  +- maps/        # maps, likely designated for manuscript  
    |  +- other/       # diagrams, images, and other non-graph graphics
    |
    |- readme.md       # the top level description of content
    |- study.Rproj     # RStudio project, if applicable

## Reproducible Research Practices
Every research project is different. This repository is designed to serve as a flexible guide capable of structuring work completed throughout the lifecycle of different types of research projects. No matter the project type, a few key suggested practices when using this repository include:

- Register your pre-analysis plan with a service like Open Science Foundation at [https://osf.io/](https://osf.io/) or an equivalent and add crosslinks between your research repository and the pre-registered plan.
- Keeping original, raw data in the `data/raw` folder. Do not alter that file during data analysis.
- Keeping data derived from the raw data (e.g. subsets) separate from the raw data in the `data/derived` folder.
- Keeping Exploratory/experimental outputs in the `data/scratch` folder. *Files in this folder should be able to be deleted without negatively impacting the project*.  
- Limiting manual changes to data. *Conduct as much data processing and analysis as possible with code*.
- Maintain well-commented and human-readable code, e.g. following the [tidyverse style guide for R](https://style.tidyverse.org/) or the [PEP 8 Style Guide for Python](https://www.python.org/dev/peps/pep-0008/)
- Creating a top-level `Makefile` or Rmarkdown file that documents computational work in executable form and/or clear comments and instructions in the header of each procedure and code file and good descriptions in the `procedure_metadata.csv` 
- Document and/or package the computational environment in the `procedure\environment` folder.

## References
The structure of this repository closely follows the excellent [rr-init](https://github.com/Reproducible-Science-Curriculum/rr-init) repository, which in turn follows Nobel [(2009)](https://journals.plos.org/ploscompbiol/article?id=10.1371/journal.pcbi.1000424). We have also incorporated structural ideas from [Gandrud (2015)](http://christophergandrud.github.io/RepResR-RStudio/) and Camerer et al. ([2016](https://osf.io/pfdyw/), [2018](https://osf.io/bzm54/)).  Reference information related to the **Pre-registration Template** and **Replication Report Template** is included in the `/docs` folder.
