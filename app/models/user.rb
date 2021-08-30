class User < ApplicationRecord
  validates :username, presence: true, length: { minimum:3, maximim:15 }, uniqueness: true
  has_secure_password
end
