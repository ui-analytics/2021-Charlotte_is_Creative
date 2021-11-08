*DO_FILE 1: cleaned data*

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

*Do_File 2: Recoding Racee and Ethnicity*

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

*DO_FILE 3: Descriptive Statistics*

*Descriptive statistics for primary craft discipline*
tab Q3_1, miss
tab Q3_2, miss
tab Q3_3, miss
tab Q3_4, miss
tab Q3_5, miss
tab Q3_6, miss
tab Q3_7, miss
tab Q3_8, miss
tab Q3_9, miss
tab Q3_10, miss
tab Q3_11, miss
tab Q3_12, miss
tab Q3_13, miss
tab Q3_14, miss
tab Q3_15, miss
*Horizontar bar graph for Craft/art discipline*
graph hbar (count) Q3_1 Q3_2 Q3_3 Q3_4 Q3_5 Q3_6 Q3_7 Q3_8 Q3_9 Q3_10 Q3_11 Q3_12 Q3_13 Q3_15 Q3_14, legend(label( 1 "Advertising/Branding/Graphic Design")) legend(label( 2 "Architecture")) legend(label( 3 "Coding/UX")) legend(label( 4 "Crafting and Textile Art")) legend(label( 5 "Event Producers/Managers")) legend(label( 6 "Fashion Design (Jewelry and Customizing)")) legend(label( 7 "Music/Spoken Word")) legend(label( 8 "Photography/Videography")) legend(label( 9 "Stage Performance (Acting/Dance)")) legend(label( 10 "Stagecraft (Sound/Lighting/Construction)")) legend(label( 11 "Visual Artists (Painting/Muralist/Sculptors)")) legend(label( 12 "Woodworking")) legend(label( 13 "Writers/Editors/Poets")) legend(label( 14 "Printmaking/Calligraphy")) legend(label( 15 "Other"))

*Descriptive Statistics AFTER recoding:*

*Ethnicity*
tab Q45, miss
*Different Races*
tab Q46_1, miss
tab Q46_2, miss
tab Q46_3, miss
tab Q46_4, miss
tab Q46_5, miss
tab Q46_6, miss
tab Q46_7, miss
tab Q46_8, miss
tab Q46_9, miss
*cross tabulation between Hispanic origins and races*
tab Q45 Q46_1
tab Q45 Q46_2
tab Q45 Q46_3
tab Q45 Q46_4
tab Q45 Q46_5
tab Q45 Q46_6
tab Q45 Q46_7
tab Q45 Q46_8
tab Q45 Q46_9
tab Q45 Q46_10
*Horizontal bar graph for races*
graph hbar (count) Q46_1 Q46_2 Q46_3 Q46_4 Q46_5 Q46_6 Q46_7 Q46_8 Q46_9 , legend(label( 1 "Black or African American")) legend(label( 2 "White")) legend(label( 3 "American Indian or Alaskan Native")) legend(label( 4 "Native Hawaiian or Pacific Islander")) legend(label( 5 "Chinese")) legend(label( 6 "Indian")) legend(label( 7 "Vietnamese")) legend(label( 8 "Other Asian or Asian American")) legend(label( 9 "Other"))
*Horizontal bar graph for singular vs mixed races*
graph hbar (mean) White Black Indian Other_Singular_Race Other_Asian_Races Multiple_Race , legend(label( 1 "White Only")) legend(label( 2 "African American/ Black only")) legend(label( 3 "Indian(Asian) only")) legend(label( 4 "Other Singular races")) legend(label( 5 "Other singular Asian races")) legend(label( 6 "Multiple/2 or more races"))
