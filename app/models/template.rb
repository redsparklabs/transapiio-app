class Template < ActiveRecord::Base
  attr_accessible :body, :from, :name, :subject, :template_type, :text_body, :user_id

  validates :name, presence: true
  validates :subject, presence: true
  validates :body, presence: true
  validates :from, presence: true
  validates :user_id, presence: true
  validates :template_type, presence: true
  validates :text_body, presence: true

  before_validation :replace_text_body

  private
  def replace_text_body
  	if !self.text_body?
  		self.text_body = self.body
  	end
  end



end
