class User < ApplicationRecord
	has_secure_password
	validates :email, uniqueness: true, on: :create #possible to update with duplicate value
	validates :user_name, uniqueness: true, on: :create
end
