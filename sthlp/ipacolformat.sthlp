{smcl}
{* *! version 1.0.0 Innovations for Poverty Action 02Apr2024}{...}

{cmd:ipacolformat} - Set numeric formats for Excel cells based on Stata variables

{title:Syntax}

{pmore}
{cmd:ipacolformat}
{cmd:using} 
{help filename}
[{cmd:,}
{it:{help ipacolformat##options:options}}]

{marker options}
{synoptset 50 tabbed}{...}
{synopthdr}
{synoptline}
{synopt:sheet(sheetname)} - Specify the Excel sheet name{p_end}
{synopt:vars({help varlist:varlist})} - Variables to format{p_end}
{synopt:format({help mf_xl##nformat:format})} - Numeric format code{p_end}
{synoptline}
{p2colreset}{...}

{title:Description} 

{pstd}
{cmd:ipacolformat} applies a specified numeric format to Excel cells corresponding to selected Stata variables. This functionality is particularly useful for tailoring the appearance of numeric data in Excel outputs generated from Stata datasets, ensuring data is presented in a clear, consistent and contextually appropriate manner.{p_end}

{title:Options}

{phang}
{cmd:sheet(sheetname)} - Identifies the Excel sheet to be formatted.

{phang}
{cmd:vars(varlist)} - Selects the Stata variables whose corresponding Excel columns will be formatted.

{phang}
{cmd:format("format")} - Defines the numeric format to apply, using Excel's numeric {help mf_xl##nformat:format} codes.

{hline}

{title:Examples} 

{synoptline}
  {text:Example 1: Formatting the 'price' Column}
	{phang}{com}   . sysuse auto, clear{p_end}
	{phang}{com}   . export excel using "auto.xlsx", sheet("auto") replace first(var){p_end}
	{phang}{com}   . ipacolformat using "auto.xlsx", sheet("auto") vars(price) format("number_d2"){p_end}
{synoptline}

  {text:Example 2: Formatting All Numeric Columns}
	{phang}{com}   . sysuse auto, clear{p_end}
	{phang}{com}   . export excel using "auto.xlsx", sheet("auto") replace first(var){p_end}
    {phang}{com}   . ds, has(type numeric){p_end}
	{phang}{com}   . ipacolformat using "auto.xlsx", sheet("auto") vars(`r(varlist)') format("number_sep_d2"){p_end}
{synoptline}
	
{text}
{title:Author}

{pstd}Ishmail Azindoo Baako, GRDS, Innovations for Poverty Action{p_end}

{title:Also see}

Related Help Files: {help putexcel:[RPT] putexcel}, {help mf_xl:[M-5] xl()}