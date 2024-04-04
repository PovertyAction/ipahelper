*! version 4.1.0 02apr2024
*! Innovations for Poverty Action
* ipacelltext: Add text string to excel cell

program define ipacelltext
	
	syntax using/, sheet(string) row(integer) col(integer) text(string) 
	
	qui {
		
		* parse into mata command
		mata: celltext("`using'", "`sheet'", `row', `col', "`text'")
		
	}
	
end

mata: 
mata clear

void celltext (string scalar file, string scalar sheet, real scalar row, real scalar col, string scalar text)
{
	class xl scalar b
	b = xl()
	b.load_book(file)
	b.set_sheet(sheet)
	b.set_mode("open")
	
	b.put_string(row, col, text)
	
	b.close_book()
}

end