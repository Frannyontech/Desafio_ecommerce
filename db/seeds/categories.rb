Category.create(name: "Smartphones")
Category.create(name: "Shoes")
Category.create(name: "Accesories")

Category.all.each do |category|
    3.times do |i|
        Category.create(
            name: "Children #{i}",
            category_id: category.id)
    end
end