class User < ApplicationRecord
	has_many :potins
	has_many :comments
	has_many :sub_comments
	has_many :likes
	has_many :private_messages
end
