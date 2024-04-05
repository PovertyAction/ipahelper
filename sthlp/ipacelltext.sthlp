{smcl}
{* *! version 1.0.0 Innovations for Poverty Action 03Apr2024}{...}

{cmd:ipacelltext} - Set text within specified Excel cells

{title:Syntax}

{pmore}
{cmd:ipacelltext}
{cmd:using} 
{help filename}
[{cmd:,}
{it:{help ipacelltext##options:options}}]

{marker options}
{synoptset 50 tabbed}{...}
{synopthdr}
{synoptline}
{synopt:sheet(sheetname)} - Specify the sheet name{p_end}
{synopt:row({help int:integer})} - Row number{p_end}
{synopt:col({help int:integer})} - Column number{p_end}
{synopt:text("text")} - Text to insert in the cell{p_end}
{synoptline}
{p2colreset}{...}

{title:Description} 

{pstd}
{cmd:ipacelltext} facilitates writing specific text into an Excel cell defined by the row() and col() parameters. This function is particularly useful for adding titles, annotations, or any textual content directly within an Excel sheet exported from Stata.

{title:Options}

{phang}
{cmd:sheet(sheetname)} - Determines the target sheet within the Excel file.

{phang}
{cmd:row(integer)} - Identifies the row number for the text insertion. For example, to insert text into cell B1, specify row(1).

{phang}
{cmd:{ul:col}umn(integer)} - Points out the col number for the text placement. For instance, to insert text into cell B1, use col(2).

{phang}
{cmd:text("string")} - Defines the text content to be written into the designated cell.

{hline}

{title:Examples} 

{synoptline}
  {text:Example 1: Adding a Table Header}
	{phang}{com}   . sysuse auto, clear{p_end}
	{phang}{com}   . export excel using "auto.xlsx", sheet("auto") replace first(var) cell(A2){p_end}
	{phang}{com}   . ipacelltext using "auto.xlsx", sheet("auto") row(1) col(5) text("AUTO DATA"){p_end}
{synoptline}

  {text:Example 2: Writing a Data Source Footnote}
	{phang}{com}   . sysuse auto, clear{p_end}
	{phang}{com}   . export excel using "auto.xlsx", sheet("auto") replace first(var){p_end}
	{phang}{com}   . ipacelltext using "auto.xlsx", sheet("auto") row(`=c(N) + 2') col(1) text("** Source: Stata example dataset"){p_end}
{synoptline}
	
{text}
{title:Author}

{pstd}Ishmail Azindoo Baako, GRDS, Innovations for Poverty Action{p_end}

{title:Also see}

Related Help Files: {help putexcel:[RPT] putexcel}, {help mf_xl:[M-5] xl()}