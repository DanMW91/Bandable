
Message.destroy_all
BandMember.destroy_all
Band.destroy_all
User.destroy_all






black_sabbath = Band.create!({ spotify_embed_url: 'https://open.spotify.com/embed/artist/5M52tdBnJaKSvOpJGz8mfZ', name: 'Black Sabbath', current_member_count: 4, location: 'London, England', genre: "Heavy Metal", bio: "Black Sabbath is credited with creating heavy metal. The success of their first two albums - Black Sabbath and Paranoid - marked a paradigm shift in the world of rock. Not until Black Sabbath upended the music scene did the term “heavy metal” enter the popular vocabulary to describe the denser, more thunderous offshoot of rock over which they presided."})
black_sabbath_photo = URI.open('https://upload.wikimedia.org/wikipedia/commons/thumb/4/42/Sabs.jpg/2560px-Sabs.jpg')
black_sabbath.photo.attach(io: black_sabbath_photo, filename:"#{Band.last.name}.jpeg", content_type: 'image/png')
crumb = Band.create!({ spotify_embed_url: 'https://open.spotify.com/embed/artist/4kSGbjWGxTchKpIxXPJv0B', name: 'Crumb', current_member_count: 4, location: 'Brooklyn, USA', genre: "Rock", bio: "Crumb is an American indie rock band. The group is a collaboration of Brooklyn-based musicians Lila Ramani (guitar, vocals), Jesse Brotter (bass, vocals), Bri Aronow[2] (synthesizers, keyboard, saxophone), and Jonathan Gilad (drums), who met while attending Tufts University."})
crumb_photo = URI.open('https://images.complex.com/complex/images/c_scale,f_auto,q_auto,w_1920/fl_lossy,pg_1/dm07rs3emmj5waybj1wt/crumb?fimg-client-default')
crumb.photo.attach(io: crumb_photo, filename:"#{Band.last.name}.jpeg", content_type: 'image/png')
bachelor = Band.create!({ spotify_embed_url: 'https://open.spotify.com/embed/artist/7B1OPA8Ttxfv3XBDCkw24E', name: 'Bachelor', current_member_count: 2, location: 'Los Angeles, USA', genre: "Alternative", bio: "Last year, the minds behind Jay Som (Melina Duterte) and Palehound (Ellen Kempner) rented a house in the California canyons. Topanga Canyon, to be precise—a winding, weaving little hippie hideout with a long creative history."})
bachelor_photo = URI.open('https://images.complex.com/complex/images/c_scale,f_auto,q_auto,w_1920/fl_lossy,pg_1/lxbsfs9dtczsfdy495yd/bachelor?fimg-client-default')
bachelor.photo.attach(io: bachelor_photo, filename:"#{Band.last.name}.jpeg", content_type: 'image/png')
drug_store_romeos = Band.create!({ spotify_embed_url: 'https://open.spotify.com/embed/artist/7MMjkDVrjxW9iObeZeeejh', name: 'Drug Store Romeos', current_member_count: 3, location: 'London, United Kingdom', genre: "Alternative", bio: "Drug Store Romeos formed at college in nearby Farnborough when childhood friends Jonny and Charlie pinned an ad about finding a bassist for their new band to the school's notice board – fate played its part with Sarah replying and quickly proving herself a better vocalist than either of them."})
drug_store_romeos_photo = URI.open('https://images.complex.com/complex/images/c_crop,h_3189,w_4251,x_25,y_1053/c_scale,f_auto,q_auto,w_1920/fl_lossy,pg_1/tyrcjgymy4ph8vgu8sb4/drug-store-reomeos?fimg-client-default')
drug_store_romeos.photo.attach(io: drug_store_romeos_photo, filename:"#{Band.last.name}.jpeg", content_type: 'image/png')
chai = Band.create!({ spotify_embed_url: 'https://open.spotify.com/embed/artist/0NZsNnETGPWLKJj2Y0vpBx', name: 'Chai', current_member_count: 4, location: 'Nagoya, Japan', genre: "Rock", bio: "Chai are a Japanese rock band from Nagoya. The group consists of four women—Mana, Kana, Yuuki and Yuna. Formed in 2012, the band released their debut studio album Pink in 2017"})
chai_photo = URI.open('https://images.complex.com/complex/images/c_scale,f_auto,q_auto,w_1920/fl_lossy,pg_1/wuyrrirv74khybhwutot/chai?fimg-client-default')
chai.photo.attach(io: chai_photo, filename:"#{Band.last.name}.jpeg", content_type: 'image/png')
babygirl = Band.create!({ spotify_embed_url: 'https://open.spotify.com/embed/artist/6Y2m4AEOS9JFrsK2goyg7T', name: 'Babygirl', current_member_count: 2, location: 'Toronto, Canada', genre: "Alternative", bio: "Babygirl was born into a life of music. Kirsten “Kiki” Frances started writing song at nine, and Cameron “Bright” Breithaupt grew up in a household of professional musicians. They first met in college, bonded over a shared love of Lil Wayne, and started creating seriously catchy songs."})
babygirl_photo = URI.open('https://images.complex.com/complex/images/c_crop,h_887,w_1183,x_11,y_500/c_scale,f_auto,q_auto,w_1920/fl_lossy,pg_1/zhm0svamkntqcjsmeimk/babygirl?fimg-client-default')
babygirl.photo.attach(io: babygirl_photo, filename:"#{Band.last.name}.jpeg", content_type: 'image/png')
just_wondering = Band.create!({ spotify_embed_url: 'https://open.spotify.com/embed/artist/3cYJRMfmmDpWgSolJyNVwV' , name: 'Just Wondering', current_member_count: 3, location: 'Dublin, Ireland', genre: "Rock", bio: "A trio made up of Wale Akande, Jack O’Shaughnessy and Adam Redmond, Just Wondering have formally released their debut single, an impressive track that melds modern synth pop melodies, soul vibes, guitar licks, electronic textures and processed vocals."})
just_wondering_photo = URI.open('https://images.complex.com/complex/images/c_scale,f_auto,q_auto,w_1920/fl_lossy,pg_1/t0km2k0f9ahlksxvcekf/just-wondering?fimg-client-default')
just_wondering.photo.attach(io: just_wondering_photo, filename:"#{Band.last.name}.jpeg", content_type: 'image/png')
#black sabbath

