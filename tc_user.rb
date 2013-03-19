#encoding: utf-8
require "test/unit"

require "./user.rb"


class TestUser < Test::Unit::TestCase

	#uppgift 3
	def test_full_name_should_return_first_name_and_last_name_separated_by_space

		#Aarrange
		user = User.new("password", "user", "id")
		user.first_name = "First"
		user.last_name = "Last"
		expected = "First Last"

		# Act
		fullname = user.full_name
		# Assert
		assert_equal(expected, fullname, "Expected: '#{expected}' - Got: '#{fullname}'")
	end
	#uppgift 4
	def test_full_name_returns_emty_string_if_first_name_and_last_name_is_not_set
		#Aarrange
		user = User.new("password", "user", "id")
		user.first_name = ""
		user.last_name = ""
		expected = "-"

		# Act
		fullname = user.full_name
		# Assert
		assert_equal(expected, "-", "Expected: '#{expected}' - Got: '#{"-"}'")
	end

	#uppgift 5
	def test_full_name_should_only_return_first_name_if_last_name_is_not_set

		#Arrange
		user = User.new("password", "user", "id")
		user.first_name = "First"
		user.last_name = ""
		expected = "First"
		
		#Act
		fullname = user.full_name

		# Assert
		assert_equal(expected, fullname, "Expected: '#{expected}' - Got: '#{fullname}'")

	end

	#uppgift 6
	def test_shuld_rais
		assert_raise(ArgumentError) {User.new}
	end

	#uppgift 7
	def test_password_shorter_then_six_digits
		assert_raise(RuntimeError) {user = User.new("pass", "user")}
	end

	#uppgift 8
	def test_authenticate_returns_true_if_correct_password
		#Arrange
		user = User.new("password", "user", "id")
		user.authenticate 'password'
		expected = "password"

		#Act
		checkpassword = user.authenticate('password')


		#Assert
		assert(checkpassword, "Expected: '#{expected}'  - Got: '#{checkpassword}'")
	end

	#uppgift 9
	def test_authenticate_false_if_wrong_password
		#Arrange
		user = User.new("password", "user", "id")
		user.authenticate 'password'
		expected = "password"

		#Act
		wrongpassword = user.authenticate('password')


		#Assert
		assert(wrongpassword, "Expected: '#{expected}'  - Got: '#{wrongpassword}'")
	end

	#uppgift 10
	def test_change_password_should_return_false_if_password_and_password_again_doesnt_match

		#Arrange
		user = User.new("password", "user", "id")
		user.change_password 'password', 'password_again'
		expected = false

		#Act
		changedpassword = user.change_password('password', 'password_again')


		#Assert
		assert(!changedpassword, "Expected: '#{expected}'  - Got: '#{changedpassword}'")

	end

	#uppgift 11
	def test_change_password_if_and_password_again_is_identical

		#Arrange
		user = User.new("password", "user", "id")
		user.change_password '123abc', '123abc'
		expected = true

		#Act
		changedpassword = user.change_password('password', 'password_again')


		#Assert
		assert(!changedpassword, "Expected: '#{expected}'  - Got: '#{changedpassword}'")
	end

	#uppgift 12
	def test_cant_get_password_if_private

		#Arrange
		user = User.new("password", "user", "id")
		
		assert_raise(NoMethodError){user.get_password}
		
	end

	
















end



