require_relative 'ui'

def le_mapa(numero)
    arquivo = "map#{numero}.txt"
    texto = File.read arquivo
    mapa = texto.split "\n"
end

def joga(nome)
    mapa = le_mapa 1

    while true
        desenha mapa
        direcao = pede_movimento
    end
end

def inicia_fogefoge
    nome = boas_vindas
    joga nome
end