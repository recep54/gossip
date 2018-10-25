class Potin < ApplicationRecord
	has_and_belongs_to_many :tags
	belongs_to :user
	has_many :likes
	has_many :comments
	has_many :subcomments, through: :comments
end
