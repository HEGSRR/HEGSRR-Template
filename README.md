# RR-Templates
Template respository and documents for reproducible research practices. The repository is designed to guide and structure the full research cycle:
- Preregistration
- Execution in a reproducible research compendium
- Research reports, including templates for reproduction or replication studies
- Publication

## Source Materials for the Replication Template
- Camerer et al. (2018) provide an a set of supplemental materials that demonstrate how to write up multiple replications. The authors also maintain a [Model OSF Repository](https://osf.io/pfdyw/) that has a materials section with an excellent set of replication reports of individual studies.
- Camerer et al. (2016) provide a [set of materials and model for replications](https://osf.io/bzm54/) in Experimental Economics. 
- Example of a [Registered Replication Report](https://osf.io/s3hfr/) from the Reproducibility Project: Psychology
- Published materials from [registered replication projects published by the Association of Psychological Science](https://www.psychologicalscience.org/publications/replication/ongoing-projects)
- The replication recipes developed based on Brandt et al. (2014) that are available through the OSF.  
- [Transparency and Openess Promotion (TOP) Guidelines](https://www.cos.io/initiatives/top-guidelines)
- [Replication Policy](https://royalsocietypublishing.org/rsos/replication-studies) of The Royal Society
- [Example of a template workflow for species distribution models](https://odmap.wsl.ch/) that the authors converted into a web-based report generator 
- [ReScience article template](https://github.com/ReScience/template) for reproduction studies


## References
Brandt, M.J. et al. (2014). The replication recipe: What makes a convincing replication? Journal of Experimental Social Psychology, 50: 217-224.

Camerer, C. F. et al. (2016). Evaluating replicability of laboratory experiments in economics. Science 351, 1433–1436.

Camerer, C.F., Dreber, A., Holzmeister, F. et al. Evaluating the replicability of social science experiments in Nature and Science between 2010 and 2015. Nat Hum Behav 2, 637–644 (2018). https://doi.org/10.1038/s41562-018-0399-z

Open Science Collaboration. Estimating the reproducibility of psychological science. Science 349, aac4716 (2015).


# Reproduction and/or Replication Project Initialization
This folder structure can be used to organize a reproduction and/or replication project in alignment with reproducible research guidelines.

## Overview
    
    Reproduction of <Study Name>
    |- docs/           # study documentation
    |  +- report/      # reproduction plan, reproduction report
    |  +- manuscript/  # manuscript components
    |
    |- data            # raw data, which are not changed once created
    |  +- raw/         # raw data, will not be altered
    |  +- cleaned/     # cleaned data, will not be altered once created
    |  +- scratch/        # temporary files that can be safely deleted or lost
    |
    |-procedure
    |  +- code/        # any programmatic code, clearly named and commented
    |
    |- results         # all output from workflows and analyses
    |  +- figures/     # graphs, likely designated for manuscript
    |  +- maps/        # maps, likely designated for manuscript  
    |  +- images/      # diagrams, images, and other non-graph graphics
    |
    |- README.md       # the top level description of content
    |- study.Rmd       # executable Rmarkdown , if applicable
    |- Makefile        # executable Makefile, if applicable
    |- study.Rproj     # RStudio project, if applicable

## Reproducible research practices
This folder template follows closely the excellent [rr-init template](https://github.com/Reproducible-Science-Curriculum/rr-init), which in turn follows Nobel [(2009)](https://journals.plos.org/ploscompbiol/article?id=10.1371/journal.pcbi.1000424). We have also incorporated ideas from [Gandrud (2015)](http://christophergandrud.github.io/RepResR-RStudio/) and Camerer ([2016](https://osf.io/pfdyw/), [2018](https://osf.io/bzm54/)). A few key practices include:

**Data**
- Keep a raw data folder that contains the originating data that do not get altered during the data processing or analysis.
- Keep derived data in a folder that is separate from the raw data.
- Keep Exploratory/experimental in the *Scratch* folder. Files in this folder should be able to be deleted without negatively impacting the project.  

**Data Processing and Analysis**
- Document everything you do to during your analysis.
- Complete as much data processing and data analysis as possible with code rather than with manual changes.
- Whenever possible keep code in simple text files.
- All procedures (code) should be human readable.
- Explicitly tie your files together so it is clear how things work together
- Create a top-level `Makefile` or Rmarkdown file that documents the computational study in executable form.

**Directory**
- Keep a README in each folder, describing the purpose of the directory and its contents.
- Maintain a formal metadata descriptor at the root of the package that describes all the important input and output data files.

