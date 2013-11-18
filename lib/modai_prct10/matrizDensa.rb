# matrizDensa.rb
require "matrizAbstracta"

# Clase de Matriz densa
class MatrizDensa < MatrizAbstracta

	# Inicialización
	def initialize()

		@matriz = matriz
		@filas = matriz[0].size
		@columnas = matriz[0].size

	end

	attr_reader :filas, :columnas

	# Convertimos a string
	def to_s

		fil = 0
		print "["
		while fil < filas

			col = 0					
			while col < columnas

				print "#{matriz[fil][col].to_s}"
				if (col + 1) < columnas then print ", " end
				col += 1

			end

			if (fil + 1) < filas then print ", " end
			fil += 1

		end
		print "]"

	end

	#  Matriz en punto flotante
	def to_f

                flotante = Array.new(matriz.size - 1)
                for i in 0...matriz.size
                        flotante[i] = Array.new(matriz[i].size - 1)
                        for j in 0...matriz[i].size
                                flotante[i][j] = (matriz[i][j]).to_f
                        end
                end
                Matriz.new(flotante)

	end

	# Suma de matrices
	def +(o)

		suma = Array.new(matriz.size - 1)
		for i in 0...matriz.size
		   	suma[i] = Array.new(matriz[i].size - 1)
			for j in 0...matriz[i].size
				suma[i][j] = matriz[i][j] + o.matriz[i][j]
			end
		end
		Matriz.new(suma)

	end

	# Resta de matrices
	def -(o)

                resta = Array.new(matriz.size - 1)
                for i in 0...matriz.size
			resta[i] = Array.new(matriz[i].size - 1)
			for j in 0...matriz[i].size
				resta[i][j] = matriz[i][j] - o.matriz[i][j]
			end
                end
                Matriz.new(resta)

	end

	# Multiplicación de matrices
	def *(o)

		prod = Array.new(matriz.size - 1,0)
		for i in 0...matriz[0].size 
			prod[i] = Array.new(o.matriz.size,0)
			for j in 0...o.matriz.size
				for pos in 0...matriz.size
					prod[i][j] = prod[i][j] + (matriz[i][pos] * o.matriz[pos][j])
				end
			end
		end
		Matriz.new(prod)

	end

	# Máximo de matriz
	def max(o)

		maximo = 0.to_f
		for i in 0...matriz.size
			for j in 0...matriz[i].size
				if matriz[i][j].to_f > maximo
					maximo = matriz[i][j].to_f
				end
			end
		end
		maximo

	end

	# Minimo de matriz
	def min(o)

		minimo = Maxint.to_f
		for i in 0...matriz.size
			for j in 0...matriz[i].size
				if matriz[i][j].to_f < minimo
					minimo = matriz[i][j].to_f
				end
			end
		end
		minimo

	end

end

