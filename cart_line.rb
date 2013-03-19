#encoding: utf-8


class CartLine

	attr_accessor :product, :number_of_items

	def to_string

	end 


	def add_items(numbers)

	end

	

	def remove_item(numbers)

	end

	

	def calculate_line_totals

	end


end



class Cart

	attr_accessor :cart_lines

	def to_string

	end


	def add_to_cart(product, amount)

	end


	def remove_from_cart(product, amount)

	end


	def add_shipping(amount)

	end


	def calculate_totals 

	end


	def show_cart

	end



end