*! version 1.0.0 02apr2024
*! Innovations for Poverty Action
* ipacolformat: Set column format

program define ipacolformat
	
	syntax using/, sheet(string) vars(varlist) format(string)

	qui {
		
		* convert varlist into vector 
		loc i 1
		foreach var of varlist `vars' {
			
			if `i' == 1 loc row_vec = char(34) + "`var'" + char(34)
			else		loc row_vec = `"`row_vec'"' + "," + char(34) + "`var'" + char(34)
			loc ++i	

		}
	
		* parse into mata command
		mata: colformat("`using'", "`sheet'", (`row_vec'), "`format'")
		
	}
	
end

mata: 
mata clear

void colformat(string scalar file, string scalar sheet, string vector vars, string scalar format) 
{
	
	real scalar i
	class xl scalar b
	real scalar endrow, index 
	b = xl()
	b.load_book(file)
	b.set_sheet(sheet)
	b.set_mode("open")
	
	endrow = st_nobs() + 1
	for (i=1; i<=cols(vars); i++) {
		b.set_number_format((2, endrow), st_varindex(vars[i]), format)		
	} 
	b.close_book()
	
}

end