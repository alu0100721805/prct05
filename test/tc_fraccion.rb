require 'test/unit'
require 'lib/amatista.rb'

class TestFraccion < Test::Unit::TestCase
  def setup
 	@fraccion1 = Amatista::Fraccion.new(2,4)
	@fraccion2 = Amatista::Fraccion.new(1,4)
        @fraccion3 = Amatista::Fraccion.new(8,4)
  end
  def tear_down
    # Acciones que se ejecutan despues de correr las pruebas
  end
  def test_simple
   	assert_equal( (@fraccion1 + @fraccion2).to_s,"3/4") 
	assert_equal( (@fraccion1 - @fraccion2).to_s, "1/4")
	assert_equal( (@fraccion2 - @fraccion1).to_s, "-1/4")
	assert_equal( (@fraccion1 / @fraccion2).to_s, "2")
	assert_equal( (@fraccion2 / @fraccion1).to_s, "1/2")
	assert_equal( (@fraccion2 * @fraccion3).to_s, "1/2")
	assert_equal( (@fraccion3 * @fraccion2).to_s, "1/2")
  end
  def test_type_check
 
  end
  def test_failure

  end
end
