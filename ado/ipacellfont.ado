*! version 4.1.0 02apr2024
*! Innovations for Poverty Action
* ipacellfont: Set fontname and size for cell

program define ipacellfont
	
	syntax using/, sheet(string) rows(numlist) cols(numlist) fontname(string) fontsize(integer)

	qui {
		
		* expand numlist into a row and col vector
		numlist "`rows'"
		loc rows = subinstr("`r(numlist)'", " ", ",", .)
		
		numlist "`cols'"
		loc cols = subinstr("`r(numlist)'", " ", ",", .)
		
		* parse into mata command
		mata: cellfont("`using'", "`sheet'", (`rows'), (`cols'), "`fontname'", `fontsize')
		
	}
	
end

mata: 
mata clear

void cellfont(string scalar file, string scalar sheet, real vector rows, real vector cols, string scalar fontname, real scalar size)
{
	real scalar i
	class xl scalar b
	b = xl()
	b.load_book(file)
	b.set_sheet(sheet)
	b.set_mode("open")
	
	b.set_font(rows, cols, fontname, size)
	
	b.close_book()
}

end