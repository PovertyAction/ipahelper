*! version 4.1.0 02apr2024
*! Innovations for Poverty Action
* iparowformat: Format Row as header or total

program define iparowformat
	
	syntax using/, sheet(string) type(string)

	qui {
		
		* check syntax
		if !inlist("`type'", "header", "total") {
			disp as error "Invalid type() option. Expecting header or footer"
			ex 198
		}
		
		* parse into mata command
		mata: set`type'("`using'", "`sheet'")
		
	}
	
end

mata: 
mata clear

void setheader(string scalar file, string scalar sheet)
{
	real scalar i
	class xl scalar b
	b = xl()
	b.load_book(file)
	b.set_sheet(sheet)
	b.set_mode("open")
	
	b.set_font_bold((1, 1), (1, st_nvar()), "on")
	b.set_font_italic((1, 1), (1, st_nvar()), "on")
	b.set_bottom_border((1, 1), (1, st_nvar()), "medium")	
	b.close_book()
}

void settotal(string scalar file, string scalar sheet)
{
	class xl scalar b
	b = xl()
	b.load_book(file)
	b.set_sheet(sheet)
	b.set_mode("open")
	
	b.set_font_bold((st_nobs() + 1, st_nobs() + 1), (1, st_nvar()), "on")
	b.set_font_italic((st_nobs() + 1, st_nobs() + 1), (1, st_nvar()), "on")
	b.set_top_border((st_nobs() + 1, st_nobs() + 1), (1, st_nvar()), "medium")
	b.set_number_format((st_nobs() + 1, st_nobs() + 1), (2, st_nvar()), "number_sep")
	
	b.close_book()
}

end