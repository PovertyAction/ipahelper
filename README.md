# IPAHELPER 1

## Overview
ipahelper is a Stata package of programs that are use in other IPA packages. Although, these programs can be used for other purposes, they are made to simplify Stata development processes form IPA developers. ipahelper is required to run other ipa packages such as ipacheck or ipaclean.
 
### programs

- `ipasctocollate` - collate and export a dataset from SurveyCTO generated text audit or comments files.
- `ipalabels` - remove labels or values from variables.
- `ipagettd` - convert datetime variables to date.
- `ipagetcal` - create a date calendar dataset.
- `ipaanycount` - create a variable that returns the number of variables in varlist for which values are equal to any specified integer/string value. 
- `iparowline` - add a lower boder line to a row in an excel file.
- `ipacellcolor` - add a background color to a cell in an excel file.
- `ipacolwidth` - adjust column widths in excel file using length of values in current dataset.
- `ipacolformat` - apply number format to a column in an excel file.
- `ipacellfont` - set font size and type for a range of cells in an excel file.
- `iparowformat` - set the first row in an excel file as a header row.

## Installation

```Stata
* ipahelper may be installed directly from GitHub
net install ipahelper, all replace from("https://raw.githubusercontent.com/PovertyAction/ipahelper/main")

* To update ipahelper
ipahelper update

* to verify you have the latest versions of the commands
ipahelper version
```

If you encounter a clear bug, please file a minimal reproducible example on [github](https://github.com/PovertyAction/ipahelper/issues). For questions and other discussion, please email us at [researchsupport@poverty-action.org](mailto:researchsupport@poverty-action.org).

## Current Author(s)
 - Ishmail Azindoo Baako
