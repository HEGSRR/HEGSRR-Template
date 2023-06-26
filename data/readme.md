# Data

Store all of your research data in subdirectories here.

Complete the [data_metadata.csv](data_metadata.csv) file indexing each data file, including the fields:

- `path`: the path to the data folder, likely one of: `raw\private`, `raw\public`, `derived\private` or `derived\public`
- `name`: the file name, including extension
- `metadata`: list of metadata files for this data source, stored in the `data\metadata` folder. These may include ISO-191** or FGDC standard `XML` files, data dictionaries, licenses or attributions, user guides, webpage printouts, etc.
- `description`: *very* brief description of the dataset. If the data is **simulated**,  **randomized**, or represents only a limited **sample** of the full research dataset, you should note those limitations here.
