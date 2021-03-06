# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Customer.create(email: "test1@test1", last_name: "test1last", read_last_name: "テスト１姓", first_name: "test1name", read_first_name: "テスト１名", phone_number: "testphonenumber", post_code: "test_post_code", prefecture: "test_prefecture", city: "test-city", street: "test-street", password: "testtest", resigned: false)
Customer.create(email: "test2@test2", last_name: "test2last", read_last_name: "テスト２姓", first_name: "test2name", read_first_name: "テスト２名", phone_number: "testphonenumber", post_code: "test_post_code", prefecture: "test_prefecture", city: "test-city", street: "test-street", password: "testtest", resigned: false)
Customer.create(email: "test3@test3", last_name: "test3last", read_last_name: "テスト３姓", first_name: "test3name", read_first_name: "テスト３名", phone_number: "testphonenumber", post_code: "test_post_code", prefecture: "test_prefecture", city: "test-city", street: "test-street", password: "testtest", resigned: false)
Customer.create(email: "test4@test4", last_name: "test4last", read_last_name: "テスト４姓", first_name: "test4name", read_first_name: "テスト４名", phone_number: "testphonenumber", post_code: "test_post_code", prefecture: "test_prefecture", city: "test-city", street: "test-street", password: "testtest", resigned: false)
Customer.create(email: "test5@test5", last_name: "test5last", read_last_name: "テスト５姓", first_name: "test5name", read_first_name: "テスト５名", phone_number: "testphonenumber", post_code: "test_post_code", prefecture: "test_prefecture", city: "test-city", street: "test-street", password: "testtest", resigned: false)
Customer.create(email: "test6@test6", last_name: "test6last", read_last_name: "テスト６姓", first_name: "test6name", read_first_name: "テスト６名", phone_number: "testphonenumber", post_code: "test_post_code", prefecture: "test_prefecture", city: "test-city", street: "test-street", password: "testtest", resigned: false)
Customer.create(email: "test7@test7", last_name: "test7last", read_last_name: "テスト７姓", first_name: "test7name", read_first_name: "テスト７名", phone_number: "testphonenumber", post_code: "test_post_code", prefecture: "test_prefecture", city: "test-city", street: "test-street", password: "testtest", resigned: false)
Admin.create(email: "admin@admin", name: "unko", password: "aaaaaa")
Singer.create(name: "サカナクション")
Label.create(name: "JVCケンウッド・ビクターエンタテインメント")
Genre.create(name: "JPOP")
Item.create(image_id: "0", singer_id: 1, name: "魚図鑑", price: 7560, label_id: 1, genre_id: 1, stock: 99, ready: 0)
Disc.create(item_id: 1, name: "浅瀬")
Disc.create(item_id: 2, name: "中層")
Disc.create(item_id: 2, name: "深層")
Song.create(name: "新宝島", number: 1, disc_id: 1)
Song.create(name: "夜の踊り子", number: 1, disc_id: 1)
Song.create(name: "Aoi", number: 1, disc_id: 1)
