# Exercicio 1
puts "Exercicio 1"

def fizzbuzz(numero)

  if (numero%3==0 && numero%5==0)
    puts "FizzBuzz"
  elsif (numero%3==0)
    puts "Fizz"
  elsif (numero%5==0)
    puts "Buzz"
  else

    puts numero
  end
end

fizzbuzz(6)
fizzbuzz(10)
fizzbuzz(15)
fizzbuzz(7)
fizzbuzz(13)


# Exercicio 2
puts "Exercicio 2"

def soma_dobrada(num1, num2)

  if (num1==num2)
    puts 2*(num1+num2)
  elsif (num1<0 || num2<0 )
    puts '-1'
  else
    puts num1+num2
  end
end

soma_dobrada(1,2)
soma_dobrada(3,2)
soma_dobrada(2,2)
soma_dobrada(7,7)
soma_dobrada(3,-3)


# Exercicio 3
puts "Exercicio 3"

def ordena_vetor vetor
  vetor2 = []
  vetor.each do |num|
    if num.even?
      vetor2.push(num)
    end
  end
  vetor.each do |num|
    if num.odd?
      vetor2.push(num)
    end
  end
  print vetor2
end

ordena_vetor([1,2,3,4])
ordena_vetor([3,4,8,7,5,6])


# Exercicio 4
puts "Exercicio 4\n"

num = "inconstitucionalissimamente"
puts num.count("i")


# Exercicio 5
puts "Exercicio 5\n"

palavra = "teste"

n = 2

puts palavra.slice(0...-n) * n


# Exercicio 6
puts "Exercicio 6\n"

def compara_vetores (vetor1, vetor2)
  cont = 0
  for i in 0...vetor1.size
    if vetor2[i] - vetor1[i] <=2
      cont+= 1
    end

  end
puts cont
end

compara_vetores([1, 2, 3], [2, 3, 10])
compara_vetores([1, 2, 3], [2, 3, 5])
compara_vetores([1, 2, 3], [2, 3, 3])


# Desafio

def indo_arabico romano
  soma = 0
  for i in 0...romano.length

if i < romano.length && i >= 0

    if romano[i] == "I" && romano[i+1] == "V"
      soma += 4
    elsif romano[i] == "I" && romano[i+1] == "X"
      soma+= 9
    elsif romano[i] == "I"
      soma += 1
    end

    if romano[i] == "V" && romano[i-1] != "I"
      soma += 5
    elsif romano[i] == "V" && romano[i-1] == "I" && i-1 >= 0
      break
    elsif romano[i] == "V"
      soma +=5
    end

    if romano[i] == "X" && romano[i-1] != "I"
      soma += 10
    elsif romano[i] == "X" && romano[i-1] == "I" && i-1 >= 0
      break
    elsif romano[i] == "X"
      soma += 10
    end
else
  soma += romano[i]
end

  end
  puts soma
end

puts "Desafio \n"
indo_arabico("XXVIII")
indo_arabico("XIV")
indo_arabico("XXIX")
