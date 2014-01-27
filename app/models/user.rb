class User < ActiveRecord::Base
  has_many :portfolios, dependent: :destroy
  has_secure_password
  validates_uniqueness_of :email
end
