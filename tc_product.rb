#encoding: utf-8
require "test/unit"

require "./product.rb"


class TestProduct < Test::Unit::TestCase

	#uppgift 13
	def test_should_not_initialize_a_product_object_without_id_name_or_price

	assert_raise(ArgumentError) {Product.new}	
	
	end


	#uppgift 14
	def test_control_that_discription_puts_to_NA_if_you_do_not_set_description_when_you_initialize_a_product_objekt

		#Arrange
		product = Product.new("book", "Durp", "12£")
		 
		expected = "N/A"

		#Act
		
		test_default = product.description


		#Assert
		assert_equal(expected, test_default, "expected '#{expected}' Got: '#{test_default}'" )



	end











end