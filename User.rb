#encoding: utf-8

class User

		attr_accessor :password, :username, :id, :first_name, :last_name, :email

	def initialize(password, username, id = "")
		if password.length > 0 and password.length < 6
			raise 'password must be longer then 6 digits'
		end

		@password = password
		@username = username
		@id = id
		
	end

	def to_string

	end

	def full_name 
		
		if @first_name == "" and @last_name == ""
		 return "-"

		elsif @last_name == ""
			return @first_name
		else 
			return "#{@first_name} #{@last_name}"
		end
		
	end

	def change_password(password, password_again)
		if password == password_again
			@old_password = @password
			@password = password
			return true
		else 
			return false
		end

	end

	

	def authenticate(password)
		if password == @password
			return true
		else 
			return false	
		end

		Private
	def get_password

		return @password
		

	end

		


		
	end
end



