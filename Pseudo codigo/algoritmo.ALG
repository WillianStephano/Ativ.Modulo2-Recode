Algoritmo "Trabalho RecodePRO"

Var
   // Declarações das variáveis
   colecaoIndice : vetor[1..5] de inteiro
   nome   : vetor[1..5] de caracter
   cidade  : vetor[1..5] de caracter
   anoNasc  : vetor[1..5] de inteiro
   destino  : vetor[1..5] de caracter
   indice : inteiro
     L,XL :  logico
    OPCAO : caracter


   
FUNÇÃO PESQUISA(XV: inteiro) : logico
VAR II : inteiro
   A : logico
INICIO
   A := FALSO
   PARA II DE 1 ATÉ 5 FAÇA
      SE colecaoIndice[ii] = xv ENTÃO
         A := VERDADEIRO
         interrompa
      FIMSE
   FIMPARA
   RETORNE A
FIMFUNÇÃO



// ################### Cliente ########################
PROCEDIMENTO cadastrarCliente
VAR
   II  : inteiro
   L  :  logico
   xnum : inteiro
   xnom : caracter
   xidd : caracter
   xano : inteiro

INICIO
   limpaTela
   escreval("Cadastro de cliente")

   se indice <= 5 então
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
      
      escreva("Ano de nascimento: ")
      leia(xano)

      colecaoIndice[indice] := xnum
      nome[indice]   := xnom
      cidade[indice]  := xidd
      anoNasc[indice] := xano
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
   xnum : inteiro
   xnom : caracter
   xidd : caracter

INICIO
   limpaTela

   escreval(" CONSULTA ")

   para II de 1 ate 5 faça
      escreval(colecaoIndice[II]," ",nome[II]," - ",cidade[II]," - ",anoNasc[II])
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

   se indice <= 5 então
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

      colecaoIndice[indice] := xnum
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
      escreval(colecaoIndice[II]," - ",destino[II])
   fimpara

   escreval(" ")
   escreva("Aperte <ENTER> ")
   leia(XL)

FIMPROCEDIMENTO







Inicio

   indice := 1
   L := VERDADEIRO
   OPCAO := ""
   enquanto L faça
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