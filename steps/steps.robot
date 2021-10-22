##################################################################################################################################
# Autor: Andre Luis
# Decrição: Metodos para a interação com a Suite principal
##################################################################################################################################

*** Settings ***
Resource                    ../pages/pages.robot
Resource                    ../Config/resource.robot
Library                     SeleniumLibrary

*** Keywords ***
Dado que eu como usuario acesso o site Tricents
    Olha se Existe                                          ${Vehicle}                        

Quando preencho as informações da Primeira tela com "${make}", "${model}", "${cylinder}", "${kws}", "${date}", "${number}", "${boolean}", "${fuel}", "${payload}", "${weight}", "${price}", "${plate}" e "${mileage}"    
    Verifica Se ComboBox Esta Na Tela                       ${MakeComboBx}                  ${make}
    Verifica Se ComboBox Esta Na Tela                       ${ModelComboBx}                 ${model}
    Verifica Se Input Esta Na Tela                          ${CylinderInput}                ${cylinder}
    Verifica Se Input Esta Na Tela                          ${EnginerInput}                 ${kws}
    Verifica Se Input Esta Na Tela                          ${DataManufactureInput}         ${date}
    Verifica Se ComboBox Esta Na Tela                       ${NumSeats1ComboBx}             ${number}
    Verifica CheckBox Right Driver e seleciona              ${RightDriverRadio}             ${boolean}
    Verifica Se ComboBox Esta Na Tela                       ${NumSeats2ComboBx}             ${number}
    Verifica Se ComboBox Esta Na Tela                       ${FuelTypeComboBx}              ${fuel}
    Verifica Se Input Esta Na Tela                          ${PayloadInput}                 ${payload}              
    Verifica Se Input Esta Na Tela                          ${TotalWeightInput}             ${weight}
    Verifica Se Input Esta Na Tela                          ${ListPriceInput}               ${price}
    Verifica Se Input Esta Na Tela                          ${LicensePlaterInput}           ${plate}
    Verifica Se Input Esta Na Tela                          ${AnnualMileageInput}           ${mileage}
    Verifica Se Item Esta Na Tela                           ${Next}
    Olha se Existe                                          ${FirstName_Input}
    
E preencho as informações da Segunda tela com "${First_Name}", "${Last_Name}", "${Date_of_Birth}", "${Gender}", "${Street_Address}", "${Country}", "${Zip_Code}", "${City}", "${Occupation}", e "${Hobbies}"
    Olha se Existe                                          ${Insurant} 
    Verifica Se Input Esta Na Tela                          ${FirstName_Input}              ${First_Name}                       
    Verifica Se Input Esta Na Tela                          ${LastName_Input}               ${Last_Name}
    Verifica Se Input Esta Na Tela                          ${DateOfBirth_Input}            ${Date_of_Birth}
    Verifica CheckBox Gender e seleciona                    ${Gender_ComboBx}               ${Gender}
    Verifica Se Input Esta Na Tela                          ${StreetAddress_Input}          ${Street_Address}
    Verifica Se ComboBox Esta Na Tela                       ${Country_ComboBx}              ${Country}
    Verifica Se Input Esta Na Tela                          ${ZipCode_Input}                ${Zip_Code}
    Verifica Se Input Esta Na Tela                          ${City_Input}                   ${City}
    Verifica Se ComboBox Esta Na Tela                       ${Occupation_ComboBx}           ${Occupation}
    Verifica CheckBox Hobbies e seleciona                   ${Hobbies_ComboBx}              ${Hobbies}
    Verifica Se Item Esta Na Tela                           ${Next2}
    Olha se Existe                                          ${StartDate_Input} 

E preencho as informações da Terceira tela com "${StartDate}", "${Insurance_Sum}", "${Merit_Rating}", "${Damage_Insurance}", "${Optional_Products}", "${Courtesy_Car}"
    Olha se Existe                                          ${Product}                        
    Verifica Se Input Esta Na Tela                          ${StartDate_Input}                  ${Start_Date}
    Verifica Se ComboBox Esta Na Tela                       ${InsuranceSum_ComboBx}             ${Insurance_Sum}
    Verifica Se ComboBox Esta Na Tela                       ${MeritRating_ComboBx}              ${Merit_Rating}
    Verifica Se ComboBox Esta Na Tela                       ${DamageInsurance_ComboBx}          ${Damage_Insurance}
    Verifica CheckBox Optional Products e seleciona         ${OptionalProducts_ComboBx}         ${Optional_Products}
    Verifica Se ComboBox Esta Na Tela                       ${CourtesyCar_ComboBx}              ${Courtesy_Car}
    Verifica Se Item Esta Na Tela                           ${Next3}
    Olha se Existe                                          ${SelectOption}                        

E Selecionar na Quarta tela a opção do plano "${Option}"
    Olha se Existe                                           ${TelaPrice}       
    Verifica CheckBox Select Price Option e seleciona        ${SelectOption}                     ${Option}
    Verifica Se Item Esta Na Tela                            ${Next4}
    Olha se Existe                                           ${E-Mail_Input}       

E preencho as informações da Quinta tela com "${Email}", "${Cell}", "${Name}", "${Password}"
    Olha se Existe                                          ${Send_Quote}         
    Verifica Se Input Esta Na Tela                          ${E-Mail_Input}                   ${Email}
    Verifica Se Input Esta Na Tela                          ${Phone_Input}                    ${Cell}
    Verifica Se Input Esta Na Tela                          ${Username_Input}                 ${Name}
    Verifica Se Input Esta Na Tela                          ${Password_Input}                 ${Password}
    Verifica Se Input Esta Na Tela                          ${ConfirmPassword_Input}          ${Password}

Então Valido a tela com mensagem "${Texto}" confirmando que passou com sucesso 
    Verifica Se Item Esta Na Tela                           ${Next5}
    Verifica se existe o texto na Tela                      ${element}                        ${Texto}
    Verifica Se Item Esta Na Tela                           ${Okay}