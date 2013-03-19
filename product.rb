#encoding: utf-8

class Product

		attr_accessor :id, :name, :price, :description

	def initialize(id, name, price, description = "N/A")
		
		@id = id
		@name = name
		@price = price
		@description = description
	end

	def to_string

	end

end

		
