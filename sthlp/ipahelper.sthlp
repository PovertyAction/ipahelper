{smcl}
{* *! version 4.1.0 Innovations for Poverty Action 23Nov2022}{...}

{cmd:ipahelper} - Utility program for the ipahelper package

{title:Syntax}

{phang}
Update the ipahelper package

{pmore}
{cmd:ipahelper update}
[{cmd:,} {it:{help ipahelper##options:options}}]

{phang}
Display version information for commands in the ipahelper package

{pmore}
{cmd:ipahelper version}
[{cmd:,} {it:{help ipahelper##options:options}}]

{marker options}
{synoptset 23 tabbed}{...}
{synopthdr:options}
{synoptline}
{synopt:{opt br:anch("branchname")}} - Install programs and files from a specified branch instead of the default master{p_end}
{synoptline}
{p2colreset}{...}

{title:Description} 

{pstd}
{cmd:ipahelper} provides functionalities to update all .ado files or to display the current version of the .ado files within the ipahelper package.

{hline}

{title:Options for {it:ipahelper update}}

{phang}
{cmd:branch("branchname")} - Specifies the GitHub repository branch to connect to for updates. This option is intended for debugging purposes or when specifically requested by the authors. 

{hline}

{pstd}
{cmd:ipahelper version} - Displays version information for all commands included in the ipahelper package.

{hline}

{title:Examples} 

{phang}
{txt}To check the version of all commands:{p_end}

{phang}{com}. ipahelper version

{phang}
{txt}To update all commands within the package:{p_end}

{phang}{com}. ipahelper update

{title:Remarks}

{pstd}Source code and all files for the {cmd:ipahelper} package can be found
{browse "https://github.com/PovertyAction/ipahelper":here} on GitHub. 
The {cmd:ipahelper} package includes the following commands:

{synoptset 30 tabbed}{...}
{synopthdr:Program}
{synoptline}
{synopt:{help iparowline}} - Add a lower border line to rows in an Excel file{p_end}
{synopt:{help ipacellcolor}} - Add a background color to cells in an Excel file{p_end}
{synopt:{help ipacolwidth}} - Adjust column widths in an Excel file based on the length of dataset values{p_end}
{synopt:{help ipacolformat}} - Apply a numeric format to columns in an Excel file{p_end}
{synopt:{help ipacellfont}} - Set the font size and type for a range of cells in an Excel file{p_end}
{synopt:{help iparowformat}} - Format the first or last row in an Excel file as a header or total row{p_end}

{synoptline}
{p2colreset}{...}

{title:Acknowledgements}

{pstd}The {cmd:ipahelper} package and all associated materials are developed by the Global Research & Data Support (GRDS) team at Innovations for Poverty Action.

{title:Author}

{pstd}Ishmail Azindoo Baako, GRDS, Innovations for Poverty Action{p_end}
{pstd}{it:Last updated: 04 Apr 2024 (v4.1.0)}{p_end}