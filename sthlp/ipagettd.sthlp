{smcl}
{* *! version 1.0.0 Innovations for Poverty Action 11May2022}{...}

{cmd:ipagettd} - Convert datetime variables to %td format date variables

{title:Syntax}

{pmore}
{cmd:ipagettd} {help varlist}

{title:Description} 

{pstd}
{cmd:ipagettd} converts numeric datetime variables into numeric date variables in %td {help datetime_display_formats:date} format. This process simplifies the handling and analysis of dates by converting them from potentially complex datetime formats (which include both date and time information) to a simpler date-only format, which is often more useful for data analysis and reporting purposes.

{hline}

{title:Examples} 

{synoptline}
  {text:Example 1: Converting datetime to date}
	{phang}{com}   . use "https://raw.githubusercontent.com/PovertyAction/high-frequency-checks/master/data/household_survey.dta", clear{p_end}
	{phang}{com}   . ipagettd submissiondate starttime endtime{p_end}
{synoptline}

{text}
{title:Author}

{pstd}Ishmail Azindoo Baako, GRDS, Innovations for Poverty Action{p_end}

{title:Also see}

Help: {help ipahelper}, {help ipacheck}, {help datetime:datetime formats}, {help date}, {help clock}
