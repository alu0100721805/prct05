require 'test/unit'
require 'lib/amatista.rb'

class TestFraccion < Test::Unit::TestCase
  def setup
 	@fraccion1 = Amatista::Fraccion.new(2,4)
	@fraccion2 = Amatista::Fraccion.new(1,4)
  end
  def tear_down
    # Acciones que se ejecutan despues de correr las pruebas
  end
  def test_simple
   	
  end
  def test_type_check
 
  end
  def test_failure

  end
end