{smcl}
{* *! version 1.0.0 Innovations for Poverty Action 02Apr2024}{...}

{cmd:ipacellfont} - Set the font and font size for specified Excel cell ranges

{title:Syntax}

{pmore}
{cmd:ipacellfont}
{cmd:using} 
{help filename}
[{cmd:,}
{it:{help ipacellfont##options:options}}]

{marker options}
{synoptset 50 tabbed}{...}
{synopthdr}
{synoptline}
{synopt:sheet(sheetname)} - Specify the sheet name{p_end}
{synopt:rows({help numlist:numlist})} - Rows to format{p_end}
{synopt:cols({help numlist:numlist})} - Columns to format{p_end}
{synopt:fontname("fontname")} - Excel font name{p_end}
{synopt:fontsize({help integer:integer})} - Font size{p_end}
{synoptline}
{p2colreset}{...}

{title:Description} 

{pstd}
{cmd:ipacellfont} customizes the font type and size for each Excel cell within the specified row and column ranges. It's designed to enhance the readability and aesthetic of Excel outputs generated from Stata datasets, allowing users to apply consistent formatting across data tables.

{title:Options}

{phang}
{cmd:sheet(sheetname)} - Determines the sheet to be formatted within the Excel file.

{phang}
{cmd:rows(numlist)} - Identifies which rows are to be formatted. For example, to format the first row, use rows(1).

{phang}
{cmd:cols(numlist)} - Specifies the columns to format. For example, to format the first column, use cols(1).

{phang}
{cmd:fontname("fontname")} - Sets the font by name, allowing for a tailored appearance.

{phang}
{cmd:fontsize(integer)} - Defines the font size, enhancing visibility or conserving space as needed.

{hline}

{title:Examples} 

{synoptline}
  {text:Example 1: Formatting the header row}
	{phang}{com}   . sysuse auto, clear{p_end}
	{phang}{com}   . export excel using "auto.xlsx", sheet("auto") replace first(var){p_end}
	{phang}{com}   . ipacellfont using "auto.xlsx", sheet("auto") rows(1) cols(1 `=c(k)+1') fontname("Roboto") fontsize(12){p_end}
{synoptline}

  {text:Example 2: Applying Calibri font size 10 to all cells}
	{phang}{com}   . sysuse auto, clear{p_end}
	{phang}{com}   . export excel using "auto.xlsx", sheet("auto") replace first(var){p_end}
	{phang}{com}   . ipacellfont using "auto.xlsx", sheet("auto") rows(1 `=c(N)+1') cols(1 `=c(k)+1') fontname("Calibri") fontsize(10){p_end}
{synoptline}
	
{text}
{title:Author}

{pstd}Ishmail Azindoo Baako, GRDS, Innovations for Poverty Action{p_end}

{title:Also see}

Related Help Files: {help putexcel:[RPT] putexcel}, {help mf_xl:[M-5] xl()}