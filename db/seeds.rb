# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

25.times do
	user = User.create!(
		first_name: Faker::Name.first_name,
		last_name: Faker::Name.last_name,
		email: Faker::Internet.email,
		city: Faker::Address.city
		)
end

15.times do
	user = Faker::Number.within(User.first.id..User.last.id)
	potin = Potin.create!(
		user_id: user,
		city: User.find(user).city,
		date: Faker::Time.between(30.days.ago, Date.today, :day),
		content: Faker::Lorem.paragraph
		)
end

50.times do
	comment = Comment.create!(
		content: Faker::Lorem.paragraph, 
		potin_id: Faker::Number.within(Potin.first.id..Potin.last.id), 
		user_id: Faker::Number.within(User.first.id..User.last.id)
		)
end

50.times do
	sub_comment = SubComment.create!(
		content: Faker::Lorem.paragraph, 
		comment_id: Faker::Number.within(Comment.first.id..Comment.last.id), 
		user_id: Faker::Number.within(User.first.id..User.last.id)
		)
end

100.times do
	like = Like.create!(
		potin_id: Faker::Number.within(Potin.first.id..Potin.last.id), 
		user_id: Faker::Number.within(User.first.id..User.last.id)
		)
end

40.times do
	tag = Tag.create!(
		title: Faker::Lorem.word
		)
end

Potin.all.each do |potin|
	rand(4).times {
		potin.tags << Tag.find(Faker::Number.between(Tag.first.id, Tag.last.id))
		}
end

40.times do
	private_message = PrivateMessage.create!(
		recipient: User.find(rand(User.first.id..User.last.id)),
		sender: User.find(rand(User.first.id..User.last.id)),
		date: Faker::Time.between(30.days.ago, Date.today, :day),
		topic: Faker::Lorem.word,
		content: Faker::Lorem.paragraph
		)
end
