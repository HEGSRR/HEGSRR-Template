# Derived Private Data

Store preprocessed data here, if the data is required for analysis but is in a condition that cannot be publicly redistributed. For example, data versioning and sharing my be restricted because of large file sizes, licensing, ethics, privacy, or confidentiality.

If data for analysis must be guarded in this way, **the authors are encouraged to provide a sample deidentified dataset** in the `data/derived/sample` directory.

*This folder is ignored by Git versioning* with the exception of this `readme.md` file by the following lines in `.gitignore`

```gitignore
# Ignore contents of private folder, with the exception of its readme file
private/**
!private/readme.md
```