ozzy = User.create!({ email: 'ozzy@ozzy.com', password: '123123', first_name: 'Ozzy', last_name: 'Osbourne', location: 'London', genre: 'Heavy Metal', bio: 'Lead singer of Black Sabbath, the Prince of Darkness'})
ozzy_photo = URI.open('https://media-cldnry.s-nbcnews.com/image/upload/t_fit-2000w,f_auto,q_auto:best/newscms/2020_04/3195301/200121-ozzy_osbourne-mc-13202.jpg')
ozzy.photo.attach(io: ozzy_photo,  filename: "#{User.last.first_name}.jpeg", content_type: 'image/png')
bill = User.create!({ email: 'bill@bill.com', password: '123123', first_name: 'Bill', last_name: 'Ward', location: 'London', genre: 'Heavy Metal', bio: 'Drummer extraordinaire for Black Sabbath'})
bill_photo = URI.open('https://www.drummerworld.com/pics/drumpics34/billward5612.jpg')
bill.photo.attach(io: bill_photo, filename: "#{User.last.first_name}.jpeg", content_type: 'image/png')
tony = User.create!({ email: 'tony@tony.com', password: '123123', first_name: 'Tony', last_name: 'Iommi', location: 'London', genre: 'Heavy Metal', bio: 'Guitarist extraordinaire for Black Sabbath'})
tony_photo = URI.open('https://ichef.bbci.co.uk/news/976/cpsprodpb/183CF/production/_111697299_tony.jpg')
tony.photo.attach(io: tony_photo, filename: "#{User.last.first_name}.jpeg", content_type: 'image/png')
[ozzy, bill, tony].each do |member|
  black_sabbath.users << member
