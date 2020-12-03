array = Array.new # definindo fora do loop

ARGF.each do |line| # p/ cada linha vinda do stdin (entrada padrao), armazenar a linha na variavel "line"
  array << line.to_i # transformando a variavel "line" de string p/ inteiro e armazenando o resultado na array. outra forma de escrever essa linha seria "array.push(line.to_i)"
end

array.each do |n| # p/ cada item da variavel "array", armazenar o item na variavel "n"

    idx = array.index(n) # pegando a posicao do item "n" na array
  array.slice(idx + 1..array.last).each do |m| # to cortando (slicing) a array aqui. pego da posicao do item atual até a posição do último item da array. p/ cada item dessa nova array criada, armazenar o item na variavel "m""
    idx = array.index(m)
    array.slice(idx + 1..array.last).each do |l|
        if n + m + l == 2020 # checo a soma das variavels m e n, se for igual a 2020
        print "#{n} * #{m} *#{l}= #{n * m * l}" # printo isso aqui
        end
    end
  end
end