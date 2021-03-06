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
 	assert_kind_of(Amatista::Fraccion,@fraccion1)
	assert_instance_of(Amatista::Fraccion,@fraccion1)
	assert_kind_of(Numeric,@fraccion1.numerador)
        assert_kind_of(Numeric,@fraccion1.denominador)
	assert_instance_of(Fixnum,@fraccion1.numerador)
	assert_instance_of(Fixnum,@fraccion1.denominador)
	assert_kind_of(Amatista::Fraccion,(@fraccion1 + @fraccion2))
	assert_instance_of(Amatista::Fraccion,(@fraccion1 + @fraccion2))
  end
  def test_failure
	assert_raise ZeroDivisionError do
	 fraccionerr = Amatista::Fraccion.new(1,0) 
	end
	 assert_raise ArgumentError do
	    fraccionerr = Amatista::Fraccion.new(1,nil) 
	end
	
  end
end