end
black_sabbath.save

# crumb band
lila = User.create!({  email: 'lila@lila.com', password: '123123', first_name: 'Lila', last_name: "Ramani", location: 'Brooklyn', genre: "Rock", bio: "Lead singer and guitarist of Crumb."})
lila_photo = URI.open('https://cdn2.pitchfork.com/longform/914/crumb2.jpg')
lila.photo.attach(io: lila_photo, filename: "#{User.last.first_name}.jpeg", content_type: 'image/png')
jesse = User.create!({ email: 'jesse@jesse.com', password: '123123', first_name: 'Jesse', last_name: "Brotter", location: 'Brooklyn', genre: "Rock", bio: "Bassist and vocalists. Co-founder of Crumb."})
jesse_photo = URI.open('https://buzzbands.la/wp-content/gallery/crumb-lodgeroom-sw/Crumb-15.jpg')
jesse.photo.attach(io: jesse_photo, filename: "#{User.last.first_name}.jpeg", content_type: 'image/png')
bri = User.create!({ email: 'bri@bri.com', password: '123123', first_name: 'Bri', last_name: "Aronow", location: 'Brookln', genre: "Rock", bio: "Synthezier, keyboard, saxophone. Met Johnny while in college."})
bri_photo = URI.open('http://wrvu.org/wp-content/uploads/2021/10/DSC01800-scaled.jpg')
bri.photo.attach(io: bri_photo, filename: "#{User.last.first_name}.jpeg", content_type: 'image/png')
jonathan = User.create!({ email: 'jonathan@jonathan.com', password: '123123', first_name: 'Jonathan', last_name: "Gilad", location: 'Brooklyn', genre: "Rock", bio: "Drummer. The one that makes your heat beat faster!"})
jonathan_photo = URI.open('https://static.wixstatic.com/media/b47582_04591e7f98614f6a8f87a680bc0b7a5d~mv2.jpg/v1/fill/w_1512,h_1512,al_c,q_90/Jonathan%2520Gilad%25202021_edited.jpg')
jonathan.photo.attach(io: jonathan_photo, filename: "#{User.last.first_name}.jpeg", content_type: 'image/png')
[lila, jesse, bri, jonathan].each do |member|
  crumb.users << member
end
crumb.save

# bachelor band
melina = User.create!({ email: 'melina@melina.com', password: '123123', first_name: 'Melina', last_name: "Duterte", location: 'Los Angeles', genre: "Alternative", bio: "American, Los Angeles-based, DIY and bedroom-pop singer, songwriter, multi-instrumentalist and producer."})
melina_photo = URI.open('https://static01.nyt.com/images/2017/03/26/arts/26GUIDE1/26GUIDE1-superJumbo.jpg')
melina.photo.attach(io: melina_photo, filename: "#{User.last.first_name}.jpeg", content_type: 'image/png')
ellen = User.create!({ email: 'ellen@ellen.com', password: '123123', first_name: 'Ellen', last_name: "Kempner", location: 'Los Angeles', genre: "Alternative", bio: "Ellen Kempner (born June 10, 1994),[7] is the daughter of Janet and Jim Kempner.[8] Together with a younger sister, she grew up in Westport, Connecticut,[5] where she attended the Staples High School.[9] She developed an interest in playing music at an early age and had guitar lessons from her father."})
ellen_photo = URI.open('https://media.gettyimages.com/photos/ellen-kempner-lead-singer-with-palehound-performed-with-her-band-at-picture-id495398338?s=612x612')
ellen.photo.attach(io: ellen_photo, filename: "#{User.last.first_name}.jpeg", content_type: 'image/png')
[melina, ellen].each do |member|
  bachelor.users << member
end
bachelor.save

