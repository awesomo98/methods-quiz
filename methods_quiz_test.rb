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
		assert_equal 
	end

	def test_icy_hot
		assert_equal false, @m.icy_hot(5,50)
		assert_equal false, @m.icy_hot(0,62)
		assert_equal false, @m.icy_hot(23,100)
		assert_equal true, @m.icy_hot(-50,150)
		assert_equal true, @m.icy_hot(2560,-1)
		assert_equal true, @m.icy_hot(99,-56)
	end

end
