require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative 'methods_quiz'

class MethodsQuizTest < MiniTest::Test
	def setup
		@m = Class.new do
     include MethodsQuiz
   	end.new
	end

	def test_has_teen
		assert_equal false, @m.has_teen?(1,3,20)
		assert_equal false, @m.has_teen?(0,5,12)
		assert_equal true, @m.has_teen?(3,5,15)
		assert_equal true, @m.has_teen?(13,15,9)
		assert_equal true, @m.has_teen?(14,16,19)
	end

	def test_not_string
		assert_equal "notfun", @m.not_string?("notfun")
		assert_equal "notfun", @m.not_string?("fun")
	end

	def test_icy_hot
		assert_equal false, @m.icy_hot(5,50)
		assert_equal false, @m.icy_hot(0,62)
		assert_equal false, @m.icy_hot(23,100)
		assert_equal true, @m.icy_hot(-50,150)
		assert_equal true, @m.icy_hot(2560,-1)
		assert_equal true, @m.icy_hot(101,-56)
	end

	def test_closer_to
		assert_equal 3, @m.closer_to(5,3,10)
		assert_equal 16, @m.closer_to(15,20,16)
		assert_equal 0, @m.closer_to(13,15,11)
	end

	def two_as_one
		assert_equal false, @m.closer_to(1,2,4)
		assert_equal true, @m.closer_to(1,2,3)
		assert_equal true, @m.closer_to(3,2,1)
	end

	def test_pig_latinify
		assert_equal "ilalbay", @m.pig_latinify("bilal")
		assert_equal "upcay", @m.pig_latinify("cup")
		assert_equal "appleway", @m.pig_latinify("apple")
		assert_equal "rillgay", @m.pig_latinify("grill")
	end



end
