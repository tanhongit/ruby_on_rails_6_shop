Order.transaction do
    (1..100).each do |i|
        Order.create(:name => "Customer #{i}", 
                     :address => "#{i} Street",
                     :email => "customer_#{i}@tanhong.com",
                     :pay_type => "Credit card")
    end
end
# rails runner bin/create_dummy_orders.rb