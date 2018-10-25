class Tag < ApplicationRecord
	has_and_belongs_to_many :potins
	has_many :users, through: :potins
end
