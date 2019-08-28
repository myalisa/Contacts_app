

contact = Contact.new(
                      first_name: Faker::Name.first_name,
                      last_name: Faker::Name.last_name,
                      email: Faker::Internet.free_email("Jerry.McGuire"),
                      phone_number: "(303) 888-5558"
                      )
                      
contact.save
