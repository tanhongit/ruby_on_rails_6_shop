User.transaction do
    (1..55).each do |i|
        User.create(:name => "tanhong#{i}",
                    :password => "tanhong#{i}",
                    :password_confirmation => "tanhong#{i}")
    end
end
# User.create(name: 'dave', password: 'secret', password_confirmation: 'secret')
# rails runner bin/create_dummy_users.rb