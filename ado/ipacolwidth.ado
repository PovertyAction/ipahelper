*! version 1.0.0 02apr2024
*! Innovations for Poverty Action
* ipacolwidth: Adjust column widths

program define ipacolwidth
	
	syntax using/, sheet(string)
	
	qui {
		
		* preserve original data
		preserve
		
		* import output sheet
		import excel using "`using'", sheet("`sheet'") allstr clear
		
		* parse into mata command
		mata: colwidth("`using'", "`sheet'")
		
	}
	
end

mata: 
mata clear

void colwidth(string scalar file, string scalar sheet) 
{
	real scalar i
	class xl scalar b
	real rowvector datawidths
	b = xl()
	b.load_book(file)
	b.set_sheet(sheet)
	b.set_mode("open")
	
	datawidths = colmax(strlen(st_sdata(. , .)))

	for (i=1; i<=cols(datawidths); i++) {
		if (datawidths[i] > 81) {
			datawidths[i] = 81
		}
		b.set_column_width(i, i, datawidths[i] + 2)
	}
	b.close_book()
}

end