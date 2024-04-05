*! version 1.0.0 02apr2024
*! Innovations for Poverty Action
* ipacolorcell: Add color formatting to cells

program define ipacellcolor
	
	syntax using/, sheet(string) rows(numlist) var(varname) color(string) 
	
	qui {
		
		* expand numlist into a row vector
		numlist "`rows'"
		loc rows = subinstr("`r(numlist)'", " ", ",", .)
		
		* parse into mata command
		mata: cellcolor("`using'", "`sheet'", (`rows'), "`var'", "`color'")
		
	}
	
end

mata: 
mata clear

void cellcolor (string scalar file, string scalar sheet, real vector rows, string scalar var, string scalar color)
{
	real scalar i
	class xl scalar b
	b = xl()
	b.load_book(file)
	b.set_sheet(sheet)
	b.set_mode("open")
	
	for (i = 1;i <= length(rows); i++) {
		b.set_fill_pattern(rows[i] + 1, st_varindex(var), "solid", color)
	}
	
	b.close_book()
}

end