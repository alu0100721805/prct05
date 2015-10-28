 require 'spec_helper'
 require "amatista.rb"

describe Amatista do
 before(:all) do

	@fraccion1 = Amatista::Fraccion.new(2,4)
        @fraccion2 = Amatista::Fraccion.new(1,2) 
	@fraccion1.print
	@fraccion2.print
	(@fraccion1 + @fraccion2).print
	(@fraccion1 * @fraccion2).print
		
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
	    expect(@fraccion1).to respond_to(:print)		
	end
	it " Expectativa sumar fracción " do 
	   expect(@fraccion1).to respond_to(:+) 
	end
	it " Expectativa multiplicar fraccion " do 
	    expect(@fraccion1).to respond_to(:*)
	end 
	it " Expectativa restar fraccion " do
	    expect(@fraccion1).to respond_to(:-)
	end
	
 end

end

