*Changing the working directory as the same as the GitHub repositiry folder*
cd "S:\URBN\mydept\Public\Projects\2021\2021_Charlotte Is Creative\2021-Charlotte_is_Creative"

*importing data from SPSS*
import spss using "S:\URBN\mydept\Public\Projects\2021\2021_Charlotte Is Creative\2021-Charlotte_is_Creative\Data\Working\Charlotte Is Creative_WORKING_10.15.21.sav" 
*sorting and dropping observations that answerd no: 1. a.Exclude participants who answer "No" to Q1 and/or Q2*
sort Q1
drop in 876
*sorting and dropping observations that answerd no/did not answer*
sort Q2
drop in 761/875


*sorting and dropping zip codes that are not in NC or SC: 1. b. Exclude participants who list zip codes outside of North or South Carolina. If no zip code is listed, participant should be included if they meet other inclusion criteria.  *
sort Q47
drop in 166/169
drop in 651/756
*dropping data with invalid zip code*
drop in 640

*1.b.i.2.	Include only MSA counties*
sort Q47
drop in 166
drop in 219
drop in 637/640

*2.a. a.	Recode dichotomous variables to binary scale: Also, recoding all 'prefer not to respond' as missing*
recode Q19 3=.
recode Q22 3=.
recode Q28_8 1=.
recode Q35_1 6=.
recode Q35_2 6=.
recode Q35_3 6=.
recode Q36_1 6=.
recode Q36_2 6=.
recode Q37 6=.
recode Q38 6=.
recode Q41 7=.
recode Q42 4=.
recode Q43 3=.
recode Q45 3=.
recode Q46_10 1=.
recode Q48 7=.
recode Q49 3=.
recode Q51 7=.