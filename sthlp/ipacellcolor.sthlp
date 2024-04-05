{smcl}
{* *! version 1.0.0 Innovations for Poverty Action 05apr2024}{...}

{cmd:ipacellcolor} - Apply a solid background color to Excel cells

{title:Syntax}

{pmore}
{cmd:ipacellcolor}
{cmd:using} 
{help filename}
[{cmd:,}
{it:{help ipacellcolor##options:options}}]

{marker options}
{synoptset 50 tabbed}{...}
{synopthdr}
{synoptline}
{synopt:* sheet(sheetname)} - Specify the sheet name{p_end}
{synopt:* rows({help numlist:numlist})} - Rows to format{p_end}
{synopt:* var({help varname:varname})} - Variable name{p_end}
{synopt:* color({help mf_xl##syn_format_colors:color})} - Background color{p_end}
{synoptline}
{p2colreset}{...}

{phang}* Options {opt sheetname()}, {opt rows()}, {opt var()} and {opt color()} are required.

{title:Description} 

{pstd}
{cmd:ipacellcolor} applies a solid background color to specific Excel cells within the rows defined by rows() and for the column corresponding to the specified variable in the dataset in memory. This command enhances the visual appeal of Excel outputs derived from Stata datasets by adding color-coded data representation. Note that {cmd:ipacellcolor} adjusts for the header row in the Excel file automatically; for instance, specifying rows(1, 3) will format the rows immediately following the header in the exported file, effectively targeting the second and fourth rows in the Excel sheet.

{title:Options}

{phang}
{cmd:sheet(sheetname)} - Targets the sheet to be formatted within the Excel file.

{phang}
{cmd:rows(numlist)} - Identifies the rows to color. This parameter accepts a {help numlist:numlist}, allowing for specific row selections.

{phang}
{cmd:var(varname)} - Determines the column by specifying a variable name from the dataset.

{phang}
{cmd:color("color")} - Defines the background color using the format specified in {help mf_xl##syn_format_colors:color}.

{hline}

{title:Examples} 

{synoptline}
  {text:Example 1: Coloring the First Row of the 'price' Column}
	{phang}{com}   . sysuse auto, clear{p_end}
	{phang}{com}   . export excel using "auto.xlsx", sheet("auto") replace first(var){p_end}
	{phang}{com}   . ipacellcolor using "auto.xlsx", sheet("auto") rows(1) var(price) color("red"){p_end}
{synoptline}

  {text:Example 2: Coloring the First 5 Rows of the 'price' Column}
	{phang}{com}   . sysuse auto, clear{p_end}
	{phang}{com}   . export excel using "auto.xlsx", sheet("auto") replace first(var){p_end}
	{phang}{com}   . ipacellcolor using "auto.xlsx", sheet("auto") rows(1/5) var(price) color("green"){p_end}
{synoptline}
	
{text}
{title:Author}

{pstd}Ishmail Azindoo Baako, GRDS, Innovations for Poverty Action{p_end}

{title:Also see}

Related Help Files: {help putexcel:[RPT] putexcel}, {help mf_xl:[M-5] xl()}