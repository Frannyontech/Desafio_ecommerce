Variation.destroy_all

10.times do |i|
    Variation.create(product_id: Product.all.shuffle[1].id, color_id: Color.all.shuffle[1].id, size_id: Size.all.shuffle[1].id,stock: rand(0..100))
end