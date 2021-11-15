*DO_FILE 1: cleaned data*
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

*Do_File 2: Recoding*

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


*recoding for Household Income: e.Recode household income, combining variables Q48 and Q51 such that if Q49 is "Yes," use value from Q48 (personal income). If Q49 is "No," use value from Q51 (Household Income) . Note: Q 51 is displayed only if answered NO to Q49("Are you the only earner in your household?")*
gen Household_income=.
replace Household_income= Q48 if Q49==1
replace Household_income=Q51 if Q49==2

*Ethnicity (Q45): Prefer not to respond is recoded as missing data while cleaning the data*
*Generating recoded race variables: 1.	Include all single races with more than 5-> a.	Single races categories with less than 5 can be classified as "Other race- single race"*

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

*2.	Include multiple race categories of more than 5 -> a.	Multiple race categories with less than 5 can be classified as "Other race- multiple races"

*Generating Mixed Races as a single ctaegory as very few observations make up one particular set of mixed race*
gen Multiple_Race= 0
replace Multiple_Race=. if White==. & Black==. & Indian==. & Other_Singular_Race==. & Other_Asian_Races==.
replace Multiple_Race=1 if White==0 & Black==0 & Indian==0 & Other_Singular_Race==0 & Other_Asian_Races==0

*Manual changes to reflect people who specified 'mixed races' in writing*
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
*Manual changes to reflect people who specified Other Asian race but in writing*
replace Other_Asian = 1 in 218
replace Other_Race = 0 in 218
replace Other_Singular_Race = 0 in 218
replace Other_Asian_Races = 1 in 218
*Manual change to correct for Ethnicity to not be confused as another race*
replace White = 1 in 367
replace Multiple_Race = 0 in 367

*A composite race variable*
gen Race=.
replace Race=1 if White==1
replace Race=2 if Black==1
replace Race=3 if Indian==1
replace Race=4 if Other_Asian_Races==1
replace Race=5 if Other_Singular_Race ==1
replace Race=6 if Multiple_Race ==1


*Do_File 2: Recoding Years of experience: 2. d.Recode years of experience in creative industry (0-2,3-5, 6-10, above 10)
*Recoding Years of experience: 2. d.Recode years of experience in creative industry (0-2,3-5, 6-10, above 10)

