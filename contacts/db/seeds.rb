Faker::Config.locale = 'en-US'

100.times do

  contact = Contact.new
  contact.first_name = Faker::Name.first_name
  contact.last_name = Faker::Name.last_name
  contact.email = Faker::Internet.email(contact.first_name)
  contact.phone = Faker::PhoneNumber.phone_number
  contact.company_name = Faker::Company.name
  contact.save!


end

User.create! admin: true, username: "jwo", password: "12345678", password_confirmation: "12345678"
User.create! admin: false, username: "bob", password: "12345678", password_confirmation: "12345678"
