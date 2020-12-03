validas = 0

ARGF.each do |line|
    
    estado = line.split (":")
    politica = estado [0]
    senha = estado [1]
    senha = senha.strip
    estado2 = politica.split (" ")
    incidencias = estado2 [0]
    letra = estado2 [1]
    incidencias = incidencias.split ("-")
    min = incidencias [0].to_i
    max = incidencias [1].to_i
    
    num_inc = senha.count (letra)
    if num_inc >= min and num_inc <= max
        validas += 1
    end
    #puts "min: #{min}, max: #{max}, letra: #{letra}, senha: #{senha}"
end

puts validas

