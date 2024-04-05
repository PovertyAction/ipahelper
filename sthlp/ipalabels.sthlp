{smcl}
{* *! version 1.0.0 Innovations for Poverty Action 05Apr2024}{...}

{cmd:ipalabels} - Convert numeric variables with labels to strings or remove their labels

{title:Syntax}

{pmore}
{cmd:ipalabels} {help varlist}
[{cmd:,} {it:{help ipalabels##options:options}}]

{marker options}
{synoptset 23 tabbed}{...}
{synopthdr}
{synoptline}
{synopt:{opt nolabel}} - Remove value labels from variables{p_end}
{synoptline}
{p2colreset}{...}

{title:Description} 

{pstd}
{cmd:ipalabels} is designed for two primary functions: converting numeric variables with value labels into string variables to preserve the label text, or removing the value labels while keeping the variables numeric. By default, without specifying options, {cmd:ipalabels} will convert numeric labeled variables into strings, utilizing the label texts as string values. When used with the {cmd:nolabel} option, it removes the value labels but retains the numeric nature of the variables. This command ignores string variables provided in {cmd:varlist}.

{title:Options}

{phang}
{cmd:nolabel} - Removes the value labels from the specified numeric variables, leaving the numeric values intact.

{hline}

{title:Examples} 

{synoptline}
  {text:Example 1: Convert labeled numeric variables to strings}
	{phang}{com}   . sysuse auto, clear{p_end}
	{phang}{com}   . ipalabels foreign{p_end}

  {text:Example 2: Remove value labels from numeric variables}
	{phang}{com}   . sysuse auto, clear{p_end}
	{phang}{com}   . ipalabels foreign, nolabel{p_end}
{synoptline}

{text}
{title:Author}

{pstd}Ishmail Azindoo Baako, GRDS, Innovations for Poverty Action{p_end}

{title:Also see}

Help: {help ipahelper}, {help ipacheck}, {help decode:[D] decode}, {help label drop:[D] label drop}
