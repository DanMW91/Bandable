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


crumb = Band.create!({ image_url: 'https://images.complex.com/complex/images/c_scale,f_auto,q_auto,w_1920/fl_lossy,pg_1/dm07rs3emmj5waybj1wt/crumb?fimg-client-default', name: 'Crumb', current_member_count: 4, location: 'Brooklyn', genre: "Rock", bio: "Crumb is an American indie rock band. The group is a collaboration of Brooklyn-based musicians Lila Ramani (guitar, vocals), Jesse Brotter (bass, vocals), Bri Aronow[2] (synthesizers, keyboard, saxophone), and Jonathan Gilad (drums), who met while attending Tufts University."})
bachelor = Band.create!({ image_url: 'https://images.complex.com/complex/images/c_scale,f_auto,q_auto,w_1920/fl_lossy,pg_1/lxbsfs9dtczsfdy495yd/bachelor?fimg-client-default', name: 'Bachelor', current_member_count: 2, location: 'Los Angeles', genre: "Alternative", bio: "Last year, the minds behind Jay Som (Melina Duterte) and Palehound (Ellen Kempner) rented a house in the California canyons. Topanga Canyon, to be precise—a winding, weaving little hippie hideout with a long creative history."})
drug_store_romeos = Band.create!({ image_url: 'https://images.complex.com/complex/images/c_crop,h_3189,w_4251,x_25,y_1053/c_scale,f_auto,q_auto,w_1920/fl_lossy,pg_1/tyrcjgymy4ph8vgu8sb4/drug-store-reomeos?fimg-client-default', name: 'Drug Store Romeos', current_member_count: 3, location: 'London', genre: "Alternative", bio: "Drug Store Romeos formed at college in nearby Farnborough when childhood friends Jonny and Charlie pinned an ad about finding a bassist for their new band to the school's notice board – fate played its part with Sarah replying and quickly proving herself a better vocalist than either of them."})
chai = Band.create!({ image_url: 'https://images.complex.com/complex/images/c_scale,f_auto,q_auto,w_1920/fl_lossy,pg_1/wuyrrirv74khybhwutot/chai?fimg-client-default', name: 'Chai', current_member_count: 4, location: 'Nagoya', genre: "Rock", bio: "Chai are a Japanese rock band from Nagoya. The group consists of four women—Mana, Kana, Yuuki and Yuna. Formed in 2012, the band released their debut studio album Pink in 2017"})

# crumb band
lila = User.create!({ avatar_url: 'https://cdn2.pitchfork.com/longform/914/crumb2.jpg', email: 'lila@lila.com', password: '123123', first_name: 'Lila', last_name: "Ramani", location: 'Brooklyn', genre: "Rock", bio: "Lead singer and guitarist of Crumb."})
jesse = User.create!({ avatar_url: 'https://buzzbands.la/wp-content/gallery/crumb-lodgeroom-sw/Crumb-15.jpg', email: 'jesse@jesse.com', password: '123123', first_name: 'Jesse', last_name: "Brotter", location: 'Brooklyn', genre: "Rock", bio: "Bassist and vocalists. Co-founder of Crumb."})
bri = User.create!({ avatar_url: 'http://wrvu.org/wp-content/uploads/2021/10/DSC01800-scaled.jpg', email: 'bri@bri.com', password: '123123', first_name: 'Bri', last_name: "Aronow", location: 'Brookln', genre: "Rock", bio: "Synthezier, keyboard, saxophone. Met Johnny while in college."})
jonathan = User.create!({ avatar_url: 'https://static.wixstatic.com/media/b47582_04591e7f98614f6a8f87a680bc0b7a5d~mv2.jpg/v1/fill/w_1512,h_1512,al_c,q_90/Jonathan%2520Gilad%25202021_edited.jpg', email: 'jonathan@jonathan.com', password: '123123', first_name: 'Jonathan', last_name: "Gilad", location: 'Brooklyn', genre: "Rock", bio: "Drummer. The one that makes your heat beat faster!"})
[lila, jesse, bri, jonathan].each do |member|
  crumb.users << member
end
crumb.save


