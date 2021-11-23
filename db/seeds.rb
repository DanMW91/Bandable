# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
BandMember.destroy_all
Band.destroy_all
User.destroy_all

band_1 = Band.create!({ image_url: 'https://d23.com/app/uploads/2020/06/1180w-600h_01_0834-P2C-21187_R.jpg', name: 'The Flying Dutchmen', current_member_count: 4, location: 'Switzerland', genre: "Rock", bio: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. Vestibulum lacinia arcu eget nulla. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur sodales ligula in libero. Sed dignissim lacinia nunc. Curabitur tortor."})
band_2 = Band.create!({ image_url: 'https://media.pitchfork.com/photos/5e46cb04af0b890008c986d5/2:1/w_2560%2Cc_limit/Black-Sabbath.jpg', name: 'Black Sabbath', current_member_count: 4, location: 'America', genre: "Rock", bio: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. Vestibulum lacinia arcu eget nulla. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur sodales ligula in libero. Sed dignissim lacinia nunc. Curabitur tortor."})
# band_3 = Band.create([{ name: 'Pantera', current_member_count: 4, location: 'America', genre: "Rock", bio: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. Vestibulum lacinia arcu eget nulla. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur sodales ligula in libero. Sed dignissim lacinia nunc. Curabitur tortor."}])



user_1 = User.create!({ avatar_url: 'https://media.newyorker.com/photos/5ad514a5cd7220727ab349eb/master/pass/940425_ra505.jpg', email: 'test@test.com', password: '123123', first_name: 'Jeff', last_name: "Jeffer", location: 'America', genre: "Rock", bio: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. Vestibulum lacinia arcu eget nulla. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur sodales ligula in libero. Sed dignissim lacinia nunc. Curabitur tortor."})
user_2 = User.create!({ avatar_url: 'https://media.newyorker.com/photos/5ad514a5cd7220727ab349eb/master/pass/940425_ra505.jpg', email: 'jeff@jeff.com', password: '123123', first_name: 'Harry', last_name: "Haroldson", location: 'Switzerland', genre: "Rock", bio: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. Vestibulum lacinia arcu eget nulla. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur sodales ligula in libero. Sed dignissim lacinia nunc.Curabitur tortor."})
user_3 = User.create!({ avatar_url: 'https://media.newyorker.com/photos/5ad514a5cd7220727ab349eb/master/pass/940425_ra505.jpg', email: 'dan@dan.com', password: '123123', first_name: 'Dan', last_name: "Haroldson", location: 'Switzerland', genre: "Rock", bio: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. Vestibulum lacinia arcu eget nulla. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur sodales ligula in libero. Sed dignissim lacinia nunc.Curabitur tortor."})
user_4 = User.create!({ avatar_url: 'https://media.newyorker.com/photos/5ad514a5cd7220727ab349eb/master/pass/940425_ra505.jpg', email: 'frank@frank.com', password: '123123', first_name: 'Frank', last_name: "Haroldson", location: 'Switzerland', genre: "Rock", bio: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. Vestibulum lacinia arcu eget nulla. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur sodales ligula in libero. Sed dignissim lacinia nunc.Curabitur tortor."})



band_1.users << user_1
band_1.users << user_2

band_1.save
band_2.users << user_1
band_2.users << user_3
band_2.users << user_4
