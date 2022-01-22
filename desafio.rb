expressao = "<<.<<..>><>><.>.>.<<.>.<.>>>><>><>>"
areai = expressao.count(".")
expressao = expressao.delete(".")
puts expressao
expressao = expressao.chars

diamantes = 0
menor = 0
j= 0
while j < expressao.length
    if expressao[j] == "<"
        menor += 1
    elsif expressao[j] == ">" and menor > 0 
        diamantes += 1
        menor -= 1
    end
    j+=1
end

puts "Há #{areai} grão(s) de areai na espressão"
puts "Há #{diamantes} diamante(s) na expressão"


