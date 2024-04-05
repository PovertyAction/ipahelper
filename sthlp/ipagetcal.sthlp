{smcl}
{* *! version 4.0.0 Innovations for Poverty Action 11May2022}{...}

{cmd:ipagetcal} - Create a calendar dataset

{title:Syntax}

{pmore}
{cmd:ipagetcal} {help varname}
{cmd:,} {opt clear}

{title:Description} 

{pstd}
{cmd:ipagetcal} generates a calendar dataset based on the range of dates found in {cmd:varname}. The produced dataset encompasses several variables: {cmd:index}, which enumerates the observations; {cmd:varname}, listing each date; and {cmd:week}, {cmd:month}, {cmd:year}, indicating the respective week, month, and year for every date. The sequence of dates runs continuously from the earliest to the latest date present in {cmd:varname}. This command requires {cmd:varname} to be in one of the recognized date/datetime formats (%td, %tc, or %tC).

{hline}

{title:Examples} 

{synoptline}
  {text:Example 1: Generating a Calendar Dataset}
	{phang}{com}   . use "https://raw.githubusercontent.com/PovertyAction/high-frequency-checks/master/data/household_survey.dta", clear{p_end}
	{phang}{com}   . ipagetcal submissiondate, clear{p_end}
{synoptline}

{title:Stored results}

{p 6} {cmd:ipagetcal} stores the following in r():{p_end}

{synoptset 25 tabbed}{...}
{syntab:{opt Scalars}}
{synopt:{cmd: r(N_days)}} - The total number of days spanning from the first to the last date in {cmd:varname}{p_end}
{p2colreset}{...}

{text}
{title:Author}

{pstd}Ishmail Azindoo Baako, GRDS, Innovations for Poverty Action{p_end}

{title:Also see}

Related Help Files: {help ipahelper}, {help ipacheck}, {help date functions:[D] datetime functions}, {help format}, {help date}, {help clock}
