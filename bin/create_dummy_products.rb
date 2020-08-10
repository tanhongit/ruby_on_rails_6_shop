Product.transaction do
    (1..100).each do |i|
        Product.create(:title => "Product abc #{i}", 
                    :description => "Street #{i} Street Credit cardCredit cardCredit cardCredit cardCredit card",
                    :image_url => "img1.png",
                    :price => 20)
    end
end
# rails runner bin/create_dummy_products.rb