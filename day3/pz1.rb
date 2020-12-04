ct = 0  #contador de arvore

contador = 0

ARGF.each_with_index do |line, index|   #guardar posição da linha
    line = line.strip #remove caracteres invisiveis
    cc = line.length   #contador de colunas
    
    if index != 0
        
        contador = (contador + 3) % cc #limitando a 31
        
        if line[contador] == "#" 
            ct +=1 
        end

        #puts "#{index}: #{line}" 
    end
    #puts "#{index}: #{line}" 
end
puts ct
