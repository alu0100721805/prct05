 require 'spec_helper'
 require "amatista.rb"

describe Amatista do
 before(:all) do

	@fraccion1 = Amatista::Fraccion.new(-50,60)
        @fraccion2 = Amatista::Fraccion.new(2,7) 	
	puts  @fraccion1.to_s << " + "  << @fraccion2.to_s << " == (" << (@fraccion1 + @fraccion2).to_s << ")" 
	puts  @fraccion1.to_s << " - "  << @fraccion2.to_s << " == (" << (@fraccion1 - @fraccion2).to_s << ")" 
	puts  @fraccion1.to_s << " * "  << @fraccion2.to_s << " == (" << (@fraccion1 * @fraccion2).to_s << ")" 
	puts  @fraccion1.to_s << " : "  << @fraccion2.to_s << " == (" << (@fraccion1 / @fraccion2).to_s << ")"  
	@solucion1 = Amatista::Fraccion.new(-23,42)
	@solucion2 = Amatista::Fraccion.new(-47,42)
	@solucion3 = Amatista::Fraccion.new(-5,21)
	@solucion4 = Amatista::Fraccion.new(-35,12)
		
  end

 describe " Expectativas Clase Fracción" do

	it " Expectativa Instacia Fraccion " do
	   expect(@fraccion1).to be_truthy
	end 
        
        it " Expectativa acceso atributos de la clase Fraccion" do 
	    expect(@fraccion1).to be_instance_of(Amatista::Fraccion)
            expect(@fraccion1).to respond_to(:numerador)
	    expect(@fraccion1).to respond_to(:denominador)
	   
	end
	it " Expectativa mostrar fracción " do 
	    expect(@fraccion1).to respond_to(:to_s)		
	end
	it " Expectativa sumar fracción " do 
	   expect(@fraccion1).to respond_to(:+) 
	end
	it " Expectativa multiplicar fracción " do 
	    expect(@fraccion1).to respond_to(:*)
	end 
	it " Expectativa restar fracción " do
	    expect(@fraccion1).to respond_to(:-)
	end
	it " Expectativa dividir fracción " do
	    expect(@fraccion1).to respond_to(:/)
	end
	it " Expectativa simplificar fracción " do
	   expect(@fraccion1).to respond_to(:simplificar)
	end
	it " Expectativas verificar los valores de las operaciones " do
	   expect(@fraccion1 + @fraccion2).to be_eq(@solucion1)
           expect(@fraccion1 - @fraccion2).to be_eq(@solucion2)
	   expect(@fraccion1 * @fraccion2).to be_eq(@solucion3)
	   expect(@fraccion1 / @fraccion2).to be_eq(@solucion4)
	end
	
 end

end

