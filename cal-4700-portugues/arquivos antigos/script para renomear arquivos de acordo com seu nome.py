import os	
import pathlib	
from pathlib import Path	

print()  	
# muda a pasta para a pasta desejada	
os.chdir(os.getcwd())	

PastaAtual = os.getcwd() 	

print("Pasta Atual = ", PastaAtual)	

texto = "To list some types in a buffer:.txt"	
texto.replace(':', 'ellen')	
texto.translate({ord(i): None for i in ':'})	
print(texto)	

for Arquivo in os.listdir(PastaAtual):	
    full_path = os.path.join(PastaAtual, Arquivo)	
    if os.path.isfile(full_path):	
        print (full_path)	
        NomedoArquivo = open(full_path).readline().rstrip() +  ".txt" #define o nome do arquivo	
        print("Passo1:", NomedoArquivo)	
        n2 = NomedoArquivo.replace('\\', '')	
        n3= n2 .replace('/', '')	
        n4= n3.replace(':', '')	
        print("Passo2 = ", n4)	
        n5 = n4.replace('?', '')	
        n6 = n5.replace('<', '')	
        n7 = n6.replace('>', '')	
        n8= n7.replace('|', '')	
        n9 = n8.replace('*', '')	
        n10 = n9.replace('"', '')	
        print("Passo3:", n10)	
        NovoNomedoArquivo =  n10 # junta o nome anterior a pasta atual	
        os.rename(full_path, NovoNomedoArquivo)