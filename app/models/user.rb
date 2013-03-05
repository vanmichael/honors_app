class User < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :email, :password, :password_confirmation, :user_type, :avatar, :cellphone

  has_many :facultyrecs
  has_many :apps
  has_many :committee_member_evaluations
  has_many :interview_evaluations
  
  has_secure_password #Rails 3 helper method to require/encrpypt password and password confirmation using password digest

  before_save { |user| user.email = user.email.downcase }
  before_save :create_remember_token

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },
  					uniqueness: { case_sensitive: false }
  validates :password, length: { minimum: 6 }
  validates :password_confirmation, presence: true

  require 'carrierwave/orm/activerecord'
    mount_uploader :avatar, AvatarUploader

  private

  def create_remember_token
  	 self.remember_token = SecureRandom.urlsafe_base64
  end
end

