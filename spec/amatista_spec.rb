 require 'spec_helper'
 require "amatista.rb"

describe Amatista do
 before :each do

	@fraccion = Amatista::Fraccion.new(2,4) 
  end

 describe " Expectativas Clase Fracción" do

	it " Expectativa Instacia Fraccion " do
	   expect(@fraccion).to be_truthy
	end 
 end

end

