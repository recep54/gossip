class SubComment < ApplicationRecord
	belongs_to :comment
	belongs_to :user
	has_one :potin, through: :comment
end
