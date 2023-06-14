# Data

Store all of your research data in subdirectories here. It is recommended that raw data not be altered once downloaded or collected. Maintaining a separate raw data file facilitates reproducibility be preserving a common point of analytical origin. It is similarly recommended that whenever possible data processing, transformation, or manipulation be completed with code as this practice facilitates re-analysis and reduces opportunities of confusion.

Complete the [data_metadata.csv](data_metadata.csv) file indexing each **raw** and **derived** data file, including the fields:

- `path`: the path to the data folder, likely one of: `raw\private`, `raw\public`, `derived\private` or `derived\public`
- `name`: the file name, including extension
- `metadata`: list of metadata files for this data source, stored in the `data\metadata` folder. These may include ISO-191** or FGDC standard `XML` files, data dictionaries, licenses or attributions, user guides, webpage printouts, etc.
- `included`: which may be `yes` for data included in the repository or `no` for data that must be separately acquired, created, or derived.
- `description`: *very* brief description of the dataset.

Researchers are **strongly encouraged** to include additional metadata in the `metadata` folder.
Further information about the procedures used to create data with 'status = derive' should be maintained in the [procedure_metadata.csv](../procedure/procedure_metadata.csv).

Ideally, metadata should be documented to FGDC or ISO standards and saved in `xml`, `json`, or `yaml` format. Some tools for reading and writing metadata include:

- USGS Metadata Wizard 2.0: https://www.usgs.gov/software/metadata-wizard-20
- MDEditor: https://www.mdeditor.org/
- GeoNetwork: https://geonetwork-opensource.org/
- R geometa: https://cran.r-project.org/web/packages/geometa
- Python pygeometa: https://pypi.org/project/pygeometa/
