require('minitest/autorun')
require('minitest/rg')
require_relative('../hogwarts.rb')

class TestCustomer < MiniTest::Test
  def setup
    @student1 =Student.new({"first_name" => "Graham", "second_name" => "Cowan", "house" => "Slytherin", "age" => 86})
  end

  def test_age
    assert_equal(86, @student1.age)
  end

end
