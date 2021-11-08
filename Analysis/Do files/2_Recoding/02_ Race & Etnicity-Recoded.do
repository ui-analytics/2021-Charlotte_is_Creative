*Ethnicity (Q45): Prefer not to respond is recoded as missing data
recode Q45 3=.
*Generating recoded race variables*
*"Prefer not to respond" for race is to assigned a missing value*
recode Q46_10 1=.
*White*
gen White=1
replace White=. if Q46_1==. & Q46_2==. & Q46_3==. & Q46_4==. & Q46_5==. & Q46_6==. & Q46_7==. & Q46_8==. & Q46_9==. & Q46_10==.
replace White=0 if Q46_1==1 | Q46_3==1| Q46_4==1| Q46_5==1| Q46_6==1| Q46_7==1| Q46_8==1| Q46_9==1| Q46_10==1
*African American*
gen Black=1
replace Black=. if Q46_1==. & Q46_2==. & Q46_3==. & Q46_4==. & Q46_5==. & Q46_6==. & Q46_7==. & Q46_8==. & Q46_9==. & Q46_10==.
replace Black=0 if Q46_2==1 | Q46_3==1| Q46_4==1| Q46_5==1| Q46_6==1| Q46_7==1| Q46_8==1| Q46_9==1| Q46_10==1
*Native American*
gen Native_American=1
replace Native_American=. if Q46_1==. & Q46_2==. & Q46_3==. & Q46_4==. & Q46_5==. & Q46_6==. & Q46_7==. & Q46_8==. & Q46_9==. & Q46_10==.
replace Native_American=0 if Q46_1==1 | Q46_2==1| Q46_4==1| Q46_5==1| Q46_6==1| Q46_7==1| Q46_8==1| Q46_9==1| Q46_10==1
*Native Hawaiian*
gen Native_Hawaiian=1
replace Native_Hawaiian=. if Q46_1==. & Q46_2==. & Q46_3==. & Q46_4==. & Q46_5==. & Q46_6==. & Q46_7==. & Q46_8==. & Q46_9==. & Q46_10==.
replace Native_Hawaiian=0 if Q46_1==1 | Q46_2==1| Q46_3==1| Q46_5==1| Q46_6==1| Q46_7==1| Q46_8==1| Q46_9==1| Q46_10==1
*Chinese*
gen Chinese=1
replace Chinese=. if Q46_1==. & Q46_2==. & Q46_3==. & Q46_4==. & Q46_5==. & Q46_6==. & Q46_7==. & Q46_8==. & Q46_9==. & Q46_10==.
replace Chinese=0 if Q46_1==1 | Q46_2==1| Q46_3==1| Q46_4==1| Q46_6==1| Q46_7==1| Q46_8==1| Q46_9==1| Q46_10==1
*Indian*
gen Indian=1
replace Indian=. if Q46_1==. & Q46_2==. & Q46_3==. & Q46_4==. & Q46_5==. & Q46_6==. & Q46_7==. & Q46_8==. & Q46_9==. & Q46_10==.
replace Indian=0 if Q46_1==1 | Q46_2==1| Q46_3==1| Q46_4==1| Q46_5==1| Q46_7==1| Q46_8==1| Q46_9==1| Q46_10==1
*Vietnamese*
gen Vietnamese=1
replace Vietnamese=. if Q46_1==. & Q46_2==. & Q46_3==. & Q46_4==. & Q46_5==. & Q46_6==. & Q46_7==. & Q46_8==. & Q46_9==. & Q46_10==.
replace Vietnamese=0 if Q46_1==1 | Q46_2==1| Q46_3==1| Q46_4==1| Q46_5==1| Q46_6==1| Q46_8==1| Q46_9==1| Q46_10==1
*Other Asian*
gen Other_Asian=1
replace Other_Asian=. if Q46_1==. & Q46_2==. & Q46_3==. & Q46_4==. & Q46_5==. & Q46_6==. & Q46_7==. & Q46_8==. & Q46_9==. & Q46_10==.
replace Other_Asian=0 if Q46_1==1 | Q46_2==1| Q46_3==1| Q46_4==1| Q46_5==1| Q46_6==1| Q46_7==1| Q46_9==1| Q46_10==1
*Other Singular Races*
gen Other_Race=1
replace Other_Race=. if Q46_1==. & Q46_2==. & Q46_3==. & Q46_4==. & Q46_5==. & Q46_6==. & Q46_7==. & Q46_8==. & Q46_9==. & Q46_10==.
replace Other_Race=0 if Q46_1==1 | Q46_2==1| Q46_3==1| Q46_4==1| Q46_5==1| Q46_6==1| Q46_7==1| Q46_8==1| Q46_10==1

* 4 categories have less than 5 observations. New categories are made merging these categories*
gen Other_Singular_Race= Native_American + Native_Hawaiian + Other_Race
gen Other_Asian_Races= Chinese + Vietnamese+Other_Asian

*Generating Mixed Races*
gen Multiple_Race= 0
replace Multiple_Race=. if White==. & Black==. & Indian==. & Other_Singular_Race==. & Other_Asian_Races==.
replace Multiple_Race=1 if White==0 & Black==0 & Indian==0 & Other_Singular_Race==0 & Other_Asian_Races==0

*Manual changes to reflect people who specified mixed races in writing*
replace Multiple_Race = 1 in 104
replace Other_Singular_Race = 0 in 104
replace Other_Race = 0 in 104
replace Other_Race = 0 in 233
replace Other_Singular_Race = 0 in 233
replace Multiple_Race = 1 in 233
replace Other_Race = 0 in 288
replace Other_Singular_Race = 0 in 288
replace Multiple_Race = 1 in 288
replace Other_Race = 0 in 308
replace Other_Singular_Race = 0 in 308
replace Multiple_Race = 1 in 308
replace Other_Race = 0 in 316
replace Other_Singular_Race = 0 in 316
replace Multiple_Race = 1 in 316


