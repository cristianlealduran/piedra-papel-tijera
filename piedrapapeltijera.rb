# primero se crean los objetos que serán escrito en el codigo cuando se ejecute como respuesta, es por esto que hay que abrir el "ruby piedrapapeldijera.rb" y colocar una de las siguentes opciones:
opciones = ["piedra", "papel", "tijera"]

# encontré este metodo en internet, porque con rand no logré configurar de la misma forma a pesar de que es una opción variable

computadora = opciones.sample

# aqui se crea el codigo que es el jugador, se moverá desde entre los digitos "0,1,2" ya que cero cuenta cuanta como un numero. Con este puedo configurar palabras como respuestas desde el teclado.
jugador = ARGV[0]

# Verificar si la opción del jugador es válida
unless opciones.include?(jugador)
  puts "vamos a jugar: debes elegir entre piedra, papel o tijera"
  exit
end

# Verificar quién gana
if jugador == "piedra" && computadora == "tijera" ||
   jugador == "papel" && computadora == "piedra" ||
   jugador == "tijera" && computadora == "papel"
  puts "Ganaste! El PC eligió #{computadora}"
elsif jugador == computadora
  puts "Empate! El PC también eligió #{computadora}"
else
  puts "Perdiste! El PC eligió #{computadora}"
end
