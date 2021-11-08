*importing data from SPSS*
import spss using "S:\URBN\mydept\Public\Projects\2021\2021_Charlotte Is Creative\2021-Charlotte_is_Creative\Data\Working\Charlotte Is Creative_WORKING_10.15.21.sav" 
*sorting and dropping observations that answerd no*
sort Q1
drop in 876
*sorting and dropping observations that answerd no/did not answer*
sort Q2
drop in 761/875
*sorting and dropping zip codes that are not in NC or SC *
sort Q47
drop in 166/169
drop in 650/755
*dropping data with invalid zip code*
drop in 639