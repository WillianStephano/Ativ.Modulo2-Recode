Algoritmo "Trabalho RecodePRO"

Var
   // Seção de Declarações das variáveis
   numero : vetor[1..5] de inteiro
   NOME   : vetor[1..5] de caracter
   CIDADE  : vetor[1..5] de caracter
   destino  : vetor[1..5] de caracter
   indice : inteiro
     L,XL :  LOGICO
    OPCAO : Caracter


   
FUNÇÃO PESQUISA(XV: INTEIRO) : LOGICO
VAR II : INTEIRO
   A : LOGICO
INICIO
   A := FALSO
   PARA II DE 1 ATÉ 5 FAÇA
      SE numero[ii] = xv ENTÃO
         A := VERDADEIRO
         interrompa
      FIMSE
   FIMPARA
   RETORNE A
FIMFUNÇÃO



// ################### Cliente ########################
PROCEDIMENTO cadastrarCliente
VAR
   II  : INTEIRO
   L  :  LOGICO
   xnum : INTEIRO
   xnom : caracter
   xidd : caracter

INICIO
   limpaTela
   Escreval("Cadastro de cliente")

   SE indice <= 5 ENTÃO
      xnum := 0
      Xnom := ""
      xidd := ""
      L := VERDADEIRO
      Enquanto L faça
         escreva("Digite o numero ",Indice," : ")
         leia(xnum)
         L := PESQUISA(xnum)
      fimenquanto
      
      escreva("Insira o nome do cliente: ")
      leia(xnom)
      
      escreva("Insira a cidade do cliente: ")
      leia(xidd)

      Numero[indice] := xnum
      Nome[indice]   := xnom
      Cidade[indice]  := xidd
      indice := indice + 1
   fimse

   escreval(" ")
   escreva("Aperte <ENTER> ")
   leia(XL)

FIMPROCEDIMENTO


PROCEDIMENTO consultarCliente
VAR
   II : inteiro
   L  :  LOGICO
   xnum : INTEIRO
   xnom : caracter
   xidd : caracter

INICIO
   limpaTela

   escreval(" CONSULTA ")

   para II de 1 ate 5 faça
      escreval(NUMERO[II]," ",NOME[II]," - ",CIDADE[II])
   fimpara

   escreval(" ")
   escreva("Aperte <ENTER> ")
   leia(XL)

FIMPROCEDIMENTO




//##################### DESTINO ######################
PROCEDIMENTO cadastrarDestino
VAR
   II  : INTEIRO
   L  :  LOGICO
   xnum : INTEIRO
   xnom : caracter
   xidd : caracter

INICIO
   limpaTela
   Escreval("Cadastro de cliente")

   SE indice <= 5 ENTÃO
      xnum := 0
      Xnom := ""
      xidd := ""
      L := VERDADEIRO
      Enquanto L faça
         escreva("DIGITE O NUMERO",Indice," : ")
         leia(xnum)
         L := PESQUISA(xnum)
      fimenquanto

      escreva("Insira o nome do destino: ")
      leia(xnom)

      Numero[indice] := xnum
      destino[indice]   := xnom
      indice := indice + 1
   fimse

   escreval(" ")
   escreva("Aperte <ENTER> ")
   leia(XL)

FIMPROCEDIMENTO

PROCEDIMENTO consultarDestino
VAR
   II : inteiro
   L  :  LOGICO
   xnum : INTEIRO
   xnom : caracter
   xidd : caracter

INICIO
   limpaTela

   escreval(" Consulta de destino disponiveis: ")

   para II de 1 ate 5 faça
      escreval(NUMERO[II]," - ",destino[II])
   fimpara

   escreval(" ")
   escreva("Aperte <ENTER> ")
   leia(XL)

FIMPROCEDIMENTO







Inicio

   indice := 1
   L := VERDADEIRO
   OPCAO := ""
   ENQUANTO L FAÇA
      LIMPATELA
      Escreval("   MENU PRINCIPAL   ")
      Escreval("1-Cadastrar cliente")
      Escreval("2-Consultar clientes")
      Escreval("_____________________")
      Escreval("3-Cadastrar destino")
      Escreval("4-Consultar destino")
      Escreval(" ")
      Escreval("5-FINALIZAR")
      Escreval(" ")
      Escreva("Digite a opção:")
      Leia(opcao)
      
      Escolha OPCAO Faça
         Caso "1"
              cadastrarCliente
         Caso "2"
              consultarCliente
         Caso "3"
              cadastrarDestino
         Caso "4"
              consultarDestino
         Caso "5"
              L := FALSO
      Outrocaso
          Escreval("OPÇÃO INVÁLIDA !!!")
          Escreval(" ")
          Escreva("TECLE <ENTER> ")
          Leia(XL)
      FIMESCOLHA
   FIMENQUANTO
Fimalgoritmo