# Solicitar un número desde la consola
print "Ingrese un número: "
numero = gets.chomp.to_i

# Función para verificar si un número es primo
def es_primo(n)
  if n <= 1
    return false
  elsif n <= 3
    return true
  elsif n % 2 == 0 || n % 3 == 0
    return false
  end

  i = 5
  while i * i <= n
    if n % i == 0 || n % (i + 2) == 0
      return false
    end
    i += 6
  end

  return true
end

# Verificar si el número ingresado es primo o no
if es_primo(numero)
  puts "#{numero} es un número primo."
else
  puts "#{numero} no es un número primo."
end