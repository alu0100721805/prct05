require "amatista/version"

module Amatista
   class Fraccion
  	 # Método inicializar clase Fracción
	   def initialize(numerador, denominador) 
		#atributos
	       raise ArgumentError,'Argumento "numerador" no es del tipo entero"' unless numerador.is_a? Integer
	       raise ArgumentError,'Argumento "denominador" no es del tipo entero"' unless denominador.is_a? Integer
	       @numerador = numerador
	       @denominador = denominador
	   end	
	  
   end
end
