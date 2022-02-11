require 'faker'


10.times do

    User.create(
        name: Faker::FunnyName.unique.two_word_name, 
        username: Faker::Lorem.unique.word, 
        password: Faker::Barcode.isbn
    )

end