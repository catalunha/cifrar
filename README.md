# cifrar_msg

Meu primeiro Package para encriptar dados passando pela cifra de césar e depois por conversão hexadecimal com base me numero chave.

Exemplo de uso:
'''
var cifraMsg = CifrarMsg(textoOriginal: 'cifrar_msg',chave: 1);
var textoEncriptado = cifraMsg.encriptarEHex();
print(textoEncriptado);
'''