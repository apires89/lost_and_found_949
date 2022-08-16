puts"cleaning DB"
Item.destroy_all

puts "seeding DB"
Item.create(name: "Laptop", description: "Macbook", category: "electronic",date_found: Date.today, address: "Porto")
Item.create(name: "Jacket", description: "adidas blue jacket", category: "clothing",date_found: Date.today, address: "Porto")
Item.create(name: "engagement ring", description: "cheap one", category: "personal",date_found: Date.today, address: "Porto")

puts "done!"
