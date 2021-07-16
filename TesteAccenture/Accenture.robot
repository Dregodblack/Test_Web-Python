*** Settings ***
Resource                    ../steps/Accenture_steps.robot

Test Setup                  Contexto
Test Teardown               Finalizar sessão

# robot -d ./relatorios TesteAccenture/Accenture.robot

*** Test Cases ***
CT01- Preencher os formulários das paginas e clicando no Botão Next
    Dado que acessei o site Tricents
    Quando preencho as informações da Primeira tela com "Porsche", "Motorcycle", "1000", "142", "07/10/2000", "2", "No", "Gas", "175", "190", "62000", "FSI 3013" e "5000"
    E preencho as informações da Segunda tela com "Andre", "Luis", "12/12/2000", "Male", "R. Mariano filho 280", "Brazil", "9999", "São Paulo", "Employee", e "Other"
    E preencho as informações da Terceira tela com "12/12/2022", "3000000", "Bonus 1", "Full Coverage", "Legal Defense Insurance", "No"
    E Selecionar na Quarta tela a opção do plano "Ultimate" 
    E preencho as informações da Quinta tela com "luis.1912carlos@gmail.com", "985057804", "Luis", "0Cluis"    
    Então Valido a tela com mensagem “Sending e-mail success!” confirmando que passou com sucesso