require_relative 'ui'

def encontrar_jogador(mapa)
    caractere_do_heroi = "H"
    for linha = 0..(mapa.size-1)
        linha_atual = mapa[linha]
        if heroi_esta_nessa_linha = linha_atual.include? caractere_do_heroi
            for coluna = 0..(linha.size-1)
                heroi_esta_aqui = linha_atual[coluna] == caractere_do_heroi
                if heroi_esta_aqui
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