*Manually created the variable YearsofExperience as Q44 is a string variable*
generate YearsofExperience = ., after(Q44)
replace YearsofExperience = 10 in 7
replace YearsofExperience = 10 in 8
replace YearsofExperience = 45 in 9
replace YearsofExperience = 15 in 52
replace YearsofExperience = 15 in 53
replace YearsofExperience = 10 in 70
replace YearsofExperience = 20 in 71
replace YearsofExperience = 8 in 92
replace YearsofExperience = 3 in 120
replace YearsofExperience = 5 in 132
replace YearsofExperience = 20 in 148
replace YearsofExperience = 26 in 151
replace YearsofExperience = 10 in 166
replace YearsofExperience = 17 in 167
replace YearsofExperience = 4 in 168
replace YearsofExperience = 6 in 169
replace YearsofExperience = 40 in 170
replace YearsofExperience = 10 in 171
replace YearsofExperience = 4 in 172
replace YearsofExperience = 11 in 173
replace YearsofExperience = 7 in 174
replace YearsofExperience = 10 in 175
replace YearsofExperience = 15 in 176
replace YearsofExperience = 5 in 177
replace YearsofExperience = 20 in 179
replace YearsofExperience = 35 in 180
replace YearsofExperience = 20 in 181
replace YearsofExperience = 30 in 182
replace YearsofExperience = 25 in 183
replace YearsofExperience = 45 in 184
replace YearsofExperience = 10 in 185
replace YearsofExperience = 20 in 186
replace YearsofExperience = 40 in 187
replace YearsofExperience = 40 in 188
replace YearsofExperience = 20 in 189
replace YearsofExperience = 45 in 190
replace YearsofExperience = 30 in 191
replace YearsofExperience = 2 in 192
replace YearsofExperience = 25 in 193
replace YearsofExperience = 10 in 194
replace YearsofExperience = 9 in 195
replace YearsofExperience = 10 in 196
replace YearsofExperience = 25 in 197
replace YearsofExperience = 10 in 198
replace YearsofExperience = 44 in 199
replace YearsofExperience = 25 in 200
replace YearsofExperience = 1 in 201
replace YearsofExperience = 13 in 202
replace YearsofExperience = 15 in 203
replace YearsofExperience = 25 in 204
replace YearsofExperience = 5 in 205
replace YearsofExperience = 12 in 206
replace YearsofExperience = 10 in 207
replace YearsofExperience = 10 in 208
replace YearsofExperience = 6 in 209
replace YearsofExperience = 27 in 210
replace YearsofExperience = 5 in 211
replace YearsofExperience = 25 in 212
replace YearsofExperience = 15 in 213
replace YearsofExperience = 5 in 214
replace YearsofExperience = 8 in 215
replace YearsofExperience = 2 in 216
replace YearsofExperience = 11 in 217
replace YearsofExperience = 5 in 218
replace YearsofExperience = 30 in 219
replace YearsofExperience = 5 in 220
replace YearsofExperience = 33 in 221
replace YearsofExperience = 7 in 222
replace YearsofExperience = 5 in 223
replace YearsofExperience = 2 in 224
replace YearsofExperience = 5 in 225
replace YearsofExperience = 5 in 226
replace YearsofExperience = 2 in 227
replace YearsofExperience = 29 in 228
replace YearsofExperience = 4 in 229
replace YearsofExperience = 27 in 231
replace YearsofExperience = 15 in 232
replace YearsofExperience = 25 in 233
replace YearsofExperience = 2 in 234
replace YearsofExperience = 36 in 235
replace YearsofExperience = 10 in 236
replace YearsofExperience = 24 in 237
replace YearsofExperience = 10 in 238
replace YearsofExperience = 25 in 240
replace YearsofExperience = 8 in 241
replace YearsofExperience = 5 in 242
replace YearsofExperience = 20 in 243
replace YearsofExperience = 7 in 244
replace YearsofExperience = 12 in 245
replace YearsofExperience = 30 in 246
replace YearsofExperience = 35 in 248
replace YearsofExperience = 2 in 249
replace YearsofExperience = 25 in 250
replace YearsofExperience = 20 in 251
replace YearsofExperience = 5 in 252
replace YearsofExperience = 12 in 253
replace YearsofExperience = 10 in 254
replace YearsofExperience = 20 in 255
replace YearsofExperience = 8 in 256
replace YearsofExperience = 30 in 257
replace YearsofExperience = 35 in 258
replace YearsofExperience = 12 in 259
replace YearsofExperience = 40 in 260
replace YearsofExperience = 5 in 261
replace YearsofExperience = 11 in 262
replace YearsofExperience = 30 in 263
replace YearsofExperience = 3 in 264
replace YearsofExperience = 20 in 265
replace YearsofExperience = 3 in 266
replace YearsofExperience = 40 in 267
replace YearsofExperience = 21 in 268
replace YearsofExperience = 22 in 269
replace YearsofExperience = 13 in 270
replace YearsofExperience = 19 in 271
replace YearsofExperience = 26 in 272
replace YearsofExperience = 12 in 273
replace YearsofExperience = 25 in 274
replace YearsofExperience = 12 in 275
replace YearsofExperience = 27 in 276
replace YearsofExperience = 20 in 277
replace YearsofExperience = 27 in 278
replace YearsofExperience = 12 in 279
replace YearsofExperience = 25 in 280
replace YearsofExperience = 10 in 281
replace YearsofExperience = 10 in 282
replace YearsofExperience = 18 in 283
replace YearsofExperience = 35 in 284
replace YearsofExperience = 50 in 285
replace YearsofExperience = 25 in 286
replace YearsofExperience = 30 in 287
replace YearsofExperience = 4 in 288
replace YearsofExperience = 2 in 289
replace YearsofExperience = 20 in 290
replace YearsofExperience = 15 in 291
replace YearsofExperience = 15 in 292
replace YearsofExperience = 40 in 293
replace YearsofExperience = 45 in 294
replace YearsofExperience = 7 in 296
replace YearsofExperience = 9 in 297
replace YearsofExperience = 8 in 298
replace YearsofExperience = 40 in 299
replace YearsofExperience = 10 in 300
replace YearsofExperience = 5 in 301
replace YearsofExperience = 36 in 302
replace YearsofExperience = 11 in 303
replace YearsofExperience = 3 in 304
replace YearsofExperience = 25 in 305
replace YearsofExperience = 20 in 306
replace YearsofExperience = 30 in 307
replace YearsofExperience = 6 in 308
replace YearsofExperience = 20 in 309
replace YearsofExperience = 38 in 310
replace YearsofExperience = 25 in 311
replace YearsofExperience = 1 in 312
replace YearsofExperience = 30 in 313
replace YearsofExperience = 18 in 314
replace YearsofExperience = 30 in 315
replace YearsofExperience = 16 in 316
replace YearsofExperience = 10 in 317
replace YearsofExperience = 10 in 318
replace YearsofExperience = 5 in 319
replace YearsofExperience = 40 in 320
replace YearsofExperience = 25 in 321
replace YearsofExperience = 10 in 322
replace YearsofExperience = 3 in 323
replace YearsofExperience = 50 in 325
replace YearsofExperience = 17 in 326
replace YearsofExperience = 8 in 327
replace YearsofExperience = 15 in 328
replace YearsofExperience = 16 in 329
replace YearsofExperience = 8 in 330
replace YearsofExperience = 30 in 331
replace YearsofExperience = 45 in 332
replace YearsofExperience = 40 in 333
replace YearsofExperience = 20 in 334
replace YearsofExperience = 7 in 335
replace YearsofExperience = 12 in 336
replace YearsofExperience = 25 in 337
replace YearsofExperience = 6 in 338
replace YearsofExperience = 5 in 339
replace YearsofExperience = 50 in 340
replace YearsofExperience = 15 in 341
replace YearsofExperience = 20 in 342
replace YearsofExperience = 20 in 343
replace YearsofExperience = 15 in 344
replace YearsofExperience = 25 in 345
replace YearsofExperience = 8 in 346
replace YearsofExperience = 27 in 347
replace YearsofExperience = 5 in 348
replace YearsofExperience = 17 in 349
replace YearsofExperience = 50 in 350
replace YearsofExperience = 27 in 351
replace YearsofExperience = 9 in 352
replace YearsofExperience = 5 in 353
replace YearsofExperience = 20 in 354
replace YearsofExperience = 12 in 355
replace YearsofExperience = 11 in 356
replace YearsofExperience = 10 in 357
replace YearsofExperience = 10 in 358
replace YearsofExperience = 11 in 358
replace YearsofExperience = 14 in 359
replace YearsofExperience = 5 in 360
replace YearsofExperience = 28 in 361
replace YearsofExperience = 10 in 362
replace YearsofExperience = 40 in 363
replace YearsofExperience = 11 in 364
replace YearsofExperience = 10 in 365
replace YearsofExperience = 12 in 366
replace YearsofExperience = 18 in 367
replace YearsofExperience = 8 in 368
replace YearsofExperience = 20 in 369
replace YearsofExperience = 12 in 370
replace YearsofExperience = 3 in 371
replace YearsofExperience = 20 in 372
replace YearsofExperience = 34 in 373
replace YearsofExperience = 25 in 374
replace YearsofExperience = 13 in 375
replace YearsofExperience = 30 in 376
replace YearsofExperience = 15 in 377
replace YearsofExperience = 20 in 378
replace YearsofExperience = 4 in 379
replace YearsofExperience = 21 in 380
replace YearsofExperience = 10 in 381
replace YearsofExperience = 10 in 382
replace YearsofExperience = 4 in 383
replace YearsofExperience = 20 in 384
replace YearsofExperience = 30 in 385
replace YearsofExperience = 6 in 386
replace YearsofExperience = 3 in 387
replace YearsofExperience = 5 in 388
replace YearsofExperience = 35 in 389
replace YearsofExperience = 10 in 390
replace YearsofExperience = 40 in 391
replace YearsofExperience = 1 in 392
replace YearsofExperience = 5 in 393
replace YearsofExperience = 5 in 394
replace YearsofExperience = 15 in 396
replace YearsofExperience = 10 in 397
replace YearsofExperience = 30 in 398
replace YearsofExperience = 40 in 399
replace YearsofExperience = 15 in 400
replace YearsofExperience = 7 in 401
replace YearsofExperience = 21 in 402
replace YearsofExperience = 3 in 403
replace YearsofExperience = 30 in 404
replace YearsofExperience = 21 in 405
replace YearsofExperience = 10 in 406
replace YearsofExperience = 10 in 407
replace YearsofExperience = 9 in 408
replace YearsofExperience = 15 in 409
replace YearsofExperience = 6 in 410
replace YearsofExperience = 8 in 411
replace YearsofExperience = 25 in 412
replace YearsofExperience = 25 in 413
replace YearsofExperience = 25 in 414
replace YearsofExperience = 45 in 415
replace YearsofExperience = 5 in 416
replace YearsofExperience = 2 in 417
replace YearsofExperience = 27 in 418
replace YearsofExperience = 20 in 419
replace YearsofExperience = 24 in 420
replace YearsofExperience = 3 in 421
replace YearsofExperience = 8 in 422
replace YearsofExperience = 40 in 424
replace YearsofExperience = 2 in 425
replace YearsofExperience = 12 in 426
replace YearsofExperience = 20 in 427
replace YearsofExperience = 1 in 428
replace YearsofExperience = 10 in 429
replace YearsofExperience = 10 in 430
replace YearsofExperience = 30 in 431
replace YearsofExperience = 30 in 432
replace YearsofExperience = 8 in 433
replace YearsofExperience = 30 in 434
replace YearsofExperience = 27 in 435
replace YearsofExperience = 10 in 436
replace YearsofExperience = 10 in 437
replace YearsofExperience = 34 in 438
replace YearsofExperience = 30 in 439
replace YearsofExperience = 5 in 440
replace YearsofExperience = 11 in 441
replace YearsofExperience = 30 in 442
replace YearsofExperience = 15 in 443
replace YearsofExperience = 32 in 444
replace YearsofExperience = 50 in 445
replace YearsofExperience = 27 in 446
replace YearsofExperience = 4 in 447
replace YearsofExperience = 22 in 448
replace YearsofExperience = 30 in 449
replace YearsofExperience = 12 in 450
replace YearsofExperience = 4 in 451
replace YearsofExperience = 23 in 452
replace YearsofExperience = 10 in 453
replace YearsofExperience = 40 in 454
replace YearsofExperience = 34 in 455
replace YearsofExperience = 14 in 456
replace YearsofExperience = 10 in 458
replace YearsofExperience = 12 in 459
replace YearsofExperience = 15 in 460
replace YearsofExperience = 15 in 461
replace YearsofExperience = 25 in 462
replace YearsofExperience = 25 in 463
replace YearsofExperience = 39 in 464
replace YearsofExperience = 5 in 465
replace YearsofExperience = 5 in 466
replace YearsofExperience = 3 in 467
replace YearsofExperience = 15 in 468
replace YearsofExperience = 8 in 469
replace YearsofExperience = 4 in 470
replace YearsofExperience = 32 in 471
replace YearsofExperience = 26 in 472
replace YearsofExperience = 20 in 473
replace YearsofExperience = 20 in 474
replace YearsofExperience = 8 in 475
replace YearsofExperience = 18 in 476
replace YearsofExperience = 3 in 477
replace YearsofExperience = 3 in 478
replace YearsofExperience = 40 in 479
replace YearsofExperience = 2 in 480
replace YearsofExperience = 29 in 481
replace YearsofExperience = 5 in 482
replace YearsofExperience = 6 in 483
replace YearsofExperience = 5 in 484
replace YearsofExperience = 10 in 485
replace YearsofExperience = 9 in 486
replace YearsofExperience = 1 in 487
replace YearsofExperience = 20 in 488
replace YearsofExperience = 30 in 489
replace YearsofExperience = 15 in 490
replace YearsofExperience = 13 in 491
replace YearsofExperience = 1 in 492
replace YearsofExperience = 3 in 493
replace YearsofExperience = 1 in 494
replace YearsofExperience = 10 in 495
replace YearsofExperience = 10 in 496
replace YearsofExperience = 12 in 497
replace YearsofExperience = 8 in 498
replace YearsofExperience = 15 in 499
replace YearsofExperience = 19 in 500
replace YearsofExperience = 40 in 501
replace YearsofExperience = 15 in 502
replace YearsofExperience = 15 in 503
replace YearsofExperience = 20 in 504
replace YearsofExperience = 10 in 505
replace YearsofExperience = 3 in 506
replace YearsofExperience = 21 in 507
replace YearsofExperience = 20 in 508
replace YearsofExperience = 25 in 509
replace YearsofExperience = 25 in 510
replace YearsofExperience = 35 in 511
replace YearsofExperience = 30 in 512
replace YearsofExperience = 45 in 513
replace YearsofExperience = 17 in 514
replace YearsofExperience = 12 in 515
replace YearsofExperience = 1 in 516
replace YearsofExperience = 6 in 517
replace YearsofExperience = 10 in 518
replace YearsofExperience = 3 in 519
replace YearsofExperience = 13 in 520
replace YearsofExperience = 6 in 521
replace YearsofExperience = 24 in 522
replace YearsofExperience = 10 in 523
replace YearsofExperience = 10 in 524
replace YearsofExperience = 5 in 525
replace YearsofExperience = 3 in 526
replace YearsofExperience = 8 in 527
replace YearsofExperience = 10 in 528
replace YearsofExperience = 5 in 529
replace YearsofExperience = 20 in 530
replace YearsofExperience = 2 in 531
replace YearsofExperience = 25 in 532
replace YearsofExperience = 30 in 533
replace YearsofExperience = 5 in 534
replace YearsofExperience = 12 in 535
replace YearsofExperience = 40 in 536
replace YearsofExperience = 3 in 537
replace YearsofExperience = 1 in 538
replace YearsofExperience = 4 in 539
replace YearsofExperience = 46 in 540
replace YearsofExperience = 1 in 541
replace YearsofExperience = 10 in 541
replace YearsofExperience = 10 in 542
replace YearsofExperience = 11 in 543
replace YearsofExperience = 40 in 544
replace YearsofExperience = 7 in 545
replace YearsofExperience = 3 in 546
replace YearsofExperience = 9 in 547
replace YearsofExperience = 5 in 548
replace YearsofExperience = 5 in 549
replace YearsofExperience = 11 in 550
replace YearsofExperience = 20 in 551
replace YearsofExperience = 19 in 552
replace YearsofExperience = 18 in 553
replace YearsofExperience = 2 in 554
replace YearsofExperience = 10 in 555
replace YearsofExperience = 8 in 556
replace YearsofExperience = 5 in 557
replace YearsofExperience = 7 in 558
replace YearsofExperience = 11 in 559
replace YearsofExperience = 2 in 560
replace YearsofExperience = 13 in 561
replace YearsofExperience = 7 in 562
replace YearsofExperience = 25 in 563
replace YearsofExperience = 6 in 564
replace YearsofExperience = 18 in 565
replace YearsofExperience = 8 in 566
replace YearsofExperience = 20 in 567
replace YearsofExperience = 15 in 568
replace YearsofExperience = 5 in 569
replace YearsofExperience = 25 in 570
replace YearsofExperience = 29 in 571
replace YearsofExperience = 4 in 572
replace YearsofExperience = 40 in 573
replace YearsofExperience = 3 in 574
replace YearsofExperience = 5 in 575
replace YearsofExperience = 5 in 576
replace YearsofExperience = 41 in 577
replace YearsofExperience = 16 in 578
replace YearsofExperience = 20 in 579
replace YearsofExperience = 10 in 580
replace YearsofExperience = 15 in 581
replace YearsofExperience = 4 in 582
replace YearsofExperience = 47 in 583
replace YearsofExperience = 20 in 584
replace YearsofExperience = 7 in 585
replace YearsofExperience = 36 in 586
replace YearsofExperience = 12 in 587
replace YearsofExperience = 14 in 588
replace YearsofExperience = 36 in 589
replace YearsofExperience = 1 in 590
replace YearsofExperience = 3 in 591
replace YearsofExperience = 17 in 592
replace YearsofExperience = 25 in 593
replace YearsofExperience = 15 in 594
replace YearsofExperience = 20 in 595
replace YearsofExperience = 8 in 596
replace YearsofExperience = 16 in 597
replace YearsofExperience = 45 in 598
replace YearsofExperience = 5 in 599
replace YearsofExperience = 26 in 600
replace YearsofExperience = 45 in 601
replace YearsofExperience = 30 in 602
replace YearsofExperience = 6 in 603
replace YearsofExperience = 10 in 604
replace YearsofExperience = 12 in 605
replace YearsofExperience = 3 in 606
replace YearsofExperience = 30 in 607
replace YearsofExperience = 11 in 608
replace YearsofExperience = 25 in 609
replace YearsofExperience = 35 in 610
replace YearsofExperience = 50 in 611
replace YearsofExperience = 2 in 612
replace YearsofExperience = 20 in 613
replace YearsofExperience = 30 in 614
replace YearsofExperience = 9 in 615
replace YearsofExperience = 25 in 616
replace YearsofExperience = 35 in 617
replace YearsofExperience = 25 in 618
replace YearsofExperience = 9 in 620
replace YearsofExperience = 28 in 621
replace YearsofExperience = 30 in 622
replace YearsofExperience = 2 in 623
replace YearsofExperience = 11 in 624
replace YearsofExperience = 15 in 625
replace YearsofExperience = 9 in 626
replace YearsofExperience = 27 in 627
replace YearsofExperience = 3 in 628
replace YearsofExperience = 3 in 629
replace YearsofExperience = 30 in 630
replace YearsofExperience = 8 in 631
replace YearsofExperience = 0 in 632
replace YearsofExperience = 15 in 633
replace YearsofExperience = 21 in 634
replace YearsofExperience = 9 in 635
replace YearsofExperience = 20 in 636
replace YearsofExperience = 3 in 637
replace YearsofExperience = 1 in 638
replace YearsofExperience = 1 in 639
replace YearsofExperience = 15 in 640
replace YearsofExperience = 25 in 641
replace YearsofExperience = 40 in 642
replace YearsofExperience = 40 in 643


