programa
{
	inclua biblioteca Util --> U
	inclua biblioteca Texto --> T
	cadeia developers[5] = {"Rafael", "Felipe", "Patrick", "Suru", "Deny"} 
	funcao inicio()
	{
		inteiro opcoes, escolhaVaga=0
		cadeia vagas[30]				
		faca{
			menu()
			escreva("Escolha uma opção no Menu:")
			leia(opcoes)
			escolha(opcoes){
			caso 1: entrada(vagas, escolhaVaga)
			pare
			caso 2: saida(vagas, escolhaVaga)
			pare
			caso 3: listar(vagas)
			pare
			caso 4: sair(developers)
			pare
			caso contrario:
			pare
		}
		}enquanto(opcoes!=4)		
	}
	funcao menu(){
		escreva(
		"----------------------------------\n",
		"1-Entrada de Veículo\n",
		"2-Saída de Veículo\n",
		"3-Listar vagas\n",
		"4-Sair do programa\n",
		"----------------------------------\n\n"
			)
		}
	// CASO 1	
	funcao entrada(cadeia a[], inteiro b){
		escreva("Qual o número da vaga? \n\n")
		leia(b)
		//b=sorteia(0,30)
		se(b>=0 e b<30){
		para(inteiro i=0; i < 30; i++){
			cadeia c					
				se(a[b-1]=="")
		              {
		             escreva("Vaga Liberada!\n\n")
		             escreva("Qual o carro a estacionar?\n\n") 	
		             leia(c)		             		            	
	                  a[b-1]=c             
	                  escreva(a[b]," Estacionado na Vaga: ",b,"\n\n")
	                  pare	                  	     
	              	}senao se(a[i]!=""){
	              		  }senao{escreva("\n Vaga Ocupada! \n\n")pare}
			}
		}senao{escreva("Opção invalida!!!\n\n")}
		}
	// CASO 2	
	funcao saida(cadeia a[], inteiro b){		
		escreva("Qual o número da vaga? \n\n")
		leia(b)
		se(b>=0 e b<30){
		para(inteiro i=0; i < 30; i++){
			inteiro c					
				se(a[b-1]!=""){escreva(a[b-1]," é o seu carro?\n\n")
				   escreva("Digite 1 para sim ou digite 2 para não. ")
		             leia(c)
		             	se(c==1){					    	 	
		                  a[b-1]=""             
		                  escreva("Carro Removido! Vaga ",b," liberada!\n\n")
		                  pare		                  		                  
		                  }senao{escreva("\n Operação cancelada! \n\n")pare}
		          }
				senao{escreva("Opção invalida!!!\n\n")}
		}		
		}
	}
	// CASO 3
	funcao listar(cadeia a[]){
		escreva("\nLista das Vagas: \n")
              para(inteiro i = 0; i < 30; i++){
              	se(a[i] != ""){
              		escreva(i+1," ---> ",a[i],"\n")
              		}senao{escreva(i+1," ---> Vazio \n")}              	    
              }
		}
	// CASO 0	
	funcao sair(cadeia a[]){
			escreva("\n--------------------------------------")
			escreva("\n---Obrigado por utilizar nosso APP!---\n")
			escreva("--------------------------------------\n\n")
			escreva("Turma: 20  Grupo: 5\n\n")
			escreva("Desenvolvedores: \n")
			para(inteiro i=0; i < 5; i++){
			escreva("*",a[i],"\n")
		}
		}		              		  		             		
}
	
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2734; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */