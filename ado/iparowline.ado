*! version 4.1.0 02apr2024
*! Innovations for Poverty Action
* iparowline: Add bottom border to rows

program define iparowline
	
	syntax using/, sheet(string) rows(numlist) style(string)
	
	qui {
		
		* expand numlist into a row vector
		numlist "`rows'"
		loc rows = subinstr("`r(numlist)'", " ", ",", .)
		
		* parse into mata command
		mata: addlines("`using'", "`sheet'", (`rows'), "`style'")
		
	}
	
end

mata: 
mata clear

void rowline(string scalar file, string scalar sheet, real vector rows, string scalar style)
{
	real scalar i
	class xl scalar b
	b = xl()
	b.load_book(file)
	b.set_sheet(sheet)
	b.set_mode("open")

	for (i = 1;i <= length(rows); i++) {
		b.set_bottom_border(rows[i], (1, st_nvar()), style)
	}
	
	b.close_book()
}

end