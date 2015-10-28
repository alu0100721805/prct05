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
	   def print()
		if (@numerador % @denominador != 0) then
		puts @numerador.to_s << "/" << @denominador.to_s 
		else
			puts (@numerador / @denominador).to_s
		end
	   end
	   def +(fraccion)
	       #fracción a sumar
	       raise ArgumentError,'Argumento "fraccion" no debe ser "nulo"' unless fraccion != nil
	       raise ArgumentError,'Argumento "fraccion" no es del tipo Amatista::Fraccion"' unless fraccion.is_a? Amatista::Fraccion
	       
	       b = self.denominador * fraccion.denominador
	       a =  self.numerador * fraccion.denominador  + fraccion.numerador * self.denominador
	       fnueva = Amatista::Fraccion.new(a,b)
	   end
	   def *(fraccion)
               raise ArgumentError,'Argumento "fraccion" no debe ser "nulo"' unless fraccion != nil
	       raise ArgumentError,'Argumento "fraccion" no es del tipo Amatista::Fraccion"' unless fraccion.is_a? Amatista::Fraccion
		a = self.numerador * fraccion.numerador 
		b = self.denominador * fraccion.denominador
		fnueva = Amatista::Fraccion.new(a,b)

	   end
	   
   end
end

