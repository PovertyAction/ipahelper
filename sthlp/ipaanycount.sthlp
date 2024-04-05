{smcl}
{* *! version 4.0.0 Innovations for Poverty Action 11May2022}{...}

{cmd:ipaanycount} - Counts variables matching specified numeric and string criteria

{title:Syntax}

{pmore}
{cmd:ipaanycount} {help varlist}
{cmd:,} {opth gen:erate(newvar)}
[{it:{help ipaanycount##options:options}}]

{marker options}
{synoptset 23 tabbed}{...}
{synopthdr}
{synoptline}
{synopt:* {opth gen:erate(newvar)}} - Generate a new variable with the count{p_end}
{synopt:  {opth num:val(numlist)}} - Numeric values to match{p_end}
{synopt:  {opt str:val("string")}} - Space-separated string items to match{p_end}
{synoptline}
{p2colreset}{...}

{title:Description} 

{pstd}
{cmd:ipaanycount} creates a new variable indicating the count of variables within the specified varlist that match any of the criteria provided in {cmd:numval()} and {cmd:strval()}. This function facilitates comprehensive analysis by identifying the prevalence of specified numeric and string values across multiple variables.

{title:Options}

{dlgtab:Main}

{phang}
{cmd:generate(newvar)} - Specifies the name of the new variable to hold the count of matches from the specified criteria in {cmd:numval()} and {cmd:strval()}.

{dlgtab:Specifications}

{phang}
{cmd:numval(numlist)} - Defines integer values for matching. While . (generic numeric missing) is not accepted, extended missing values (.a to .z) are permitted.

{phang}
{cmd:strval("string")} - Determines the string values for matching, expecting a space-separated list (e.g., "-999" or "-888 -999"). It performs a word match, suitable for analyzing select_multiple question types, ensuring precise counts.

{title:Examples} 

{synoptline}
  {text:Example 1: Counting specific responses}
	{phang}{com}   . use "https://raw.githubusercontent.com/PovertyAction/high-frequency-checks/master/data/household_survey.dta", clear{p_end}
	{phang}{com}   . ipaanycount _all, gen(dk_count) strval("-999"){p_end}
{synoptline}

{text}
{title:Author}

{pstd}Ishmail Azindoo Baako, GRDS, Innovations for Poverty Action{p_end}

{title:Also see}

Related Help: {help ipahelper:ipahelper}, {help ipacheck:ipacheck}, {help egen:[D] egen}, {help putexcel:[RPT] putexcel}, {help mf_xl:[M-5] xl()}
