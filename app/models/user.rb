class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :name, :phone, :company_name, :remember_me
  # attr_accessible :title, :body

  #Validation
  validates :name, presence: true

  validates :phone, presence: true,
                    :phony_plausible => true

  validates :company_name, presence: true
end
