
entrada = Array.new
resultado = 1
ARGF.each do |line|
    entrada << line
end


array = [[1,1],[3,1],[5,1],[7,1],[1,2]]
array.each do |right, down|
    ct = 0  #contador de arvore
    contador = 0
    entrada.each_with_index do |line, index|   #guardar posição da linha
        line = line.strip #remove caracteres invisiveis
        cc = line.length   #contador de colunas
        
        if index != 0 and index % down == 0
            
            contador = (contador + right) % cc
            
            if line[contador] == "#" 
                ct +=1 
            end
    
            #puts "#{index}: #{line}" 
        end
        #puts "#{index}: #{line}" 
    end
    resultado *= ct
     
end


puts resultado
