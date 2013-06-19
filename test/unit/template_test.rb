require 'test_helper'

class TemplateTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @template = Template.new
  end

  test "name is required" do
  	assert !@template.save
  	assert !@template.errors[:name].empty?, @template.inspect
  end

  test "subject is required" do
  	assert !@template.save
  	assert !@template.errors[:subject].empty?, @template.inspect
  end

  test "body is required" do
  	assert !@template.save
  	assert !@template.errors[:body].empty?, @template.inspect
  end

  test "from is required" do
  	assert !@template.save
  	assert !@template.errors[:from].empty?, @template.inspect
  end

  test "user id is required" do
  	assert !@template.save
  	assert !@template.errors[:user_id].empty?, @template.inspect
  end

  test "template type is required" do
  	assert !@template.save
  	assert !@template.errors[:template_type].empty?, @template.inspect
  end

  test "if text body is blank, use body content" do
  	@template.body = "Test Body"
  	assert !@template.save
  	assert @template.text_body == @template.body
  end

  test "if text body contains content, do not replace with body content" do
  	@template.body = "Test Body"
  	@template.text_body = "Test Text Body"
  	assert !@template.save
  	assert @template.text_body != @template.body
  end


end
