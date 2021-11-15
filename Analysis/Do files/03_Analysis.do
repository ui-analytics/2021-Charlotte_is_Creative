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
*Horizontal bar graph for Craft/art discipline*
graph hbar (count) Q3_1 Q3_2 Q3_3 Q3_4 Q3_5 Q3_6 Q3_7 Q3_8 Q3_9 Q3_10 Q3_11 Q3_12 Q3_13 Q3_15 Q3_14, legend(label( 1 "Advertising/Branding/Graphic Design")) legend(label( 2 "Architecture")) legend(label( 3 "Coding/UX")) legend(label( 4 "Crafting and Textile Art")) legend(label( 5 "Event Producers/Managers")) legend(label( 6 "Fashion Design (Jewelry and Customizing)")) legend(label( 7 "Music/Spoken Word")) legend(label( 8 "Photography/Videography")) legend(label( 9 "Stage Performance (Acting/Dance)")) legend(label( 10 "Stagecraft (Sound/Lighting/Construction)")) legend(label( 11 "Visual Artists (Painting/Muralist/Sculptors)")) legend(label( 12 "Woodworking")) legend(label( 13 "Writers/Editors/Poets")) legend(label( 14 "Printmaking/Calligraphy")) legend(label( 15 "Other"))


*Artistic or creative employment type*
tab Q4_1, miss
tab Q4_3, miss
tab Q4_4, miss
tab Q4_5, miss
tab Q4_6, miss
tab Q4_7, miss

*how many people work*
tab Q6,miss
*Have another job?*
tab Q10,miss

*Source of learning business aspect of creative practice*
tab Q13_1 ,miss
tab Q13_2 ,miss
tab Q13_3 ,miss
tab Q13_4 ,miss
tab Q13_5 ,miss
tab Q13_6 ,miss
tab Q13_7 ,miss
tab Q13_8 ,miss
tab Q13_9 ,miss

*Desirable funding sources*
tab Q15_1 ,miss
tab Q15_2 ,miss
tab Q15_3 ,miss
tab Q15_4 ,miss
tab Q15_5 ,miss
tab Q15_6 ,miss

*Conditions that will improve ability to make a living*
tab Q16_1 ,miss
tab Q16_2 ,miss
tab Q16_3 ,miss
tab Q16_4 ,miss
tab Q16_5 ,miss
tab Q16_6 ,miss
tab Q16_7 ,miss
tab Q16_8 ,miss
tab Q16_9 ,miss
tab Q16_10 ,miss
tab Q16_11 ,miss

*have health insurance?*
tab Q19, miss
*Who provides health insurance*
tab Q23, miss
*If yes to Q23, how many invidiuals covered*
tab Q21, miss
*summary of people covered in the premium amount*
univar Q21

*If yes to Q23, is health insurance affordable?*
tab Q22, miss

*If 'My employer' is answer to Q23, then how strong is employer-sponspred health insurance a factor in pursuing creative career full time*
tab Q24, miss

*If NO to Q23, why no health insurance*
tab Q25_1, miss
tab Q25_2, miss
tab Q25_3, miss
tab Q25_4, miss
tab Q25_5, miss

*explored healthcare options like medicaid or obamacare?*
tab Q26, miss

*How has Covid impacted ability to work in creative field?*
tab Q28_1, miss
tab Q28_2, miss
tab Q28_3, miss
tab Q28_4, miss
tab Q28_5, miss
tab Q28_6, miss
tab Q28_7, miss
tab Q28_8, miss

*level of work satisfaction*
tab Q31, miss

*summary of the CFPB: Financial well-being score*
tab CFPB_score, miss
univar CFPB_score

*Descriptive Statistics AFTER recoding:*
*Gender Descriptive Statistics*
tab Q42, miss
*Whether born in Charlotte*
tab Q43, miss

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

*Horizontal bar graph for races*
graph hbar (count) Q46_1 Q46_2 Q46_3 Q46_4 Q46_5 Q46_6 Q46_7 Q46_8 Q46_9 , legend(label( 1 "Black or African American")) legend(label( 2 "White")) legend(label( 3 "American Indian or Alaskan Native")) legend(label( 4 "Native Hawaiian or Pacific Islander")) legend(label( 5 "Chinese")) legend(label( 6 "Indian")) legend(label( 7 "Vietnamese")) legend(label( 8 "Other Asian or Asian American")) legend(label( 9 "Other"))

