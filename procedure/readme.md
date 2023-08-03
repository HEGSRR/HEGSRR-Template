# Procedure
Catalog all procedures used here in an *ordered* table documenting any code or other research procedure/protocol documents. Provide a brief description of the purpose of each procedure and piece of code.

Catalog the files in [procedure_index.csv](procedure_index.csv)

See the example table below, and modify the table to suit your research design.

- `path`: the path to the file or directory, usually one of `code` for software code and scripts, `environment` for the hardware/software computational environment, or `protocol` for non-code protocols like
- `name`: the file name, including extension
- `purpose`: *very* brief description of the purpose of the file

The *sequence* of procedures to be followed is implied by the *order* in the table and should be explicit in the pre-analysis plan and post-analysis report.

path | name | purpose |
-- | -- | -- |
environment | readme.md | set up computational environment |
code | script1.R | download and preprocess data |
protocol | survey_irb.pdf | Institutional review board protocol for survey sampling and instrument |
protocol | mapworkshop.pdf | participatory mapping workshop protocol |
code | script2.R | run analysis |
code | script3.R | generate visualizations for results |
