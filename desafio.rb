def possivelRemover?(expressao)
    count = 0
    while count < expressao.length
        if expressao[count] == "<" && expressao[count + 1] == ">"
            return true
        end
        count += 1
    end 
    false
end

expressao = "<<.<<..>><>><.>.>.<<.>.<.>>>><>><>>"
areai = expressao.count(".")
expressao = expressao.delete(".")
expressao = expressao.chars

diamantes = 0
count = 0
while possivelRemover?(expressao)
    while count < expressao.length - 1
        if expressao[count] == "<" && expressao[count + 1] == ">"
            expressao.delete_at(count)
            expressao.delete_at(count + 1)
            diamantes += 1
        end
        count += 1
    end
    count = 0
end

puts "Há #{areai} grão(s) de areai na espressão"
puts "Há #{diamantes} diamante(s) na expressão"


