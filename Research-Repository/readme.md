I’ve been thinking about the idea of establishing GitHub templates for reproducible research and reproductions and the problem of proprietary or confidential data. I think we just need to have a more regimented structure of folders for project data and a .gitignore file for the repository that excludes sensitive data folders from version control, and therefore from syncing. I don’t think I’ve seen this in any of the templates out there yet. Projects should be set up with a script that populates the data in a sensitive data folder using an API with a firewall or something similar, sot that researchers with access can get the original data. 

Yeah, so a structure like this:


/data/original/private

/data/original/public

/data/preprocessed

Where we could provide preprocessed/deidentified data in the data/preprocessed folder, but also scripts for pulling it, populating original/private, and going through the deidentification steps to recalculate the contents of data/preprocessed . However authors want to make their private data available, they just need to include a script for downloading it and prompting for a password or key. 

With the .gitignore file, /data/original/private can be excluded from all version control and pushes to github!

This isn’t all that novel, I realize: just the client-side version control for research with sensitive data, to which you could connect to PUMS, DHS Surveys, or any repository with a limited access.  

This framework also takes care of the struggles with cumbersome datasets like the Illinois graph. A preprocessed graph can be saved and provided with the notebook, leaving the /data/original/public folder empty, but with a script to populate it. The code just needs to be robust enough to ask if the user wants to overwrite an existing file, or to overwrite by default.
