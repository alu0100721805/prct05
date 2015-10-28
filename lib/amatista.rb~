require "amatista/version"

module Amatista
   class Fraccion
  	 # Método inicializar clase Fracción
	   def initialize(numerador, denominador) 
		#atributos
	       raise ArgumentError,'Argumento "numerador" no es del tipo entero"' unless numerador.is_a? Integer
	       raise ArgumentError,'Argumento "denominador" no es del tipo entero"' unless denominador.is_a? Integer
	       raise ArgumentError,'Argumento Numerador no debe ser "nulo"' unless numerador != nil
	       raise ArgumentError,'Argumento Denominador no debe ser "nulo"' unless denominador != nil
	       raise ZeroDivisionError,'Argumento Denominador no debe ser "cero"' unless denominador != 0
	       @numerador = numerador
	       @denominador = denominador
	   end	
	   attr_reader :numerador, :denominador
	   def to_s
		if (@numerador % @denominador != 0) then
			if (@numerador < 0 && @denominador < 0)
				@numerador = (-1)*@numerador
				@denominador = (-1)*@denominador	
			end		
			 @numerador.to_s << "/" << @denominador.to_s 
		else
			(@numerador / @denominador).to_s
		end
	   end
	   def +(fraccion)
	       #fracción a sumar
	       raise ArgumentError,'Argumento "fraccion" no debe ser "nulo"' unless fraccion != nil
	       raise ArgumentError,'Argumento "fraccion" no es del tipo Amatista::Fraccion"' unless fraccion.is_a? Amatista::Fraccion
	       
	       b = self.denominador * fraccion.denominador
	       a =  self.numerador * fraccion.denominador  + fraccion.numerador * self.denominador
	       fnueva = Amatista::Fraccion.new(a,b)
	       fnueva.simplificar
	   end
	   def *(fraccion)
	       #fraccion a multiplicar
               raise ArgumentError,'Argumento "fraccion" no debe ser "nulo"' unless fraccion != nil
	       raise ArgumentError,'Argumento "fraccion" no es del tipo Amatista::Fraccion"' unless fraccion.is_a? Amatista::Fraccion
		a = self.numerador * fraccion.numerador 
		b = self.denominador * fraccion.denominador
		fnueva = Amatista::Fraccion.new(a,b)
		fnueva.simplificar
	   end
	    def -(fraccion)
	       #fracción a Restar
	       raise ArgumentError,'Argumento "fraccion" no debe ser "nulo"' unless fraccion != nil
	       raise ArgumentError,'Argumento "fraccion" no es del tipo Amatista::Fraccion"' unless fraccion.is_a? Amatista::Fraccion
	       
	       b = self.denominador * fraccion.denominador
	       a =  self.numerador * fraccion.denominador  - fraccion.numerador * self.denominador
	       fnueva = Amatista::Fraccion.new(a,b)
               fnueva.simplificar
	   end
	   def /(fraccion)
	       #fraccion a multiplicar
               raise ArgumentError,'Argumento "fraccion" no debe ser "nulo"' unless fraccion != nil
	       raise ArgumentError,'Argumento "fraccion" no es del tipo Amatista::Fraccion"' unless fraccion.is_a? Amatista::Fraccion
		a = self.numerador * fraccion.denominador
		b = self.denominador * fraccion.numerador
		fnueva = Amatista::Fraccion.new(a,b)
		fnueva.simplificar
	   end
	   def simplificar()
		raise ArgumentError,'Argumento "fraccion" no debe ser "nulo"' unless self !=nil
	       raise ArgumentError,'Argumento "fraccion" no es del tipo Amatista::Fraccion"' unless self.is_a? Amatista::Fraccion	
		a = self.numerador
		b = self.denominador
		# Valor absoluto para ambos parámetros
		if (a < 0) 
			a= (-1)*a
		end 
		if (b < 0)
			b = (-1)*b
		end
		# Se aplica algoritmo de euclides para ello se calcula qué parámetro es el mayor y el menor
		if (a < b)
			aux= a
			a = b
			b = aux 
		end
		#Algoritmo maximo común divisor
		  resto = a%b
		 while(resto > 0) do
		 	a = b
			b = resto
			resto = a % b
		 end
		 maxcomdiv = b
		 if(maxcomdiv != 0)
	 	 	a = (self.numerador / maxcomdiv)
		 	b = (self.denominador / maxcomdiv)
	      	 	@numerador = a
		 	@denominador = b
          	  end
		 self
	   end	  
	   
   end
end

