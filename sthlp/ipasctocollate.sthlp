{smcl}
{* *! version 1.0.0 Innovations for Poverty Action 05Apr2024}{...}
{cmd:ipasctocollate} - Collates and exports a dataset of SurveyCTO-generated text audit or comment files.

{title:Syntax}

{pmore}
{cmd:ipasctocollate} {help varname:mediavar}
{help if:[if]} {help in:[in]}
{cmd:comments|textaudit}
{cmd:,}
{opt folder("folder path")} 
{opt save("filename")}
[{it:{help ipasctocollate##options:options}}]

{marker options}
{synoptset 28 tabbed}{...}
{synopthdr}
{synoptline}
{synopt:* {opt folder("folder path")}} - Folder containing comments/text audit files{p_end}
{synopt:* {opt save("filename")}} - Name to save the .dta file as{p_end}
{synopt:  {opt replace}} - Overwrite existing dataset{p_end}
{synoptline}
{p2colreset}{...}

{phang}* Options {opt folder()} and {opt save()} are required.

{title:Description} 

{pstd}
{cmd:ipasctocollate} imports, appends and exports a single .dta dataset for SurveyCTO-generated text audit or comments files. This data is prepared for analysis with the {helpb ipachecktextaudit} and {helpb ipacheckcomments} commands respectively. It requires the presence of a "mediavar" variable in the data in memory, which contains strings matching the names of files to import from {cmd:folder()}. If the dataset specified in {cmd:save()} already exists, {cmd:ipasctocollate} will skip files already present in this dataset and will import and append only new files detected, significantly reducing the time required for importation.

{title:Options}

{dlgtab:Main}

{phang}
{cmd:folder("folder path")} - Specifies the folder containing the text audit and comments files. {cmd:ipasctocollate} will check for files in {cmd:folder()} using the values specified as {cmd:mediavar}. A message will be displayed if some files are not found in {cmd:folder()}.

{phang}
{cmd:save("filename")} - Specifies the .dta file to save after collating and appending the text audit or comments files.

{dlgtab:Specifications} 

{phang}
{cmd:replace} - Allows {cmd:ipasctocollate} to overwrite an existing dataset.

{hline}

{title:Examples} 

{synoptline}
  {text:Setup}
	{phang}{com}   . use "https://raw.githubusercontent.com/PovertyAction/high-frequency-checks/master/data/household_survey.dta", clear{p_end}
	{phang}{com}   . unzipfile "https://raw.githubusercontent.com/PovertyAction/high-frequency-checks/master/data/media.zip", replace{p_end}

  {text:Collate field comments}
	{phang}{com}   . ipasctocollate comments field_comments, folder("./media") save("comments_data.dta") replace{p_end}

  {text:Collate text audit comments}
	{phang}{com}   . ipasctocollate textaudit text_audit, folder("./media") save("textaudit_data.dta") replace{p_end}
{synoptline}

{title:Stored results}

{p 6} {cmd:ipasctocollate} stores the following in r():{p_end}

{synoptset 25 tabbed}{...}
{syntab:{opt Scalars}}
{synopt:{cmd: r(N_total)}} - Number of text audit or field comment files expected{p_end}
{synopt:{cmd: r(N_imported)}} - Number of files found and imported{p_end}
{synopt:{cmd: r(N_miss)}} - Number of files not found{p_end}
{p2colreset}{...}

{title:Author}

{pstd}Ishmail Azindoo Baako, Innovations for Poverty Action{p_end}

{pstd}For questions or suggestions, please submit a
{browse "https://github.com/PovertyAction/ipahelper/issues":GitHub issue} or email researchsupport@poverty-action.org{p_end}

{title:Also see}

Related Help Files: {help ipahelper:ipahelper}, {help ipacheck:ipacheck}, {help ipacheckcomments:ipacheckcomments}, {help ipatextaudit:ipatextaudit} 