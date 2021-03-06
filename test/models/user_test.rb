require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "a user should enter a first name" do
     user = User.new
  		assert !user.save
  		assert !user.errors[:first_name].empty?
  		end 	

  		test "a user should enter a last name" do
     user = User.new
  		assert !user.save
  		assert !user.errors[:last_name].empty?
  		end 	

  		test "a user should enter a profile name" do
     user = User.new
  		assert !user.save
  		assert !user.errors[:profile_name].empty?
  		end 	


  		test "a user should have a unique user name" do 
  			user = User.new 
  			user.profile_name = users(:adrien).profile_name
  			assert !user.save
  			assert !user.errors[:profile_name].empty?
  		end

  		# test "a user should have a profile name without spaces" do 
  		# 	user = User.new 
  		# 	user.profile_name = "my profile with space"
  		# 	assert !user.save 
  		# 	assert !user.errors[:profile_name].empty?
  		# 	assert !user.errors[:profile_name].include?("Must be formatted correctly")
  		# 		end

      test "a user should have a valid profile name" do
        user = User.new(first_name: 'Jason', last_name: 'Seifier', email: 'myname@gmail.com')
        user.password = user.password_confirmation = 'aklsdjadjdw'
        user.profile_name = 'adriennhem1'
        assert !user.valid?
      end

end
