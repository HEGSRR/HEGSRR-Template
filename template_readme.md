# Template for Reproducible and Replicable Research in Human-Environment and Geographical Sciences

This template Git repository contains a folder structure, template documents, and best practice suggestions for conducting geographic research with a reproducible research compendium.
The main [readme.md](readme.md) contains information about the research study.

The [Template_LICENSE](Template_LICENSE) file provides the BSD 3-Clause license for using this template.
To cite the template, please use [template_reference.bib](template_reference.bib) or:
> Kedron, P., & Holler, J. (2023). Template for Reproducible and Replicable Research in Human-Environment and Geographical Sciences. https://doi.org/10.17605/OSF.IO/W29MQ

The folder structure presented here can be used to:

1. pre-register, document, and share original research in a reproducible manner, or
2. document and share a reproduction and/or replication of original research.

An overview of the folder structure of this repository is provided below. The `readme.md` file contained in each folder provides details about the purpose of that folder and suggestions on its use.
The authors should maintain the [data/data_metadata.csv](data/data_metadata.csv) file to list all raw and derived data, the [procedure/procedure_metadata.csv](procedure/procedure_metadata.csv) file with an ordered list of all procedures and/or code, and the [results/results_metadata.csv](results/results_metadata.csv) folder with a list of all figures, tables, and other media produced by the research.
The `docs/report/` folder contains templates to facilitate 1) the pre-registration of research plans, and 2) report the complete details of original, reproduction, or replication studies.

## Repository Overview

    <Study Name>
    |- docs/                # study documentation
    |  +- report/           # reproduction plan, reproduction report
    |  +- manuscript/       # manuscript components
    |  +- presentation/     # presentation materials
    |
    |- data                 # study data
    |  - raw/               # raw data, should not be altered
    |    +- public/         # public data with version control
    |    +- private/        # private data with no version control
    |  +- derived/          # derived data
    |    +- public/         # public data with version control
    |    +- private/        # private data with no version control
    |  +- scratch/          # temporary files that can be safely deleted or lost
    |  +- metadata/         # documentation of metadata
    |
    |-procedure
    |  +- environment/      # details of the computational environment
    |  +- code/             # any programmatic code, clearly named and commented
    |  +- protocols/        # any non-computational protocols
    |
    |- results              # all output from workflows and analyses
    |  +- figures/          # graphs, likely designated for manuscript
    |  +- tables/           # tables, likely designated for manuscript  
    |  +- other/            # diagrams, images, and other non-graph graphics
    |
    |- readme.md            # description of the study
    |- template_readme.md   # description of repository design and references
    |- LICENSE              # intellectual property license, ideally open source
    |- Template_LICENSE     # BSD 3-Clause license for this template
    |- CITATION.cff         # preferred citation for the research
    |- .gitignore           # files to ignore from git tracking

## Reproducible Research Practices

Every research project is different. This repository is designed to serve as a flexible guide capable of structuring work completed throughout the lifecycle of different types of research projects.
No matter the project type, a few key suggested practices when using this repository include:

- Register your pre-analysis plan with a service like Open Science Foundation at [https://osf.io/](https://osf.io/) or an equivalent and add crosslinks between your research repository and the pre-registered plan.
- Keeping original, raw data in the `data/raw` folder. Do not alter that file during data analysis.
- Keeping data derived from the raw data (e.g. subsets) separate from the raw data in the `data/derived` folder.
- Keeping Exploratory/experimental outputs in the `data/scratch` folder. *Files in this folder should be able to be deleted without negatively impacting the project*.  
- Limiting manual changes to data. *Conduct as much data processing and analysis as possible with code*.
- Maintain well-commented and human-readable code, e.g. following the [tidyverse style guide for R](https://style.tidyverse.org/) or the [PEP 8 Style Guide for Python](https://www.python.org/dev/peps/pep-0008/)
- Creating a top-level `Makefile` or Rmarkdown file that documents computational work in executable form and/or clear comments and instructions in the header of each procedure and code file and good descriptions in the `procedure_metadata.csv`
- Document and/or package the computational environment in the `procedure\environment` folder.

## References

The structure of this repository closely follows the excellent [rr-init](https://github.com/Reproducible-Science-Curriculum/rr-init) repository, which in turn follows Nobel [(2009)](https://journals.plos.org/ploscompbiol/article?id=10.1371/journal.pcbi.1000424).
We have also incorporated structural ideas from [Gandrud (2015)](http://christophergandrud.github.io/RepResR-RStudio/) and Camerer et al. ([2016](https://osf.io/pfdyw/), [2018](https://osf.io/bzm54/)).

### Pre-registration Template

A pre-registration template for studies involving geographic analyses.
This template is modelled on similar templates developed by the [Open Science Framework (OSF)](http://osf.io/x5w7h), [AsPredicted](https://osf.io/fnsb6/), the [prereg package](https://github.com/crsh/prereg), and Van den Akker et al. [(2019)](http://doi:10.31234/osf.io/hvfmr).
The OSF template is our most direct source.
This template can be used to transparently plan and pre-register original geographic research. [Cite the OSF preregistration template and the licenses](https://osf.io/preprints/metaarxiv/epgjd/)

### Reproduction and Replication Template

A template to facilitate the documentation and reporting of reproductions and replications of original geographic research.
Stylistically, this template follows the [ReScience article template](https://github.com/ReScience/template), but also draws inspiration from Camerer et al. ([2016](https://osf.io/pfdyw/), [2018](https://osf.io/bzm54/)).
Following Camerer et al., we suggest using the template to first document and share the procedures of the planned reproduction/replication before re-analysis begins.
After the reproduction/replication is complete, we suggest then completing the template and sharing the report alongside the originally published planning document.

Other examples of registered replication reports are available from the [Reproducibilty Project](https://osf.io/s3hfr/), [registered replication projects](https://www.psychologicalscience.org/publications/replication/ongoing-projects) published by the Association of Psychological Science, and ReScience[C](http://rescience.github.io/) and [X](http://rescience.org/x).
Users may also be interested in the [Transparency and Openess Promotion (TOP) Guidelines](https://www.cos.io/initiatives/top-guidelines), the [replication policy](https://royalsocietypublishing.org/rsos/replication-studies) of the Royal Society, or this example web-based [reproducibility workflow](https://odmap.wsl.ch/) for species distribution models which the authors converted into a web-based report generator.
