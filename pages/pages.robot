'##################################################################################################################################
# Autor: Andre Luis
# Decrição: Elementos da pagina Web para realizar a interação
##################################################################################################################################

*** Variables ***
#Tela-01 
${Modelo}                                   xpath=//div[@class='main-navigation']//a[@id='nav_automobile']
${Vehicle}                                  xpath=//ul//a[@id='entervehicledata']
${MakeComboBx}                              xpath=//select[@id='make']
${ModelComboBx}                             xpath=//select[@id='model']
${CylinderInput}                            xpath=//input[@id='cylindercapacity']
${EnginerInput}                             xpath=//input[@id='engineperformance']
${DataManufactureInput}                     xpath=//input[@id='dateofmanufacture']
${NumSeats1ComboBx}                         xpath=//select[@id='numberofseats']
${RightDriverRadio}                         xpath=//div[@class='field']//*[contains(text(),'Right Hand Drive')]
${RightDriverRadioYes}                      xpath=//label[@class='ideal-radiocheck-label'][1]//span
${RightDriverRadioNo}                       xpath=//label[@class='ideal-radiocheck-label'][2]//span
${NumSeats2ComboBx}                         xpath=//select[@id='numberofseatsmotorcycle']
${FuelTypeComboBx}                          xpath=//select[@id='fuel']
${PayloadInput}                             xpath=//input[@id='payload']
${TotalWeightInput}                         xpath=//input[@id='totalweight']
${ListPriceInput}                           xpath=//input[@id='listprice']
${LicensePlaterInput}                       xpath=//input[@id='licenseplatenumber']
${AnnualMileageInput}                       xpath=//input[@id='annualmileage']
${Next}                                     xpath=//button[@id='nextenterinsurantdata']
                                            
#Tela-02
${Insurant}                                 xpath=//a[@id='enterinsurantdata']
${FirstName_Input}                          xpath=//input[@id='firstname']
${LastName_Input}                           xpath=//input[@id='lastname']
${DateOfBirth_Input}                        xpath=//input[@id='birthdate']
${Gender_ComboBx}                           xpath=//form[@id="insurance-form"]/div/section[2]/div[4]/p
${GenderMale}                               xpath=//form[@id="insurance-form"]/div/section[2]/div[4]/p/label[1]/span
${GenderFemale}                             xpath=//form[@id="insurance-form"]/div/section[2]/div[4]/p/label[2]/span
${StreetAddress_Input}                      xpath=//input[@id='streetaddress']
${Country_ComboBx}                          xpath=//select[@id='country']
${ZipCode_Input}                            xpath=//input[@id='zipcode']
${City_Input}                               xpath=//input[@id='city']
${Occupation_ComboBx}                       xpath=//select[@id='occupation']
${Hobbies_ComboBx}                          xpath=//section[@style='display: block;']//div[@class='field idealforms-field idealforms-field-checkbox']//p[@class='group']
${Hobbies_Speeding}                         xpath=//section[@style='display: block;']//label[@class='ideal-radiocheck-label'][1]//span[@class='ideal-check']
${Hobbies_BungeeJumping}                    xpath=//section[@style='display: block;']//label[@class='ideal-radiocheck-label'][2]//span[@class='ideal-check']
${Hobbies_CliffDiving}                      xpath=//section[@style='display: block;']//label[@class='ideal-radiocheck-label'][3]//span[@class='ideal-check']
${Hobbies_Skydiving}                        xpath=//section[@style='display: block;']//label[@class='ideal-radiocheck-label'][4]//span[@class='ideal-check']
${Hobbies_Other}                            xpath=//section[@style='display: block;']//label[@class='ideal-radiocheck-label'][5]//span[@class='ideal-check']
${Next2}                                    xpath=//button[@id='nextenterproductdata']

#Tela-03
${Product}                                  xpath=//a[@id='enterproductdata']
${StartDate_Input}                          xpath=//input[@id='startdate']
${InsuranceSum_ComboBx}                     xpath=//select[@id='insurancesum']           
${MeritRating_ComboBx}                      xpath=//select[@id='meritrating']
${DamageInsurance_ComboBx}                  xpath=//select[@id='damageinsurance']
${OptionalProducts_ComboBx}                 xpath=//section[@style='display: block;']//p[@class]
${Optional_EuroProtection}                  xpath=//section[@style='display: block;']//label[@class='ideal-radiocheck-label'][1]//span[@class='ideal-check']
${Optional_LegalDefenseInsurance}           xpath=//section[@style='display: block;']//label[@class='ideal-radiocheck-label'][2]//span[@class='ideal-check']
${CourtesyCar_ComboBx}                      xpath=//select[@id='courtesycar']
${Next3}                                    xpath=//button[@id='nextselectpriceoption']

#Tela-04
${TelaPrice}                                xpath=//a[@id='selectpriceoption']
${SelectOption}                             xpath=//th[@colspan='4']
${Option_Silver}                            xpath=//th[@colspan='4']//label[@class='choosePrice ideal-radiocheck-label'][1]
${Option_Gold}                              xpath=//th[@colspan='4']//label[@class='choosePrice ideal-radiocheck-label'][2]
${Option_Platinum}                          xpath=//th[@colspan='4']//label[@class='choosePrice ideal-radiocheck-label'][3]
${Option_Ultimate}                          xpath=//th[@colspan='4']//label[@class='choosePrice ideal-radiocheck-label'][4]
${Next4}                                    xpath=//button[@id='nextsendquote']

#Tela-05
${Send_Quote}                               xpath=//a[@id='sendquote']
${E-Mail_Input}                             xpath=//input[@id='email']
${Phone_Input}                              xpath=//input[@id='phone']
${Username_Input}                           xpath=//section//div//input[@id='username']
${Password_Input}                           xpath=//input[@id='password']
${ConfirmPassword_Input}                    xpath=//input[@id='confirmpassword']

${Next5}                                    xpath=//button[@id='sendemail']
${element}                                  xpath=//div[@class='sweet-alert showSweetAlert visible']//h2
${Okay}                                     xpath=//button[@class='confirm'] 