*recoding for Household Income: e.Recode household income, combining variables Q48 and Q51 such that if Q49 is "Yes," use value from Q48 (personal income). If Q49 is "No," use value from Q51 (Household Income) . Note: Q 51 is displayed only if answered NO to Q49("Are you the only earner in your household?")*
gen Household_income=.
replace Household_income= Q48 if Q49==1
replace Household_income=Q51 if Q49==2