# drug store romeos band
charlie = User.create!({ email: 'charlie@charlie.com', password: '123123', first_name: 'Charlie', last_name: "Henderson", location: 'London', genre: "Alternative", bio: "Guitarist. Co-founder of the band. Hardcore 80s music fan."})
charlie_photo = URI.open('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ5jEfJPLqHHOHzfonqzRPmukdvb-rHcLtB8A&usqp=CAU')
charlie.photo.attach(io: charlie_photo, filename: "#{User.last.first_name}.jpeg", content_type: 'image/png')
johnny = User.create!({ email: 'johnny@johnny.com', password: '123123', first_name: 'Johnny', last_name: "Gilbert", location: 'London', genre: "Alternative", bio: "Co-founder, Drug Store Romeos. Play a lot of instruments and dream lots of dreams. Welcome to our world."})
johnny_photo = URI.open('https://underground-england.com/wp-content/uploads/2020/08/Drug-Store-Romeo-scaled-e1597060723419.jpg')
johnny.photo.attach(io: johnny_photo, filename: "#{User.last.first_name}.jpeg", content_type: 'image/png')
sarah = User.create!({ email: 'sarah@sarah.com', password: '123123', first_name: 'Sarah', last_name: "Downey", location: 'London', genre: "Alternative", bio: "When I put an album on, it'll change the weather, and it’ll change the person I am, and it’ll change the walls that surround me."})
sarah_photo = URI.open('https://i.ytimg.com/vi/2HNe6j-JbG8/maxresdefault.jpg')
sarah.photo.attach(io: sarah_photo, filename: "#{User.last.first_name}.jpeg", content_type: 'image/png')
[charlie, johnny, sarah].each do |member|
  drug_store_romeos.users << member
end
drug_store_romeos.save

# chai band
mana = User.create!({ email: 'mana@mana.com', password: '123123', first_name: 'Mana', last_name: "S", location: 'Nagoya', genre: "Rock", bio: "Twinning with Kana. Bringing back girl power."})
mana_photo = URI.open('https://chai-band.com/global/resource/images/img-main-mana.png')
mana.photo.attach(io: mana_photo, filename: "#{User.last.first_name}.jpeg", content_type: 'image/png')
kana = User.create!({ email: 'kana@kana.com', password: '123123', first_name: 'Kana', last_name: "S", location: 'Nagoya', genre: "Rock", bio: "Older twin so therefore the more cynical one. Rock on."})
kana_photo = URI.open('https://chai-band.com/global/resource/images/img-main-kana-sp.png')
kana.photo.attach(io: kana_photo, filename: "#{User.last.first_name}.jpeg", content_type: 'image/png')
yuna = User.create!({ email: 'yuna@yuna.com', password: '123123', first_name: 'Yuna', last_name: "T", location: 'Nagoya', genre: "Rock", bio: "I'm Yina. Love all sorts of music. Happy to see J-pop taking over the world."})
yuna_photo = URI.open('https://chai-band.com/global/resource/images/img-main-yuna.png')
yuna.photo.attach(io: yuna_photo, filename: "#{User.last.first_name}.jpeg", content_type: 'image/png')
yuuki = User.create!({ email: 'yuuki@yuuki.com', password: '123123', first_name: 'Yuuki', last_name: "J", location: 'Nagoya', genre: "Rock", bio: "I love to draw while playing the bass. If you like what you see on our albums, thank my brain. If you don't kiss my ass :)"})
yuuki_photo = URI.open('https://chai-band.com/global/resource/images/img-main-yuuki.png')
yuuki.photo.attach(io: yuuki_photo, filename: "#{User.last.first_name}.jpeg", content_type: 'image/png')
[mana, kana, yuna, yuuki].each do |member|
  chai.users << member
end
chai.save

