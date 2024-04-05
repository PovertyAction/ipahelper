{smcl}
{* *! version 1.0.0 Innovations for Poverty Action 02Apr2024}{...}

{cmd:iparowline} - Sets a black bottom border on Excel spreadsheet rows

{title:Syntax}

{pmore}
{cmd:iparowline}
{cmd:using} 
{help filename}
[{cmd:,}
{it:{help iparowline##options:options}}]

{marker options}
{synoptset 50 tabbed}{...}
{synopthdr}
{synoptline}
{synopt:* sheet(sheetname)} - Specify the Excel sheet name{p_end}
{synopt:* rows({help numlist:numlist})} - Rows to apply line to{p_end}
{synopt:* style({help mf_xl##style:style})} - Line style for the border{p_end}
{synoptline}
{p2colreset}{...}

{phang}* Options {opt sheetname()}, {opt rows()} and {opt style()} are required.

{title:Description} 

{pstd}
{cmd:iparowline} applies a bottom border with a specified style to each cell in the chosen rows. It spans from the first to the last variable in the dataset currently in memory. It's designed for formatting Excel files exported from Stata, enhancing the visual distinction of row data.

{title:Options}

{phang}
{cmd:sheet(sheetname)} - Defines which sheet in the Excel file to use. 

{phang}
{cmd:rows(numlist)} - Identifies the rows to be formatted. It expects a {help numlist:numlist}, allowing for specific rows to be targeted.

{phang}
{cmd:style("style")} - Determines the style of the border line, based on {help mf_xl##style:style} options.

{hline}

{title:Examples} 

{synoptline}
  {text:Example 1: Setting a dotted bottom border on the first row}
	{phang}{com}   . sysuse auto, clear{p_end}
	{phang}{com}   . export excel using "auto.xlsx", sheet("auto") replace first(var){p_end}
	{phang}{com}   . iparowline using "auto.xlsx", sheet("auto") rows(1) style("dotted"){p_end}
{synoptline}

  {text:Example 2: Setting a thick bottom border on the first and the last rows}
	{phang}{com}   . sysuse auto, clear{p_end}
	{phang}{com}   . export excel using "auto.xlsx", sheet("auto") replace first(var){p_end}
	{phang}{com}   . iparowline using "auto.xlsx", sheet("auto") rows(1 `=_N+1') style("thick"){p_end}
{synoptline}
	
{text}
{title:Author}

{pstd}Ishmail Azindoo Baako, GRDS, Innovations for Poverty Action{p_end}

{title:Also see}

Related Help Files: {help putexcel:[RPT] putexcel}, {help mf_xl:[M-5] xl()}