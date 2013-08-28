class Template < ActiveRecord::Base

  attr_accessible :body, :from, :name, :subject, :template_type, :text_body, :user_id

  belongs_to :user

  validates :name,  presence: true,
                    format: /^[^ ]+$/
  validates :subject, presence: true
  validates :body, presence: true
  validates :from, presence: true
  validates :user_id, presence: true
  validates :template_type, presence: true
  validates :text_body, presence: true

  before_validation :replace_text_body

  def html_body
    markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, :autolink => true, :space_after_headers => true)
    markdown.render(self.body)
  end
  
  private
  def replace_text_body
  	if !self.text_body?
  		self.text_body = self.body
  	end
  end

end