*Horizontal bar graph for singular vs mixed races*
graph hbar (mean) White Black Indian Other_Singular_Race Other_Asian_Races Multiple_Race , legend(label( 1 "White Only")) legend(label( 2 "African American/ Black only")) legend(label( 3 "Indian(Asian) only")) legend(label( 4 "Other Singular races")) legend(label( 5 "Other singular Asian races")) legend(label( 6 "Multiple/2 or more races"))


*Annual Earnings*
tab Q48, miss
*whether only earner in the household*
tab Q49, miss
*total household income: presented if answered no to Q49*
tab Q51, miss

*Cross Tabulations of key variables against certain demographics*

*Q10: creative employment against age*
tab Q10 Q41,miss
*Q10: creative employment against gender*
tab Q10 Q42,miss
*Q10: creative employment against birthplace*
tab Q10 Q43,miss
*Q10: creative employment against ethnicity*
tab Q10 Q45, miss
*Q10: creative employment against Race*
tab Q10 Race, miss
*Q10: creative employment against income*
tab Q10 Household_income, miss
*Q10: creative employment against Years of experience*
tab Q10 Zero_Twoyrs, miss
tab Q10 Three_Fiveyrs , miss
tab Q10 Six_Tenyrs , miss
tab Q10 MorethanTenyrs , miss

*Q15 categories (funding sources) against age*
tab Q15_1 Q41, miss
tab Q15_2 Q41, miss
tab Q15_3 Q41, miss
tab Q15_4 Q41, miss
tab Q15_5 Q41, miss
tab Q15_6 Q41, miss
*Q15 categories (funding sources) against gender*
tab Q15_1 Q42, miss
tab Q15_2 Q42, miss
tab Q15_3 Q42, miss
tab Q15_4 Q42, miss
tab Q15_5 Q42, miss
tab Q15_6 Q42, miss
*Q15 categories (funding sources) against birthplace*
tab Q15_1 Q43, miss
tab Q15_2 Q43, miss
tab Q15_3 Q43, miss
tab Q15_4 Q43, miss
tab Q15_5 Q43, miss
tab Q15_6 Q43, miss
*Q15 categories (funding sources) against Years of Experience categories*
tab Q15_1 Zero_Twoyrs , miss
tab Q15_2 Zero_Twoyrs , miss
tab Q15_3 Zero_Twoyrs , miss
tab Q15_4 Zero_Twoyrs , miss
tab Q15_5 Zero_Twoyrs , miss
tab Q15_6 Zero_Twoyrs , miss
tab Q15_1 Three_Fiveyrs , miss
tab Q15_2 Three_Fiveyrs , miss
tab Q15_3 Three_Fiveyrs , miss
tab Q15_4 Three_Fiveyrs , miss
tab Q15_5 Three_Fiveyrs , miss
tab Q15_6 Three_Fiveyrs , miss
tab Q15_1 Six_Tenyrs , miss
tab Q15_2 Six_Tenyrs , miss
tab Q15_3 Six_Tenyrs , miss
tab Q15_4 Six_Tenyrs , miss
tab Q15_5 Six_Tenyrs , miss
tab Q15_6 Six_Tenyrs , miss
tab Q15_1 MorethanTenyrs , miss
tab Q15_2 MorethanTenyrs , miss
tab Q15_3 MorethanTenyrs , miss
tab Q15_4 MorethanTenyrs , miss
tab Q15_5 MorethanTenyrs , miss
tab Q15_6 MorethanTenyrs , miss
*Q15 categories (funding sources) against Ethnicity*
tab Q15_1 Q45, miss
tab Q15_2 Q45, miss
tab Q15_3 Q45, miss
tab Q15_4 Q45, miss
tab Q15_5 Q45, miss
tab Q15_6 Q45, miss
*Q15 categories (funding sources) against Race*
tab Q15_1 Race , miss
tab Q15_2 Race , miss
tab Q15_3 Race , miss
tab Q15_4 Race , miss
tab Q15_5 Race , miss
tab Q15_6 Race , miss
*Q15 categories (funding sources) against income*
tab Q15_1 Household_income , miss
tab Q15_2 Household_income , miss
tab Q15_3 Household_income , miss
tab Q15_4 Household_income , miss
tab Q15_5 Household_income , miss
tab Q15_6 Household_income , miss

