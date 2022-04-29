require_relative 'ui'

def encontrar_jogador(mapa)
    for linha = 0..(mapa.size-1)
        if mapa[linha].include? "H"
            for coluna = 0..(mapa[linha].size-1)
                if mapa[linha][coluna] == "H"
                    return [linha, coluna]
                end
            end
        end
    end
end

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