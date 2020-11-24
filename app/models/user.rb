class User < ApplicationRecord
  has_secure_password

  # validations here
  # eg: validates :name, :email, :password, presence: true
  # validates :email, uniqueness: true
  # validates :password, confirmation: true
  validates :name, :email, :password, presence: true
  validates :email, uniqueness: true
  validates :password, confirmation: true

  # relationships
  has_many :sap_requests
  belongs_to :role
end
