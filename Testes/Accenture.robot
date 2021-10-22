##################################################################################################################################
# Autor: Andre Luis
# Decrição: Teste da tela de Preenchimento dos formulários 
##################################################################################################################################

*** Settings ***
Resource                    ../steps/steps.robot
Resource                    ../Config/resource.robot
Resource                    ../dados/dados.robot

Test Setup                  Iniciar Sessão
# Test Teardown               Finalizar sessão

# robot -d ./relatorios/results Testes/Accenture.robot

*** Test Cases ***
CT01- Preencher os formulários das paginas e clicando no Botão Next
# robot -v browser:chrome -t "CT01- Preencher os formulários das paginas e clicando no Botão Next" -d ./relatorios/results Testes/Accenture.robot"
    Dado que eu como usuario acesso o site Tricents
    Quando preencho as informações da Primeira tela com "${make}", "${model}", "${cylinder}", "${kws}", "${date}", "${number}", "${boolean}", "${fuel}", "${payload}", "${weight}", "${price}", "${plate}" e "${mileage}"     
    E preencho as informações da Segunda tela com "${First_Name}", "${Last_Name}", "${Date_of_Birth}", "${Gender}", "${Street_Address}", "${Country}", "${Zip_Code}", "${City}", "${Occupation}", e "${Hobbies}"
    E preencho as informações da Terceira tela com "${StartDate}", "${Insurance_Sum}", "${Merit_Rating}", "${Damage_Insurance}", "${Optional_Products}", "${Courtesy_Car}"
    E Selecionar na Quarta tela a opção do plano "${Option}"
    E preencho as informações da Quinta tela com "${Email}", "${Cell}", "${Name}", "${Password}"
    Então Valido a tela com mensagem "${Texto}" confirmando que passou com sucesso 