{smcl}
{* *! version 4.1.0 Innovations for Poverty Action 03Apr2024}{...}

{cmd:iparowformat} - Format the first or last row in an Excel sheet as a header or total row

{title:Syntax}

{pmore}
{cmd:iparowformat}
{cmd:using} 
{help filename}
[{cmd:,}
{it:{help iparowformat##options:options}}]

{marker options}
{synoptset 50 tabbed}{...}
{synopthdr}
{synoptline}
{synopt:sheet(sheetname)} - Specify the Excel sheet name{p_end}
{synopt:type(header|total)} - Choose to set as header or total row{p_end}
{synoptline}
{p2colreset}{...}

{title:Description} 

{pstd}
{cmd:iparowformat} customizes the first row of the specified Excel sheet as a header or the last row as a total row, depending on the selected type. For headers, this command boldens and italicizes the text, and adds a medium bottom border across the row from the first to the last column that corresponds to the dataset in memory's variable count. For totals, it applies the same text formatting, sets the numeric format to "number_sep", and adds a medium border across the row. This adjustment is based on the dataset in memory's observation count, ensuring the last row reflects the total count. This command is ideal for enhancing the readability and presentation of Excel outputs derived from Stata datasets.

{title:Options}

{phang}
{cmd:sheet(sheetname)} - Identifies the Excel sheet to be formatted.

{phang}
{cmd:type(header|total)} - Determines whether the formatting is applied to the header or total row.

{hline}

{title:Examples} 

{synoptline}
  {text:Example 1: Formatting the Header Row}
	{phang}{com}   . sysuse auto, clear{p_end}
	{phang}{com}   . export excel using "auto.xlsx", sheet("auto") replace first(var){p_end}
	{phang}{com}   . iparowformat using "auto.xlsx", sheet("auto") type(header){p_end}

  {text:Example 2: Formatting the Total Row}
	{phang}{com}   . sysuse auto, clear{p_end}
	{phang}{com}   . export excel using "auto.xlsx", sheet("auto") replace first(var){p_end}
	{phang}{com}   . iparowformat using "auto.xlsx", sheet("auto") type(total){p_end}
{synoptline}
	
{text}
{title:Author}

{pstd}Ishmail Azindoo Baako, GRDS, Innovations for Poverty Action{p_end}

{title:Also see}

Related Help Files: {help putexcel:[RPT] putexcel}, {help mf_xl:[M-5] xl()}
