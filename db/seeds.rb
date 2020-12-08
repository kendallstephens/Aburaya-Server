# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

cat1 = Category.create(name: 'Chicken')
cat2 = Category.create(name: 'Vegetarian')
cat3 = Category.create(name: 'Sides')
cat4 = Category.create(name: 'Drinks')

items = [
    {
        'name':  'Fried Chicken',
        'image': 'https://raster-static.postmates.com/?height=1280&url=https%3A%2F%2Fitems-static.postmates.com%2Fuploads%2Fmedia%2F8cc9c131-ca66-4a20-9f64-4fddfb2104ac%2Foriginal.jpg%3Fv%3D63751897667&width=1280',
        'description': '4 pieces of shio-koji marinated, boneless & skinless chicken thighs battered with potato starch and fried in soybean oil. Served with cabbage and miso ranch dressing.',
        'price': 10.00,
        'category_id': cat1.id
    },
    {
        'name':  'Fried Chicken Sando',
        'image': 'https://raster-static.postmates.com/?height=1280&url=https%3A%2F%2Fitems-static.postmates.com%2Fuploads%2Fmedia%2F4910adc0-8c2c-4198-9095-c894790d6d21%2Foriginal.jpg%3Fv%3D63751897699&width=1280',
        'description': 'Fried chicken on texas toast with avocado, greens, onion, tomato, slaw, and our famous aburaya BBQ sauce.',
        'price': 12.00,
        'category_id': cat1.id
    },
    {
        'name':  'Oyakodon',
        'image': 'https://raster-static.postmates.com/?height=640&url=https%3A%2F%2Fitems-static.postmates.com%2Fuploads%2Fmedia%2F7d7e28ae-a1c9-40d8-8e08-37970ff70c5d%2Foriginal.jpg%3Fv%3D63751897733&width=640',
        'description': '3 pieces of fried chicken simmered with organic eggs and onions in dashi broth and mentsuyu. Served over rice with a side of mixed greens.',
        'price': 12.00,
        'category_id': cat1.id
    },
    {
        'name':  'Fried Vegan Drumstix',
        'image': 'https://raster-static.postmates.com/?height=1280&url=https%3A%2F%2Fitems-static.postmates.com%2Fuploads%2Fmedia%2F41917ed6-a18b-470c-919f-af5f112db6c2%2Foriginal.jpg%3Fv%3D63751897832&width=1280',
        'description': 'Soy-based faux chicken fried and served with cabbage and miso ranch dressing.',
        'price': 12.00,
        'category_id': cat1.id
    },
    {
        'name':  'Fried Tofu',
        'image': 'https://raster-static.postmates.com/?height=1280&url=https%3A%2F%2Fitems-static.postmates.com%2Fuploads%2Fmedia%2Fdc266102-fc32-4e96-be54-690338edcb72%2Foriginal.jpg%3Fv%3D63751897809&width=1280',
        'description': 'Soy-based faux chicken fried and served with cabbage and miso ranch dressing.',
        'price': 11.00,
        'category_id': cat3.id 

    },
    {
        'name':  'Poke-Don',
        'image': 'https://raster-static.postmates.com/?height=1280&url=https%3A%2F%2Fitems-static.postmates.com%2Fuploads%2Fmedia%2F7ee55f36-5d55-4368-b76b-0cfd5c5e9557%2Foriginal.jpg%3Fv%3D63751897760&width=1280',
        'description': 'Yellowfin tuna marinated in shoyu-koji sesame sauce. Served over rice with a side of mixed greens.',
        'price': 12.00,
        'category_id': cat1.id 

    },
    {
        'name':  'Aburaya Tater Tots',
        'image': 'https://raster-static.postmates.com/?height=1280&url=https%3A%2F%2Fitems-static.postmates.com%2Fuploads%2Fmedia%2Feb125df8-28b9-4cac-8018-92b7aaaa963a%2Foriginal.jpg%3Fv%3D63751897939&width=1280',
        'description': 'BBQ sauce, orange honey aioli, katsuo bushi (fish flakes), and nori.',
        'price': '6.00',
        'category_id': cat3.id 

    },
    {
        'name':  'Steamed Broccoli',
        'image': 'https://raster-static.postmates.com/?height=1280&url=https%3A%2F%2Fitems-static.postmates.com%2Fuploads%2Fmedia%2F563a7348-47fd-4ea4-a6e6-96236f7815b2%2Foriginal.jpg%3Fv%3D63751897889&width=1280',
        'description': 'Lemon, olive oil, and shichimi. Served chilled with a side of miso ranch dressing.',
        'price': 5.00,
        'category_id': cat3.id 
    },
    {
        'name':  'Fried Cauliflower',
        'image': 'https://raster-static.postmates.com/?height=1280&url=https%3A%2F%2Fitems-static.postmates.com%2Fuploads%2Fmedia%2Fe09a3d84-4290-4b65-8910-4c8ac661760f%2Foriginal.jpg%3Fv%3D63751897859&width=1280',
        'description': 'Tossed with a shichimi spice blend.',
        'price': 5.00,
        'category_id': cat3.id 
    },
    {
        'name':  'Orion',
        'image': 'https://raster-static.postmates.com/?height=1280&url=https%3A%2F%2Fitems-static.postmates.com%2Fuploads%2Fmedia%2F88d7b5ea-72e3-45be-9999-d874c90c0d70%2Foriginal.jpeg%3Fv%3D63753531099&width=1280',
        'description': 'ABV 5%',
        'price': 6.00,
        'category_id': cat4.id
    },
    {
        'name':  'Sapporo Premium Lager',
        'image': 'https://raster-static.postmates.com?height=1280&url=https%3A%2F%2Fitems-static.postmates.com%2Fuploads%2Fmedia%2Ff73618e8-53f8-47b9-89ce-993eca3ec66b%2Foriginal.jpeg%3Fv%3D63753531143&width=1280',
        'description': 'ABV 4.9%',
        'price': 8.00,
        'category_id': cat4.id
    },
    {
        'name':  'Echigo Flying IPA',
        'image': 'https://raster-static.postmates.com?height=1280&url=https%3A%2F%2Fitems-static.postmates.com%2Fuploads%2Fmedia%2Fdc8ae878-5a73-42ff-8edd-7557195ca999%2Foriginal.jpeg%3Fv%3D63753531277&width=1280',
        'description': 'ABV 5.5 %',
        'price': 8.00,
        'category_id': cat4.id
    },
    {
        'name':  'Kiku Masamune Dry Sake',
        'image': 'https://raster-static.postmates.com?height=1280&url=https%3A%2F%2Fitems-static.postmates.com%2Fuploads%2Fmedia%2F447ed3a5-40d9-4de7-888b-59d26c13bf88%2Foriginal.jpeg%3Fv%3D63753531326&width=1280',
        'description': 'ABV 14%',
        'price': 6.00,
        'category_id': cat4.id
    },
    {
        'name':  'Underwood Pinot Noir',
        'image': 'https://raster-static.postmates.com/?height=1280&url=https%3A%2F%2Fitems-static.postmates.com%2Fuploads%2Fmedia%2F93f613b5-514e-455a-a942-c00f9ed81039%2Foriginal.jpeg%3Fv%3D63753531474&width=1280',
        'description': 'ABV 13%',
        'price': 7.00,
        'category_id': cat4.id
    }
]
    items.each {|item| Item.create(item)}

    user1 = User.create(first_name: 'kendall', last_name: 'stephens', email: 'kendall@test.com', phone_number:'1234567890', password_digest:'abc123')