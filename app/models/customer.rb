class Customer < ApplicationRecord
	validates :first_name, :last_name, :phone, :email, presence: true
end
