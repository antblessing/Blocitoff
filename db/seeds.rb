include Faker
require 'faker'

    5.times do
        user = User.create!(
        :email => Faker::Internet.email,
        :password => Faker::Name.name
        )
    end
puts "#{User.count} users created!"
