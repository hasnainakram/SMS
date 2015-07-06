class User < ActiveRecord::Base
  authenticates_with_sorcery!

 # validates :password, length: { minimum: 3 }
  #validates :password, confirmation: true
  #validates :password_confirmation, presence: true

  #validates :email, uniqueness: true
before_save {self.email = email.downcase }
validates :name,presence: true,length: { maximum: 50 }
VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
validates :email,presence: true,length: { maximum: 255 },
format: { with: VALID_EMAIL_REGEX },
uniqueness: { case_sensitive: false }
validates :password, confirmation: true
validates :password_confirmation, presence: true

end

