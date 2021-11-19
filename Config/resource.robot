##################################################################################################################################
# Autor: Andre Luis
# Decrição: Metodos para a interação com o Steps e o Browser
##################################################################################################################################

*** Settings ***        
Library                                          SeleniumLibrary
Library                                          AutoRecorder

*** Variables ***
${BROWSER}                                       chrome
${URL}                                           http://sampleapp.tricentis.com/101/app.php

${Logo}                                          xpath=//div[@id]//img[@id='tricentis_logo']


*** Keywords ***
Iniciar Sessão
    Open Browser                                 ${URL}               ${BROWSER}
    Maximize Browser Window
    Wait Until Element Is Visible                ${Logo}              10
    Sleep                                        5
    Capture Page Screenshot
     
Finalizar sessão
    Capture Page Screenshot
    Close Browser

Seleciona Item Combo Box
    [Arguments]                         ${combobox}         ${itemcombobox}
    Sleep                               1
    Wait Until Element Is Visible       ${combobox}         20
    Click Element                       ${combobox}
    ${Item}                             Set Variable        ${combobox}//option[@value='${itemcombobox}']
    Wait Until Element Is Visible       ${Item}             20
    Click Element                       ${Item}

Seleciona Item Check Box Right Driver
    [Arguments]                 ${element}
    IF                          '${element}' == 'Yes'
            Click No Item       ${RightDriverRadioYes}
    ELSE
            Click No Item       ${RightDriverRadioNo}
    END 

Seleciona Item Check Box Gender
    [Arguments]                 ${element}
    IF                          '${element}' == 'Male'
            Click No Item       ${GenderMale}
    ELSE
            Click No Item       ${GenderFemale}
    END 


Seleciona Item Check Box Hobbies 
    [Arguments]                 ${element}
    IF                          '${element}' == 'Speeding'
            Click No Item       ${Hobbies_Speeding}
    ELSE IF                     '${element}' == 'Bungee Jumping'
            Click No Item       ${Hobbies_BungeeJumping}
    ELSE IF                     '${element}' == 'Cliff Diving'
            Click No Item       ${Hobbies_CliffDiving}
    ELSE IF                     '${element}' == 'Skydiving'
            Click No Item       ${Hobbies_Skydiving}
    ELSE IF                     '${element}' == 'Other'
            Click No Item       ${Hobbies_Other}
    END 

Seleciona Item Check Box Optional Products
    [Arguments]                 ${element}
    IF                          '${element}' == 'Euro Protection'
            Click No Item       ${Optional_EuroProtection}
    ELSE 
            Click No Item       ${Optional_LegalDefenseInsurance}
    END 

Seleciona Item Check Box Select Price Option 
    [Arguments]                 ${element}
    IF                          '${element}' == 'Silver'
            Click No Item       ${Option_Silver}
    ELSE IF                     '${element}' == 'Gold'
            Click No Item       ${Option_Gold}
    ELSE IF                     '${element}' == 'Platinum'
            Click No Item       ${Option_Platinum}
    ELSE IF                     '${element}' == 'Ultimate'
            Click No Item       ${Option_Ultimate}
    END 

Preenche Text
    [Arguments]                         ${input}            ${Text}
    Sleep                               3
    Wait Until Element Is Visible       ${input}            120
    Input Text                          ${input}            ${Text}
    Capture Page Screenshot

Click No Item
    [Arguments]                         ${item}
    Sleep                               3
    Wait Until Element Is Visible       ${item}             120
    Click Element                       ${item}
    Capture Page Screenshot

Olha se Existe
    [Arguments]         ${element}
    Wait Until Element Is Visible       ${element}          120
    Capture Page Screenshot

Verifica se existe o texto na Tela
    [Arguments]         ${element}          ${Texto}
    Sleep                                                         5
    Wait Until Element Contains             ${element}           ${Texto}
    Capture Page Screenshot

Verifica Se ComboBox Esta Na Tela
    [Arguments]             ${pageObject}                        ${opção}
    ${Status}           Run Keyword And Return Status           Olha se Existe                                  ${pageObject}          
    Run Keyword If          '${Status}' == 'True'           Seleciona Item Combo Box                            ${pageObject}   ${opção}
    
Verifica Se Input Esta Na Tela
    [Arguments]             ${pageObject}                        ${opção}
    ${Status}           Run Keyword And Return Status           Olha se Existe                                  ${pageObject}          
    Run Keyword If          '${Status}' == 'True'               Preenche Text                                   ${pageObject}   ${opção}

Verifica Se Item Esta Na Tela
    [Arguments]             ${pageObject}
    ${Status}           Run Keyword And Return Status           Olha se Existe                                  ${pageObject}          
    Run Keyword If          '${Status}' == 'True'               Click No Item                                   ${pageObject}

Verifica CheckBox Right Driver e seleciona
    [Arguments]             ${pageObject}                        ${opção}
    ${Status}           Run Keyword And Return Status           Olha se Existe                                  ${pageObject}
    Run Keyword If          '${Status}' == 'True'               Seleciona Item Check Box Right Driver           ${opção}   

Verifica CheckBox Gender e seleciona
    [Arguments]             ${pageObject}                        ${opção}
    ${Status}           Run Keyword And Return Status           Olha se Existe                                  ${pageObject}
    Run Keyword If          '${Status}' == 'True'               Seleciona Item Check Box Gender                 ${opção}   

Verifica CheckBox Hobbies e seleciona
    [Arguments]             ${pageObject}                        ${opção}
    ${Status}           Run Keyword And Return Status           Olha se Existe                                  ${pageObject}
    Run Keyword If          '${Status}' == 'True'               Seleciona Item Check Box Hobbies                  ${opção}   
  
Verifica CheckBox Optional Products e seleciona
    [Arguments]             ${pageObject}                        ${opção}
    ${Status}           Run Keyword And Return Status           Olha se Existe                                  ${pageObject}
    Run Keyword If          '${Status}' == 'True'               Seleciona Item Check Box Optional Products                  ${opção}   

Verifica CheckBox Select Price Option e seleciona
    [Arguments]             ${pageObject}                        ${opção}
    ${Status}           Run Keyword And Return Status           Olha se Existe                                  ${pageObject}
    Run Keyword If          '${Status}' == 'True'               Seleciona Item Check Box Select Price Option                   ${opção}   