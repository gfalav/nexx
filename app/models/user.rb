class User < ApplicationRecord

	before_save { self.email = email.downcase }
	
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :firstname, presence: true, length: { maximum: 50 }
	validates :lastname, presence: true, length: { maximum: 50 }
	validates :email, presence: true, length: { maximum: 50 }, format: { with: VALID_EMAIL_REGEX }, uniqueness: true
	validates :password, presence: true, length: { minimum: 6, maximum: 50 }

	mount_uploader :photousr, PhotousrUploader

	has_secure_password
end
