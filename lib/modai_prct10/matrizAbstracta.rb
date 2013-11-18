# matrizAbstracta.rb
require "racional"

# Clase abstracta para herencia común de matrices densa y dispersa
class MatrizAbstracta

	# Inicialización
	def initialize()

		@filas = 0 
		@columnas = 0

	end

	attr_reader :filas, :columnas

	# Convertimos a string
	def to_s

	end

	#  Matriz en punto flotante
	def to_f

	end

	# Suma de matrices
	def +(o)

	end

	# Resta de matrices
	def -(o)

	end

	# Multiplicación de matrices
	def *(o)

	end

	# Máximo de matriz
	def max(o)

	end

	# Minimo de matriz
	def min(o)

	end

end


