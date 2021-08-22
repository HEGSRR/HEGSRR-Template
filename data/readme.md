# Data

Store all of your research data in subdirectories here. It is recommended that raw data not be altered once downloaded or collected. Maintaining a separate raw data file facilitates reproducibility be preserving a common point of analytical origin. It is similarly recommended that whenever possible data processing, transformation, or manipulation be completed with code as this practice facilitates re-analysis and reduces opportunities of confusion.

Complete the [data_metadata.csv](data_metadata.csv) file indexing each **raw** and **derived** data file, including the fields:

- `file_path`: the path from data folder, e.g., `raw\private\`
- `file_name`: the file name
- `format`: the file format, e.g., shapefile, geopackage, CSV, geotiff
- `sources`: sources may be the original data provider for raw data, or the raw files from which data was derived for derived data.
- `metadata`: list of metadata files for this data source, stored in the `data\metadata` folder. These may include `XML` files, data dictionaries, licenses or attributions, user guides, etc.
- `status`: which may be `included` for data included in the repository, `acquire` for data that must be downloaded, accessed, or created seperately, or `derive` for data that must be derived by procedures and/or code.
- `date_saved`: date when the file was last saved

Researchers are **strongly encouraged** to include additional metadata in the `metadata` folder.
Further information about the procedures used to create data with 'status = derive' should be maintained in the [procedure_metadata.csv](../procedure/procedure_metadata.csv).

Ideally, metadata should be documented to FGDC or ISO standards and saved in `xml`, `json`, or `yaml` format. Some tools for reading and writing metadata include:

- GeoNetwork: https://geonetwork-opensource.org/
- USGS Metadata Wizard 2.0: https://www.usgs.gov/software/metadata-wizard-20
- MDEditor: https://www.mdeditor.org/
- R geometa: https://cran.r-project.org/web/packages/geometa
- Python pygeometa: https://pypi.org/project/pygeometa/