*Generating binary variables based on de-stringed variable*
*Zero_Twoyears*
gen Zero_Twoyrs=0
replace Zero_Twoyrs=1 if YearsofExperience<3
replace Zero_Twoyrs=. if YearsofExperience==.

*Three_Fiveyrs*
gen Three_Fiveyrs=0
replace Three_Fiveyrs=1 if YearsofExperience>=3 & YearsofExperience <=5
replace Three_Fiveyrs=. if YearsofExperience==.

*Six_Tenyrs*
gen Six_Tenyrs=0
replace Six_Tenyrs =1 if YearsofExperience>=6 & YearsofExperience <=10
replace Six_Tenyrs =. if YearsofExperience==.

*MorethanTenyrs*
gen MorethanTenyrs=0
replace MorethanTenyrs =1 if YearsofExperience>10
replace MorethanTenyrs =. if YearsofExperience==.
*Manually created the variable YearsofExperience as Q44 is a string variable*


*Creating scale for financial well-being*
*Creating a binary variable for age=1 for 18-65 yrs and age=2 fpr 65+ years age
gen age=.
replace age=1 if Q41<6
replace age=0 if Q41>=6
replace age=. if Q41==.

*Generating composite score*
gen comp_score= Q35_1 +Q35_2+ Q35_3+ Q36_1 +Q36_2
*sorting comp_score in the main dataset
sort comp_score
*merging the second data set with scores and corresponding scales*
merge m:1 comp_score using "S:\URBN\mydept\Public\Projects\2021\2021_Charlotte Is Creative\2021-Charlotte_is_Creative\Data\Working\Stata Working\CFPB Score.dta"
*generating a new variable and replacing it corresponding score depending on age variable*
gen CFPB_score=.
replace CFPB_score= Below65yrs if age==1
replace CFPB_score= Above65yrs if age==0
*Dropping unnecessary extra variables generated by the merge*
drop in 644/665

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
*Percent of income from creative work*
tab Q37, miss
*Percent of income reinvested into creative work*
tab Q38, miss

*Descriptive Statistics AFTER recoding:*
*Age*
tab Q41,miss
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
*Household income after recoding*
tab Household_income, miss

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
