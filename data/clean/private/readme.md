Store cleaned and preprocessed data here if the data is required for analysis in a condition in which it still cannot be publicly distributed because of barriers of liscensing, ethics, privacy, or confidentiality.

If data for analysis must be guarded in this way, the authors are encouraged to provide a sample deidentified dataset in the `data/clean/sample` directory.

This folder is ignored by Git versioning with the exception of this `readme.md` file by the following lines in `.gitignore`

```gitignore
# Ignore contents of private folder, with the exception of its readme file
private/**
!private/readme.md
```