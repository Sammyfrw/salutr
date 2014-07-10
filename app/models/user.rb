class User < ActiveRecord::Base
  has_many :salutes

  validates :username, format: { with: /\A[a-zA-z]+\z/, 
    message: "Username field only allows letters!"}, uniqueness: true
  validates :password_digest, presence: true


end
