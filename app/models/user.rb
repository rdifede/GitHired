class User < ApplicationRecord
  has_secure_password
  has_many :favejobs, :dependent => :delete_all
  has_one :user_detail
  validates :email, confirmation: true,
    presence: true,
    uniqueness: true,
    format:{
      with: /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/,
      message: "That's not an email!"
    }
  validates :name, presence: true

end
