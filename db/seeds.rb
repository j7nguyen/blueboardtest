# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = User.create([{email: "joseph@company.com", first_name: "Joseph",
  last_name: "Nguyen", password: 'foobar', company_id: 1}])
  
activities = Activity.create([
  {offer_url: "https://wellness.blueboard.co/offerings/94", img_url: "https://blueboard-production.s3.amazonaws.com/uploads/offering/image/94/normal_Hero_2_Solo.jpg", caption: "13,000 ft Tandem Skydiving Jump | For One"},
  {offer_url: "https://wellness.blueboard.co/offerings/225", img_url: "https://blueboard-production.s3.amazonaws.com/uploads/offering/image/225/normal_hero2.jpg", caption: "Watch Steph Curry Rain Threes with Warriors Tickets | For Two or Four"},
  {offer_url: "https://wellness.blueboard.co/offerings/44", img_url: "https://blueboard-production.s3.amazonaws.com/uploads/offering/image/44/normal_Surfing_hero.jpg", caption: "Introduction to Surfing | For Two"},
  {offer_url: "https://wellness.blueboard.co/offerings/150", img_url: "https://blueboard-production.s3.amazonaws.com/uploads/offering/image/150/normal_HERO_SUNSET.jpg",caption: "Romantic Wine-tasting Sunset Cruise + Dinner Beneath the Sea | For Two"},
  {offer_url: "https://wellness.blueboard.co/offerings/140", img_url: "https://blueboard-production.s3.amazonaws.com/uploads/offering/image/140/normal_better_banner.jpg",caption: "The Personalized Fitness Regimen"},
  {offer_url: "https://wellness.blueboard.co/offerings/37", img_url: "https://blueboard-production.s3.amazonaws.com/uploads/offering/image/37/normal_Extra_300_Hero.jpg",caption: "Thrilling Aerobatic Flight over the Pacific Redwoods"},
  {offer_url: "https://wellness.blueboard.co/offerings/45", img_url: "https://blueboard-production.s3.amazonaws.com/uploads/offering/image/45/normal_Tatcha_Hero.jpg", caption: "TATCHA Kiyome Facial | For Two"},
  {offer_url: "https://wellness.blueboard.co/offerings/51", img_url: "https://blueboard-production.s3.amazonaws.com/uploads/offering/image/51/normal_BayCityBike_GuidedTour.jpg",caption: "Private Guided Bike Tour from San Francisco to Sausalito | For up to Five"},
  {offer_url: "https://wellness.blueboard.co/offerings/128", img_url: "https://blueboard-production.s3.amazonaws.com/uploads/offering/image/128/normal_HERO_2.jpg",caption: "Enjoy a Day of Glassblowing | For Two"},
  {offer_url: "https://wellness.blueboard.co/offerings/168", img_url: "https://blueboard-production.s3.amazonaws.com/uploads/offering/image/168/normal_hero.jpg",caption: "Audi Autocross Challenge + Lunch"},
  {offer_url: "https://wellness.blueboard.co/offerings/92", img_url: "https://blueboard-production.s3.amazonaws.com/uploads/offering/image/92/normal_iFly_Hero2.jpg",caption: "Learn to Fly | Up to Four"},
  {offer_url: "https://wellness.blueboard.co/offerings/61", img_url: "https://blueboard-production.s3.amazonaws.com/uploads/offering/image/61/normal_Hero_2.jpg", caption: "Learn to Salsa Dance | 5 Private Lessons for One or Two"},
  {offer_url: "https://wellness.blueboard.co/offerings/114", img_url: "https://blueboard-production.s3.amazonaws.com/uploads/offering/image/114/normal_Hero.jpg",caption: "The Rock Band Experience by Blue Bear School of Music"},
  {offer_url: "https://wellness.blueboard.co/offerings/42", img_url: "https://blueboard-production.s3.amazonaws.com/uploads/offering/image/42/normal_Group_Class_Hero.jpg",caption: "Fly High in a Private Trapeze and Trampoline Lesson | For Three"},
  {offer_url: "https://wellness.blueboard.co/offerings/38", img_url: "https://blueboard-production.s3.amazonaws.com/uploads/offering/image/38/normal_Great_Lakes_Hero.jpg",caption: "Scenic Open Cockpit Bi-Plane Tour of the Bay Area"},
  {offer_url: "https://wellness.blueboard.co/offerings/165", img_url: "https://blueboard-production.s3.amazonaws.com/uploads/offering/image/165/normal_hero.jpg",caption: "The Ultimate Fishing Adventure | For Two"},
  {offer_url: "https://wellness.blueboard.co/offerings/167", img_url: "https://blueboard-production.s3.amazonaws.com/uploads/offering/image/167/normal_hero5.jpg",caption: "The Art of Photography"},
  {offer_url: "https://wellness.blueboard.co/offerings/192", img_url: "https://blueboard-production.s3.amazonaws.com/uploads/offering/image/192/normal_Hero.jpg",caption: "Discover Your Voice with a Singing Coach"},
  {offer_url: "https://wellness.blueboard.co/offerings/175", img_url: "https://blueboard-production.s3.amazonaws.com/uploads/offering/image/175/normal_hero3.jpg",caption: "Work on Your Golf Game with Lessons and Practice time"},
  {offer_url: "https://wellness.blueboard.co/offerings/48", img_url: "https://blueboard-production.s3.amazonaws.com/uploads/offering/image/48/normal_Hero_1.jpg",caption: "Fitness Boxing Bootcamp"},
  {offer_url: "https://wellness.blueboard.co/offerings/43", img_url: "https://blueboard-production.s3.amazonaws.com/uploads/offering/image/43/normal_WoW_Hero2.jpg",caption: "Introduction to Kiteboarding"},
  {offer_url: "https://wellness.blueboard.co/offerings/83", img_url: "https://blueboard-production.s3.amazonaws.com/uploads/offering/image/83/normal_Dhaya_Hero.jpg",caption: "The Art of Stand Up Comedy	"},
  {offer_url: "https://wellness.blueboard.co/offerings/115", img_url: "https://blueboard-production.s3.amazonaws.com/uploads/offering/image/115/normal_HERO_SAKE.jpg",caption: "Premium Sake Tasting, Appetizers &amp; Izakaya-style Dinner | For Four"},
  {offer_url: "https://wellness.blueboard.co/offerings/187", img_url: "https://blueboard-production.s3.amazonaws.com/uploads/offering/image/187/normal_hero.jpg",caption: "Mountain Biking Half-Day Trip | For Two"},
  {offer_url: "https://wellness.blueboard.co/offerings/64", img_url: "https://blueboard-production.s3.amazonaws.com/uploads/offering/image/64/normal_Hero_1.jpg",caption: "How to DJ 101"},
  {offer_url: "https://wellness.blueboard.co/offerings/180", img_url: "https://blueboard-production.s3.amazonaws.com/uploads/offering/image/180/normal_hero.jpg",caption: "Explore Craft Beer Country | For Four"},
  {offer_url: "https://wellness.blueboard.co/offerings/182", img_url: "https://blueboard-production.s3.amazonaws.com/uploads/offering/image/182/normal_hero1.jpg",caption: "Be a Bladesmith"},
  {offer_url: "https://wellness.blueboard.co/offerings/202", img_url: "https://blueboard-production.s3.amazonaws.com/uploads/offering/image/202/normal_Hero.jpg",caption: "Your Personal Dating Coach"},
  {offer_url: "https://wellness.blueboard.co/offerings/219", img_url: "https://blueboard-production.s3.amazonaws.com/uploads/offering/image/219/normal_Massage-potential1.jpg", caption: "Luxurious Relaxation at Nob Hill Spa | For Two"}
])