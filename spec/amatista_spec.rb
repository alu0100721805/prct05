 require 'spec_helper'
 require "amatista.rb"

describe Amatista do
 before :each do

	@fraccion1 = Amatista::Fraccion.new(2,4)
        @fraccion2 = Amatista::Fraccion.new(1,2) 
  end

 describe " Expectativas Clase Fracción" do

	it " Expectativa Instacia Fraccion " do
	   expect(@fraccion1).to be_truthy
	end 
        
        it " Expectativa acceso atributos de la clase Fraccion" do 
	    expect(@fraccion1).to be_instance_of(Amatista::Fraccion)
            expect(@fraccion1).to respond_to(:numerador)
	   
	end
 end

end

