class User < ActiveRecord::Base
  has_many :sent_salutes, foreign_key: "sender_id", class_name: "Salute"
  has_many :received_salutes, foreign_key: "receiver_id", class_name: "Salute"

  validates :username, format: { with: /\A[a-zA-z]+\z/, 
    message: "Username field only allows letters!"}, uniqueness: true
  validates :password_digest, presence: true


end
