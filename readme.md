# Templates for Reproducible and Replicable Research
A template repository that contains a folder structure, template documents, and best practice suggestions for conducting reproducible geographic research. The folder structure presented here can be used to

1. pre-register, document, and share original research, or
2. document, organize, and share a reproduction and/or replication of original research.

An overview of the folder structure of this repository is provided below. The `README.md` and `index.csv` files contained in each folder provide details about the structure of that folder and suggestions on its use. The `docs/report/` folder contains templates to facilitate 1) the pre-registration of original research, and 2) report the complete details of attempted reproductions and replications of original research.

## Repository Overview

    Reproduction of <Study Name>
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
    |- study.Rmd       # executable Rmarkdown , if applicable
    |- Makefile        # executable Makefile, if applicable
    |- study.Rproj     # RStudio project, if applicable

## Reproducible Research Practices
Every research project is different. This repository is designed to serve as a flexible guide capable of structuring work completed throughout the lifecycle of different types of research project. No matter the project type, a few key suggested practices when using this repository include:

- Keeping original, raw data in the `data/raw` folder. Do not alter that file during data analysis.
- Keeping data derived from the raw data (e.g. subsets) separate from the raw data in the `data/derived` folder.
- Keeping Exploratory/experimental outputs in the `data/Scratch` folder. *Files in this folder should be able to be deleted without negatively impacting the project*.  
- Limiting manual changes to data. *Conduct as much data processing and analysis as possible with code*.
- Keeping code in simple text files that are human readable.
- Explicitly tying procedural documents or code together so it is clear how things work together
- Creating a top-level `Makefile` or Rmarkdown file that documents computational work in executable form.
- Providing a executable electronic research compendia that shares the entire computational environment
- Keeping a README in each folder, describing the purpose of the directory and its contents.
- Maintaining a formal metadata descriptor at the root of the package that describes all the important input and output data files.

## References
The structure of this repository closely follows the excellent [rr-init](https://github.com/Reproducible-Science-Curriculum/rr-init) repository, which in turn follows Nobel [(2009)](https://journals.plos.org/ploscompbiol/article?id=10.1371/journal.pcbi.1000424). We have also incorporated structural ideas from [Gandrud (2015)](http://christophergandrud.github.io/RepResR-RStudio/) and Camerer et al. ([2016](https://osf.io/pfdyw/), [2018](https://osf.io/bzm54/)).  Reference information related to the **Pre-registration Template** and **Replication Report Template** is included in the `/docs` folder.