# bachelor band
melina = User.create!({ avatar_url: 'https://static01.nyt.com/images/2017/03/26/arts/26GUIDE1/26GUIDE1-superJumbo.jpg', email: 'melina@melina.com', password: '123123', first_name: 'Melina', last_name: "Duterte", location: 'Los Angeles', genre: "Alternative", bio: "American, Los Angeles-based, DIY and bedroom-pop singer, songwriter, multi-instrumentalist and producer."})
ellen = User.create!({ avatar_url: 'https://media.gettyimages.com/photos/ellen-kempner-lead-singer-with-palehound-performed-with-her-band-at-picture-id495398338?s=612x612', email: 'ellen@ellen.com', password: '123123', first_name: 'Ellen', last_name: "Kempner", location: 'Los Angeles', genre: "Alternative", bio: "Ellen Kempner (born June 10, 1994),[7] is the daughter of Janet and Jim Kempner.[8] Together with a younger sister, she grew up in Westport, Connecticut,[5] where she attended the Staples High School.[9] She developed an interest in playing music at an early age and had guitar lessons from her father."})
[melina, ellen].each do |member|
  bachelor.users << member
end
bachelor.save

# drug store romeos band
charlie = User.create!({ avatar_url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ5jEfJPLqHHOHzfonqzRPmukdvb-rHcLtB8A&usqp=CAU', email: 'charlie@charlie.com', password: '123123', first_name: 'Charlie', last_name: "Henderson", location: 'London', genre: "Alternative", bio: "Guitarist. Co-founder of the band. Hardcore 80s music fan."})
johnny = User.create!({ avatar_url: 'https://underground-england.com/wp-content/uploads/2020/08/Drug-Store-Romeo-scaled-e1597060723419.jpg', email: 'johnny@johnny.com', password: '123123', first_name: 'Johnny', last_name: "Gilbert", location: 'London', genre: "Alternative", bio: "Co-founder, Drug Store Romeos. Play a lot of instruments and dream lots of dreams. Welcome to our world."})
sarah = User.create!({ avatar_url: 'https://i.ytimg.com/vi/2HNe6j-JbG8/maxresdefault.jpg', email: 'sarah@sarah.com', password: '123123', first_name: 'Sarah', last_name: "Downey", location: 'London', genre: "Alternative", bio: "When I put an album on, it'll change the weather, and it’ll change the person I am, and it’ll change the walls that surround me."})
[charlie, johnny, sarah].each do |member|
  drug_store_romeos.users << member
end
drug_store_romeos.save

# chai band
mana = User.create!({ avatar_url: 'https://chai-band.com/global/resource/images/img-main-mana.png', email: 'mana@mana.com', password: '123123', first_name: 'Mana', last_name: "S", location: 'Nagoya', genre: "Rock", bio: "Twinning with Kana. Bringing back girl power."})
kana = User.create!({ avatar_url: 'https://chai-band.com/global/resource/images/img-main-kana-sp.png', email: 'kana@kana.com', password: '123123', first_name: 'Kana', last_name: "S", location: 'Nagoya', genre: "Rock", bio: "Older twin so therefore the more cynical one. Rock on."})
yuna = User.create!({ avatar_url: 'https://chai-band.com/global/resource/images/img-main-yuna.png', email: 'yuna@yuna.com', password: '123123', first_name: 'Yuna', last_name: "T", location: 'Nagoya', genre: "Rock", bio: "I'm Yina. Love all sorts of music. Happy to see J-pop taking over the world."})
yuuki = User.create!({ avatar_url: 'https://chai-band.com/global/resource/images/img-main-yuuki.png', email: 'yuuki@yuuki.com', password: '123123', first_name: 'Yuuki', last_name: "J", location: 'Nagoya', genre: "Rock", bio: "I love to draw while playing the bass. If you like what you see on our albums, thank my brain. If you don't kiss my ass :)"})
[mana, kana, yuna, yuuki].each do |member|
  chai.users << member
end
chai.save

# next band

User.all.each do |user|
  user.band_members.each do |member_record|
    member_record.is_member = true
    member_record.save!
  end
end

tester = User.create!({ avatar_url: 'https://www.digitalmusicnews.com/wp-content/uploads/2020/10/musician-guitar-urban-750.jpg', email: 'test@test.com', password: '123123', first_name: 'Test', last_name: "Testerson", location: 'Munich', genre: "Rock", bio: "Been testing since before testing was cool."})
