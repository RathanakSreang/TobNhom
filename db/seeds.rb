30.times do
  User.create name: Faker::Name.name
end

users = User.all.limit 5
users.each do |user|
  user.create_user_contact phone: "#{Faker::PhoneNumber.cell_phone},#{Faker::PhoneNumber.cell_phone}",
                                 social: "#{Faker::Internet.url('facebook.com')}",
                                 address1: Faker::Address.street_address,
                                 address2: Faker::Address.secondary_address,
                                 province: Faker::Address.city
end

# users = User.all.limit 5

require "securerandom"
users.each do |user|
  # user.user_tobs.create role: :normal
  user.tobs.create name: Faker::Name.name,
                      domain: Faker::Internet.domain_word,
                      barcode: "ABCD",
                      status: true,
                      description: Faker::Lorem.paragraph,
                      started_at: Faker::Date.forward(1),
                      expired_at: Faker::Date.forward(30),
                      key: SecureRandom.uuid,
                      remote_logo_url: Faker::Company.logo
end

Tob.all.each do |tob|
  3.times do
    tob.tob_sliders.create title: Faker::Name.title,
                         url: Faker::Internet.url('tobnhom.com.kh'),
                         description: Faker::Lorem.paragraph.first(100),
                         remote_image_url: Faker::Avatar.image
  end
end

Tob.all.each do |tob|
  tob.create_tob_contact email: Faker::Internet.email,
                        phone: "#{Faker::PhoneNumber.cell_phone},#{Faker::PhoneNumber.cell_phone}",
                        social: "#{Faker::Internet.url('facebook.com')}",
                        address1: Faker::Address.street_address,
                        address2: Faker::Address.secondary_address,
                        province: Faker::Address.city,
                        latitude: Faker::Address.latitude,
                        longitude: Faker::Address.longitude
end

10.times do
  Branch.create name: Faker::Company.name,
                url: Faker::Internet.url
end

10.times do
  Category.create name: Faker::Commerce.department
end

Tob.all.each do |tob|
  10.times do |num|
    user_id = tob.users.order("RAND()").first.id
    branch_id = Branch.order("RAND()").first.id
    category_id = Category.order("RAND()").first.id
    tob.products.create user_id: user_id,
                        branch_id: branch_id,
                        category_id: category_id,
                        name: Faker::Commerce.product_name,
                        code: "#{tob.barcode}-#{num}",
                        sku: Faker::Internet.slug,
                        price: Faker::Commerce.price,
                        qty: Faker::Number.between(1, 100),
                        status: true,
                        condition: "New",
                        discount: Faker::Number.decimal(2),
                        keyword: Faker::Commerce.department(5)
  end

end

Product.all.each do |product|
  product.create_property description: Faker::Lorem.paragraph(10)
end

Product.all.each do |product|
  3.times do
   product.product_images.create remote_image_url: Faker::Avatar.image
  end
end

User.all.each do |user|
  product_id = Product.order("RAND()").first.id
  user.review.create content: Faker::Lorem.paragraph(5),
                    product_id: product_id
end

User.all.each do |user|
  product_id = Product.order("RAND()").first.id
  user.rates.create count: Faker::Number.between(1, 5),
                    product_id: product_id
end

User.all.each do |user|
  product_id = Product.order("RAND()").first.id
  user.wish_lists.create product_id: product_id
end

10.times do
  Promotion.create title: Faker::Name.name,
                  url: Faker::Internet.url,
                  description: Faker::Lorem.paragraph,
                  started_at: Faker::Date.forward(1),
                  endded_at: Faker::Date.forward(30)
end