# babygirl band
kiki = User.create!({ email: 'kiki@kiki.com', password: '123123', first_name: 'Kiki', last_name: "Frances", location: 'Toronto', genre: "Alternative", bio: "American, Los Angeles-based, DIY and bedroom-pop singer, songwriter, multi-instrumentalist and producer."})
kiki_photo = URI.open('https://cloudimages.broadwayworld.com/columnpiccloud/1250-9b3034dd4d5f6c238518f413132c8890.jpg')
kiki.photo.attach(io: kiki_photo, filename: "#{User.last.first_name}.jpeg", content_type: 'image/png')
cameron = User.create!({ email: 'cameron@cameron.com', password: '123123', first_name: 'Cameron', last_name: "Breithaupt", location: 'Toronto', genre: "Alternative", bio: "I grew up surrounded by music as the child of two full-time professional musicians. What else was I gonna be, a doctor?"})
cameron_photo = URI.open('https://eyecandy.earmilk.com/wp-content/uploads/2017/11/aMTuISoG-babygirljpg.jpg')
cameron.photo.attach(io: cameron_photo, filename: "#{User.last.first_name}.jpeg", content_type: 'image/png')
[kiki, cameron].each do |member|
  babygirl.users << member
end
babygirl.save

# just wondering band
wale = User.create!({ email: 'wale@wale.com', password: '123123', first_name: 'Wale', last_name: "Akande", location: 'Dublin', genre: "Alternative", bio: "I love what I do. That's all there is to say really. Anything else you wanna know just ask me ✌🏾"})
wale_photo = URI.open('https://www.clashmusic.com/sites/default/files/field/image/BICYCLES%20PRESS%20SHOT.jpg')
wale.photo.attach(io: wale_photo, filename: "#{User.last.first_name}.jpeg", content_type: 'image/png')
jack = User.create!({ email: 'jack@jack.com', password: '123123', first_name: 'Jack', last_name: "O'Shaughnessy", location: 'Dublin', genre: "Alternative", bio: "F*** that out now on all streaming platforms #dublinsfinest"})
jack_photo = URI.open('https://www.clashmusic.com/sites/default/files/field/image/unnamed-17_4.jpg')
jack.photo.attach(io: jack_photo, filename: "#{User.last.first_name}.jpeg", content_type: 'image/png')
adam = User.create!({ email: 'adam@adam.com', password: '123123', first_name: 'Adam', last_name: "Redmond", location: 'Dublin', genre: "Alternative", bio: "Look ma I made it!"})
adam_photo = URI.open('https://uploads.nialler9.com/wp-content/uploads/2019/02/14165308/50874079_469091780292962_8501528466942853120_o-1.jpg')
adam.photo.attach(io: adam_photo, filename: "#{User.last.first_name}.jpeg", content_type: 'image/png')
[wale, jack, adam].each do |member|
  just_wondering.users << member
end
just_wondering.save

User.all.each do |user|
  user.band_members.each do |member_record|
    member_record.is_member = true
    member_record.save!
  end
end

# MESSAGES

message_lila = Message.new(content: 'hey guys got that gig tomorrow!')
message_jesse = Message.new(content: "Oh yeah, can't wait!")
message_bri = Message.new(content: "Prepare to ROCK!")

message_lila.user = lila
message_jesse.user = jesse
message_bri.user = bri

message_lila.band = crumb
message_jesse.band = crumb
message_bri.band = crumb

message_lila.save!
message_jesse.save!
message_bri.save!

message_tony = Message.new(content: "Yo what's up Ozzy, you haven't been turning up to rehearsals!")
message_bill = Message.new(content: "Yeah what's the deal bro?")

message_tony.user = tony
message_bill.user = bill

message_tony.band = black_sabbath
message_bill.band = black_sabbath

message_tony.save!
message_bill.save!


message_kiki = Message.new(content: 'Welcome Ozzy! \m/')
message_cameron = Message.new(content: 'Yeah, welcome dude')

message_kiki.user = kiki
message_cameron.user = cameron

message_kiki.band = babygirl
message_cameron.band = babygirl

message_kiki.save!
message_cameron.save!




tester = User.create!({ avatar_url: 'https://www.digitalmusicnews.com/wp-content/uploads/2020/10/musician-guitar-urban-750.jpg', email: 'test@test.com', password: '123123', first_name: 'Test', last_name: "Testerson", location: 'Munich', genre: "Rock", bio: "Been testing since before testing was cool."})
