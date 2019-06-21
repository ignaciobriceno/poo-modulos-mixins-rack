module Formula
	def perimetro(lado_1 = @ancho || lado_1 = @lado, lado_2 = @largo || lado_2 = @lado)
		perimetro = 2*lado_1 + 2*lado_2
	end
	def area(lado_1 = @ancho || lado_1 = @lado, lado_2 = @largo || lado_2 = @lado)
		area = lado_1*lado_2
	end
end
class Rectangulo
	include Formula
	def initialize(largo, ancho)
		@largo = largo
		@ancho = ancho
	end
	def lado
		print "el largo es #{@largo} y el ancho es #{@ancho}"
	end
end

class Cuadrado
	include Formula
	def initialize(lado)
		@lado = lado
	end
	def lado
		print "el lado es #{@lado}"
	end
end



rectangulo1 = Rectangulo.new(2, 3)
cuadrado1 = Cuadrado.new(2)

print "el perímetro del rectángulo es #{rectangulo1.perimetro} y el área es #{rectangulo1.area}\n" 
print "el perímetro del cuadrado es #{cuadrado1.perimetro} y el área es #{cuadrado1.area}\n"