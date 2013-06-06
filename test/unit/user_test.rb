require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup 
    @user = User.new
  end

  test "user must enter an email address" do
    # devise handles email presence verification
    assert !@user.save
    assert !@user.errors[:email].empty?, @user.errors.inspect
  end

  test "user must enter a name" do 
    assert !@user.save
    assert !@user.errors[:name].empty?, @user.errors.inspect    
  end

  test "user must enter a phone number" do 
    assert !@user.save
    assert !@user.errors[:phone].empty?, @user.errors.inspect   
  end

  test "user must enter a valid phone number" do 
    @user.phone = "bad"
    assert !@user.save
    assert @user.errors[:phone].include?("is an invalid number"), @user.errors.inspect   
  end

  test "user must enter a company name" do
    assert !@user.save
    assert !@user.errors[:company_name].empty?, @user.errors.inspect
  end
end
