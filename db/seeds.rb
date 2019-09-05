Contact.destroy_all

10.times do 
  generated_first_name = Faker::Name.first_name
  generated_last_name = Faker::Name.last_name

  contact = Contact.new(
                        first_name: generated_first_name,
                        last_name: generated_last_name,
                        email: Faker::Internet.free_email(name: "#{generated_first_name}.#{generated_last_name}"),
                        phone_number: Faker::PhoneNumber.phone_number
                        )

  contact.save
  
  
end