*Q19 (health insurance against age*
tab Q19 Q41, miss
*Q19 (health insurance against gender*
tab Q19 Q42, miss
*Q19 (health insurance against birthplace*
tab Q19 Q43, miss
*Q19 (health insurance against ethnicity*
tab Q19 Q45, miss
*Q19 (health insurance against race*
tab Q19 Race , miss
*Q19 (health insurance against income*
tab Q19 Household_income , miss
*Q19 (health insurance against years of experience categories*
tab Q19 Zero_Twoyrs , miss
tab Q19 Zero_Twoyrs , miss
tab Q19 Three_Fiveyrs , miss
tab Q19 Six_Tenyrs , miss
tab Q19 MorethanTenyrs , miss
*Q19 against Q10 (another job)*
tab Q19 Q10, miss
*Q19 against Q4 categories (employment type)*
tab Q19 Q4_1 , miss
tab Q19 Q4_3 , miss
tab Q19 Q4_4 , miss
tab Q19 Q4_5 , miss
tab Q19 Q4_6 , miss
tab Q19 Q4_7 , miss

*Q3 categories(craft discipline) against age*
tab Q3_1 Q41,miss
tab Q3_2 Q41,miss
tab Q3_3 Q41,miss
tab Q3_4 Q41,miss
tab Q3_5 Q41,miss
tab Q3_6 Q41,miss
tab Q3_7 Q41,miss
tab Q3_8 Q41,miss
tab Q3_9 Q41,miss
tab Q3_10 Q41,miss
tab Q3_11 Q41,miss
tab Q3_12 Q41,miss
tab Q3_13 Q41,miss
tab Q3_14 Q41,miss
tab Q3_15 Q41,miss

*Q3 categories(craft discipline) against gender*
tab Q3_1 Q42,miss
tab Q3_2 Q42,miss
tab Q3_3 Q42,miss
tab Q3_4 Q42,miss
tab Q3_5 Q42,miss
tab Q3_6 Q42,miss
tab Q3_7 Q42,miss
tab Q3_8 Q42,miss
tab Q3_9 Q42,miss
tab Q3_10 Q42,miss
tab Q3_11 Q42,miss
tab Q3_12 Q42,miss
tab Q3_13 Q42,miss
tab Q3_14 Q42,miss
tab Q3_15 Q42,miss

*Q3 categories(craft discipline) against birthplace*
tab Q3_1 Q43,miss
tab Q3_2 Q43,miss
tab Q3_3 Q43,miss
tab Q3_4 Q43,miss
tab Q3_5 Q43,miss
tab Q3_6 Q43,miss
tab Q3_7 Q43,miss
tab Q3_8 Q43,miss
tab Q3_9 Q43,miss
tab Q3_10 Q43,miss
tab Q3_11 Q43,miss
tab Q3_12 Q43,miss
tab Q3_13 Q43,miss
tab Q3_14 Q43,miss
tab Q3_15 Q43,miss

*Q3 categories(craft discipline) against ethnicity*
tab Q3_1 Q45,miss
tab Q3_2 Q45,miss
tab Q3_3 Q45,miss
tab Q3_4 Q45,miss
tab Q3_5 Q45,miss
tab Q3_6 Q45,miss
tab Q3_7 Q45,miss
tab Q3_8 Q45,miss
tab Q3_9 Q45,miss
tab Q3_10 Q45,miss
tab Q3_11 Q45,miss
tab Q3_12 Q45,miss
tab Q3_13 Q45,miss
tab Q3_14 Q45,miss
tab Q3_15 Q45,miss

*Q3 categories(craft discipline) against Race*
tab Q3_1 Race ,miss
tab Q3_2 Race ,miss
tab Q3_3 Race ,miss
tab Q3_4 Race ,miss
tab Q3_5 Race ,miss
tab Q3_6 Race ,miss
tab Q3_7 Race ,miss
tab Q3_8 Race ,miss
tab Q3_9 Race ,miss
tab Q3_10 Race ,miss
tab Q3_11 Race ,miss
tab Q3_12 Race ,miss
tab Q3_13 Race ,miss
tab Q3_14 Race ,miss
tab Q3_15 Race ,miss
*Q3 categories(craft discipline) against income*
tab Q3_1 Household_income ,miss
tab Q3_2 Household_income ,miss
tab Q3_3 Household_income ,miss
tab Q3_4 Household_income ,miss
tab Q3_5 Household_income ,miss
tab Q3_6 Household_income ,miss
tab Q3_7 Household_income ,miss
tab Q3_8 Household_income ,miss
tab Q3_9 Household_income ,miss
tab Q3_10 Household_income ,miss
tab Q3_11 Household_income ,miss
tab Q3_12 Household_income ,miss
tab Q3_13 Household_income ,miss
tab Q3_14 Household_income ,miss
tab Q3_15 Household_income ,miss
*Q3 categories(craft discipline) against Years of experience categories*
tab Q3_1 Zero_Twoyrs ,miss
tab Q3_2 Zero_Twoyrs ,miss
tab Q3_3 Zero_Twoyrs ,miss
tab Q3_4 Zero_Twoyrs ,miss
tab Q3_5 Zero_Twoyrs ,miss
tab Q3_6 Zero_Twoyrs ,miss
tab Q3_7 Zero_Twoyrs ,miss
tab Q3_8 Zero_Twoyrs ,miss
tab Q3_9 Zero_Twoyrs ,miss
tab Q3_10 Zero_Twoyrs ,miss
tab Q3_11 Zero_Twoyrs ,miss
tab Q3_12 Zero_Twoyrs ,miss
tab Q3_13 Zero_Twoyrs ,miss
tab Q3_14 Zero_Twoyrs ,miss
tab Q3_15 Zero_Twoyrs ,miss
tab Q3_1 Three_Fiveyrs ,miss
tab Q3_2 Three_Fiveyrs ,miss
tab Q3_3 Three_Fiveyrs ,miss
tab Q3_4 Three_Fiveyrs ,miss
tab Q3_5 Three_Fiveyrs ,miss
tab Q3_6 Three_Fiveyrs ,miss
tab Q3_7 Three_Fiveyrs ,miss
tab Q3_8 Three_Fiveyrs ,miss
tab Q3_9 Three_Fiveyrs ,miss
tab Q3_10 Three_Fiveyrs ,miss
tab Q3_11 Three_Fiveyrs ,miss
tab Q3_12 Three_Fiveyrs ,miss
tab Q3_13 Three_Fiveyrs ,miss
tab Q3_14 Three_Fiveyrs ,miss
tab Q3_15 Three_Fiveyrs ,miss
tab Q3_1 Six_Tenyrs ,miss
tab Q3_2 Six_Tenyrs ,miss
tab Q3_3 Six_Tenyrs ,miss
tab Q3_4 Six_Tenyrs ,miss
tab Q3_5 Six_Tenyrs ,miss
tab Q3_6 Six_Tenyrs ,miss
tab Q3_7 Six_Tenyrs ,miss
tab Q3_8 Six_Tenyrs ,miss
tab Q3_9 Six_Tenyrs ,miss
tab Q3_10 Six_Tenyrs ,miss
tab Q3_11 Six_Tenyrs ,miss
tab Q3_12 Six_Tenyrs ,miss
tab Q3_13 Six_Tenyrs ,miss
tab Q3_14 Six_Tenyrs ,miss
tab Q3_15 Six_Tenyrs ,miss
tab Q3_1 MorethanTenyrs ,miss
tab Q3_2 MorethanTenyrs ,miss
tab Q3_3 MorethanTenyrs ,miss
tab Q3_4 MorethanTenyrs ,miss
tab Q3_5 MorethanTenyrs ,miss
tab Q3_6 MorethanTenyrs ,miss
tab Q3_7 MorethanTenyrs ,miss
tab Q3_8 MorethanTenyrs ,miss
tab Q3_9 MorethanTenyrs ,miss
tab Q3_10 MorethanTenyrs ,miss
tab Q3_11 MorethanTenyrs ,miss
tab Q3_12 MorethanTenyrs ,miss
tab Q3_13 MorethanTenyrs ,miss
tab Q3_14 MorethanTenyrs ,miss
tab Q3_15 MorethanTenyrs ,miss
*Q3 categories(craft discipline) against Q10 (outside employment)*
tab Q3_1 Q10,miss
tab Q3_2 Q10,miss
tab Q3_3 Q10,miss
tab Q3_4 Q10,miss
tab Q3_5 Q10,miss
tab Q3_6 Q10,miss
tab Q3_7 Q10,miss
tab Q3_8 Q10,miss
tab Q3_9 Q10,miss
tab Q3_10 Q10,miss
tab Q3_11 Q10,miss
tab Q3_12 Q10,miss
tab Q3_13 Q10,miss
tab Q3_14 Q10,miss
tab Q3_15 Q10,miss

*Q28 categories (impact on work) against gender*
tab Q28_1 Q42, miss
tab Q28_2 Q42, miss
tab Q28_3 Q42, miss
tab Q28_4 Q42, miss
tab Q28_5 Q42, miss
tab Q28_6 Q42, miss
tab Q28_7 Q42, miss
tab Q28_8 Q42, miss
*Q28 categories (impact on work) against birthplace*
tab Q28_1 Q43, miss
tab Q28_2 Q43, miss
tab Q28_3 Q43, miss
tab Q28_4 Q43, miss
tab Q28_5 Q43, miss
tab Q28_6 Q43, miss
tab Q28_7 Q43, miss
tab Q28_8 Q43, miss
*Q28 categories (impact on work) against ethnicity*
tab Q28_1 Q45, miss
tab Q28_2 Q45, miss
tab Q28_3 Q45, miss
tab Q28_4 Q45, miss
tab Q28_5 Q45, miss
tab Q28_6 Q45, miss
tab Q28_7 Q45, miss
tab Q28_8 Q45, miss
*Q28 categories (impact on work) against Race*
tab Q28_1 Race , miss
tab Q28_2 Race , miss
tab Q28_3 Race , miss
tab Q28_4 Race , miss
tab Q28_5 Race , miss
tab Q28_6 Race , miss
tab Q28_7 Race , miss
tab Q28_8 Race , miss
*Q28 categories (impact on work) against income*
tab Q28_1 Household_income , miss
tab Q28_2 Household_income , miss
tab Q28_3 Household_income , miss
tab Q28_4 Household_income , miss
tab Q28_5 Household_income , miss
tab Q28_6 Household_income , miss
tab Q28_7 Household_income , miss
tab Q28_8 Household_income , miss
*Q28 categories (impact on work) against years of experience categories*
tab Q28_1 Zero_Twoyrs , miss
tab Q28_2 Zero_Twoyrs , miss
tab Q28_3 Zero_Twoyrs , miss
tab Q28_4 Zero_Twoyrs , miss
tab Q28_5 Zero_Twoyrs , miss
tab Q28_6 Zero_Twoyrs , miss
tab Q28_7 Zero_Twoyrs , miss
tab Q28_8 Zero_Twoyrs , miss
tab Q28_1 Three_Fiveyrs , miss
tab Q28_2 Three_Fiveyrs , miss
tab Q28_3 Three_Fiveyrs , miss
tab Q28_4 Three_Fiveyrs , miss
tab Q28_5 Three_Fiveyrs , miss
tab Q28_6 Three_Fiveyrs , miss
tab Q28_7 Three_Fiveyrs , miss
tab Q28_8 Three_Fiveyrs , miss
tab Q28_1 Three_Fiveyrs , miss
tab Q28_2 Three_Fiveyrs , miss
tab Q28_3 Three_Fiveyrs , miss
tab Q28_4 Three_Fiveyrs , miss
tab Q28_5 Three_Fiveyrs , miss
tab Q28_6 Three_Fiveyrs , miss
tab Q28_7 Three_Fiveyrs , miss
tab Q28_8 Three_Fiveyrs , miss
tab Q28_1 Three_Fiveyrs , miss
tab Q28_2 Three_Fiveyrs , miss
tab Q28_3 Three_Fiveyrs , miss
tab Q28_4 Three_Fiveyrs , miss
tab Q28_5 Three_Fiveyrs , miss
tab Q28_6 Three_Fiveyrs , miss
tab Q28_7 Three_Fiveyrs , miss
tab Q28_8 Three_Fiveyrs , miss
*Q28 categories (impact on work) against Q10 (outside employment)*
tab Q28_1 Q10, miss
tab Q28_2 Q10, miss
tab Q28_3 Q10, miss
tab Q28_4 Q10, miss
tab Q28_5 Q10, miss
tab Q28_6 Q10, miss
tab Q28_7 Q10, miss
tab Q28_8 Q10, miss
*Q28 categories (impact on work) against Q4 (employment type)*
tab Q28_1 Q4_1 , miss
tab Q28_2 Q4_1 , miss
tab Q28_3 Q4_1 , miss
tab Q28_4 Q4_1 , miss
tab Q28_5 Q4_1 , miss
tab Q28_6 Q4_1 , miss
tab Q28_7 Q4_1 , miss
tab Q28_8 Q4_1 , miss
tab Q28_1 Q4_3, miss
tab Q28_2 Q4_3 , miss
tab Q28_3 Q4_3 , miss
tab Q28_4 Q4_3 , miss
tab Q28_5 Q4_3 , miss
tab Q28_6 Q4_3 , miss
tab Q28_7 Q4_3 , miss
tab Q28_8 Q4_3 , miss
tab Q28_1 Q4_4 , miss
tab Q28_2 Q4_4 , miss
tab Q28_3 Q4_4 , miss
tab Q28_4 Q4_4 , miss
tab Q28_5 Q4_4 , miss
tab Q28_6 Q4_4 , miss
tab Q28_7 Q4_4 , miss
tab Q28_8 Q4_4 , miss
tab Q28_1 Q4_5 , miss
tab Q28_2 Q4_5 , miss
tab Q28_3 Q4_5 , miss
tab Q28_4 Q4_5 , miss
tab Q28_5 Q4_5 , miss
tab Q28_6 Q4_5 , miss
tab Q28_7 Q4_5 , miss
tab Q28_8 Q4_5 , miss
tab Q28_1 Q4_6 , miss
tab Q28_2 Q4_6 , miss
tab Q28_3 Q4_6 , miss
tab Q28_4 Q4_6 , miss
tab Q28_5 Q4_6 , miss
tab Q28_6 Q4_6 , miss
tab Q28_7 Q4_6 , miss
tab Q28_8 Q4_6 , miss
tab Q28_1 Q4_7 , miss
tab Q28_2 Q4_7 , miss
tab Q28_3 Q4_7 , miss
tab Q28_4 Q4_7 , miss
tab Q28_5 Q4_7 , miss
tab Q28_6 Q4_7 , miss
tab Q28_7 Q4_7 , miss
tab Q28_8 Q4_7 , miss


*Q31 (level of satisfaction) against age*
tab Q31 Q41, miss
*Q31 (level of satisfaction) against gender*
tab Q31 Q42, miss
*Q31 (level of satisfaction) against birthplace*
tab Q31 Q43, miss
*Q31 (level of satisfaction) against ethnicity*
tab Q31 Q45, miss
*Q31 (level of satisfaction) against Race*
tab Q31 Race , miss
*Q31 (level of satisfaction) against Income*
tab Q31 Household_income , miss
*Q31 (level of satisfaction) against Years of experience*
tab Q31 Zero_Twoyrs , miss
tab Q31 Three_Fiveyrs , miss
tab Q31 Six_Tenyrs , miss
tab Q31 MorethanTenyrs , miss
*Q31 (level of satisfaction) against Q10 (outside employment*
tab Q31 Q10, miss
*Q31 (level of satisfaction) against Q4 (employment type)*
tab Q31 Q4_1 , miss
tab Q31 Q4_3 , miss
tab Q31 Q4_4 , miss
tab Q31 Q4_5 , miss
tab Q31 Q4_6 , miss
tab Q31 Q4_7 , miss
*Q31 (level of satisfaction) against Q3 (craft discipline)*
tab Q31 Q3_1 , miss
tab Q31 Q3_2 , miss
tab Q31 Q3_3 , miss
tab Q31 Q3_4 , miss
tab Q31 Q3_5 , miss
tab Q31 Q3_6 , miss
tab Q31 Q3_7 , miss
tab Q31 Q3_8 , miss
tab Q31 Q3_9 , miss
tab Q31 Q3_10 , miss
tab Q31 Q3_11 , miss
tab Q31 Q3_12 , miss
tab Q31 Q3_13 , miss
tab Q31 Q3_14 , miss
tab Q31 Q3_15 , miss

*Cross tabulation between Q37 (percent of income from creative work) and Q3 (craft discipline)*
tab Q37 Q3_1, miss
tab Q37 Q3_2, miss
tab Q37 Q3_3, miss
tab Q37 Q3_4, miss
tab Q37 Q3_5, miss
tab Q37 Q3_6, miss
tab Q37 Q3_7, miss
tab Q37 Q3_8, miss
tab Q37 Q3_9, miss
tab Q37 Q3_10, miss
tab Q37 Q3_11, miss
tab Q37 Q3_12, miss
tab Q37 Q3_13, miss
tab Q37 Q3_14, miss
tab Q37 Q3_15, miss

*Cross tabulation between Q38 (percent of income reinvested in creative work) and Q3 (craft discipline)*
tab Q38 Q3_1, miss
tab Q38 Q3_2, miss
tab Q38 Q3_3, miss
tab Q38 Q3_4, miss
tab Q38 Q3_5, miss
tab Q38 Q3_6, miss
tab Q38 Q3_7, miss
tab Q38 Q3_8, miss
tab Q38 Q3_9, miss
tab Q38 Q3_10, miss
tab Q38 Q3_11, miss
tab Q38 Q3_12, miss
tab Q38 Q3_13, miss
tab Q38 Q3_14, miss
tab Q38 Q3_15, miss

*Mean and median for CFBA score at different demographic categories*
*age*
univar CFPB_score if Q41==1
univar CFPB_score if Q41==2
univar CFPB_score if Q41==3
univar CFPB_score if Q41==4
univar CFPB_score if Q41==5
univar CFPB_score if Q41==6
*gender*
univar CFPB_score if Q42==1
univar CFPB_score if Q42==2
univar CFPB_score if Q42==3
*birthplace*
univar CFPB_score if Q43==1
univar CFPB_score if Q43==2
*years of experience*
univar CFPB_score if Zero_Twoyrs ==1
univar CFPB_score if Zero_Twoyrs ==0
univar CFPB_score if Three_Fiveyrs ==1
univar CFPB_score if Three_Fiveyrs ==0
univar CFPB_score if Six_Tenyrs ==1
univar CFPB_score if Six_Tenyrs ==0
univar CFPB_score if MorethanTenyrs ==1
univar CFPB_score if MorethanTenyrs ==0
*Ethnicity*
univar CFPB_score if Q45 ==1
univar CFPB_score if Q45 ==2
*Race*
univar CFPB_score if Race ==1
univar CFPB_score if Race ==2
univar CFPB_score if Race ==3
univar CFPB_score if Race ==4
univar CFPB_score if Race ==5
univar CFPB_score if Race ==6
*Income*
univar CFPB_score if Household_income ==1
univar CFPB_score if Household_income ==2
univar CFPB_score if Household_income ==3
univar CFPB_score if Household_income ==4
univar CFPB_score if Household_income ==5
univar CFPB_score if Household_income ==6
*health insurance*
univar CFPB_score if Q19 ==1
univar CFPB_score if Q19 ==2

*CFBA score and the individual components of Q35 and Q36*
*Q35*
univar CFPB_score if Q35_1 ==1
univar CFPB_score if Q35_1 ==2
univar CFPB_score if Q35_1 ==3
univar CFPB_score if Q35_1 ==4
univar CFPB_score if Q35_1 ==5
univar CFPB_score if Q35_2 ==1
univar CFPB_score if Q35_2 ==2
univar CFPB_score if Q35_2 ==3
univar CFPB_score if Q35_2 ==4
univar CFPB_score if Q35_2 ==5
univar CFPB_score if Q35_3 ==1
univar CFPB_score if Q35_3 ==2
univar CFPB_score if Q35_3 ==3
univar CFPB_score if Q35_3 ==4
univar CFPB_score if Q35_3 ==5
*Q36*univar CFPB_score if Q36_1 ==1
univar CFPB_score if Q36_1 ==2
univar CFPB_score if Q36_1 ==3
univar CFPB_score if Q36_1 ==4
univar CFPB_score if Q36_1 ==5
univar CFPB_score if Q36_2 ==1
univar CFPB_score if Q36_2 ==2
univar CFPB_score if Q36_2 ==3
univar CFPB_score if Q36_2 ==4
univar CFPB_score if Q36_2 ==5
