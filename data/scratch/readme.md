Store scratch data in this folder for intermediary steps of processing.

This folder is ignored by Git versioning with the exception of this `readme.md` file by the following lines in `.gitignore`

```gitignore
# Ignore contents of scratch folder, with the exception of its readme file
scratch/**
!scratch/readme.md
```