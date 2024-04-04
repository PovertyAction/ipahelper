*! version 4.1.0 04apr2024
*! Innovations for Poverty Action
* ipahelper: IPA Ancilliary Stata Programs

program helper, rclass
	
	version 17
	
	#d;
	syntax 	name(name=subcmd id="sub command"), 
			[BRanch(name)]
			;
	#d cr

	qui {
		if !inlist("`subcmd'", "version", "update") {
			disp as err "illegal ipahelper sub command. Sub commands are:"
			noi di as txt 	"{cmd:ipahelper update}"
			noi di as txt 	"{cmd:ipahelper version}"
			ex 198
		}
		
		loc url 	= "https://raw.githubusercontent.com/PovertyAction/ipahelper"

		ipahelper_`subcmd', branch(`branch') url(`url')
		
	}
end

program define ipahelper_update
	
	syntax, [branch(name)] url(string)
	
	qui {
		loc branch 	= cond("`branch'" ~= "", "`branch'", "master")
		noi net install ipahelper, replace from("`url'/`branch'")
	}
	
end

program define ipahelper_version
	
	qui {
		
		#d;
		local 	programs          
				ipahelper
				ipacellcolor
				ipacellfont
				ipacelltext
				ipacolformat
				ipacolwidth
				iparowformat
				iparowline
			;
		#d cr

		cap frames drop frm_verdate
		frames create frm_verdate str32 (program version date)

		foreach prg in `programs' {
			cap which `prg'
			if !_rc {
				mata: get_version("`c(sysdir_plus)'i/`prg'.ado")
				di regexm("`verdate'", "[1-4]\.[0-9]+\.[0-9]+")
				loc vers_num 	= regexs(0)
				di regexm("`verdate'", "[0-9]+[a-zA-Z]+[0-9]+")
				loc vers_date 	= regexs(0)

				frames post frm_verdate ("`prg'") ("`vers_num'") ("`vers_date'")
			}
		}

		frames frm_verdate {
			compress
			sort program
			noi list, noobs h sep(0)
		}
	}
	
end

mata: 
void get_version(string scalar program) {
	real scalar fh
	
    fh = fopen(program, "r")
    line = fget(fh)
    st_local("verdate", line) 
    fclose(fh)
}
end


