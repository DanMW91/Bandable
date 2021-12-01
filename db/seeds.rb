SongFile.destroy_all
Song.destroy_all
Message.destroy_all
BandMember.destroy_all
Band.destroy_all
User.destroy_all


bloc_party = Band.create!({ spotify_embed_url: 'https://open.spotify.com/embed/artist/3MM8mtgFzaEJsqbjZBSsHJ', name: 'Bloc Party', current_member_count: 4, looking_for_instrument: "", location: 'London, United Kingdom', genre: "Rock", bio: "Bloc Party are an English rock band, composed of Kele Okereke (lead vocals, rhythm guitar, keyboards, sampler), Russell Lissack (lead guitar, keyboards), Justin Harris (bass guitar, keyboards, saxophones, backing vocals) and Louise Bartle (drums, percussion)."})
bloc_party_photo = URI.open('https://www.nme.com/wp-content/uploads/2016/09/2015BlocParty_Press_FeatureHead_051115.hero_-1.jpg')
bloc_party.photo.attach(io: bloc_party_photo, filename: "#{Band.last.name}.jpeg", content_type: 'image/png')
chon = Band.create!({ spotify_embed_url: 'https://open.spotify.com/embed/artist/2JFljHPanIjYy2QqfNYvC0', name: 'Chon', current_member_count: 4, looking_for_instrument: "Vocalist", location: 'Oceanside, California', genre: "Rock", bio: "Chon is an American progressive rock and math rock band from Oceanside, California. Their music is largely instrumental with only a few songs containing vocal performances."})
chon_photo = URI.open('https://www.therockpit.net/wp-content/uploads/2019/10/chon-promo1-600x381.jpg')
chon.photo.attach(io: chon_photo, filename: "#{Band.last.name}.jpeg", content_type: 'image/png')
black_sabbath = Band.create!({ spotify_embed_url: 'https://open.spotify.com/embed/artist/5M52tdBnJaKSvOpJGz8mfZ', name: 'Black Sabbath', current_member_count: 4, looking_for_instrument: "Bassist", location: 'London, England', genre: "Heavy Metal", bio: "Black Sabbath is credited with creating heavy metal. The success of their first two albums - Black Sabbath and Paranoid - marked a paradigm shift in the world of rock. Not until Black Sabbath upended the music scene did the term “heavy metal” enter the popular vocabulary to describe the denser, more thunderous offshoot of rock over which they presided."})
black_sabbath_photo = URI.open('https://upload.wikimedia.org/wikipedia/commons/thumb/4/42/Sabs.jpg/2560px-Sabs.jpg')
black_sabbath.photo.attach(io: black_sabbath_photo, filename: "#{Band.last.name}.jpeg", content_type: 'image/png')
crumb = Band.create!({ spotify_embed_url: 'https://open.spotify.com/embed/artist/4kSGbjWGxTchKpIxXPJv0B', name: 'Crumb', current_member_count: 4, looking_for_instrument: "Guitarist", location: 'Brooklyn, USA', genre: "Rock", bio: "Crumb is an American indie rock band. The group is a collaboration of Brooklyn-based musicians Lila Ramani (guitar, vocals), Jesse Brotter (bass, vocals), Bri Aronow[2] (synthesizers, keyboard, saxophone), and Jonathan Gilad (drums), who met while attending Tufts University."})
crumb_photo = URI.open('https://images.complex.com/complex/images/c_scale,f_auto,q_auto,w_1920/fl_lossy,pg_1/dm07rs3emmj5waybj1wt/crumb?fimg-client-default')
crumb.photo.attach(io: crumb_photo, filename: "#{Band.last.name}.jpeg", content_type: 'image/png')
bachelor = Band.create!({ spotify_embed_url: 'https://open.spotify.com/embed/artist/7B1OPA8Ttxfv3XBDCkw24E', name: 'Bachelor', current_member_count: 2, looking_for_instrument: "", location: 'Los Angeles, USA', genre: "Alternative", bio: "Last year, the minds behind Jay Som (Melina Duterte) and Palehound (Ellen Kempner) rented a house in the California canyons. Topanga Canyon, to be precise—a winding, weaving little hippie hideout with a long creative history."})
bachelor_photo = URI.open('https://images.complex.com/complex/images/c_scale,f_auto,q_auto,w_1920/fl_lossy,pg_1/lxbsfs9dtczsfdy495yd/bachelor?fimg-client-default')
bachelor.photo.attach(io: bachelor_photo, filename: "#{Band.last.name}.jpeg", content_type: 'image/png')
drug_store_romeos = Band.create!({ spotify_embed_url: 'https://open.spotify.com/embed/artist/7MMjkDVrjxW9iObeZeeejh', name: 'Drug Store Romeos', current_member_count: 3, looking_for_instrument: "Bassist", location: 'London, United Kingdom', genre: "Alternative", bio: "Drug Store Romeos formed at college in nearby Farnborough when childhood friends Jonny and Charlie pinned an ad about finding a bassist for their new band to the school's notice board – fate played its part with Sarah replying and quickly proving herself a better vocalist than either of them."})
drug_store_romeos_photo = URI.open('https://images.complex.com/complex/images/c_crop,h_3189,w_4251,x_25,y_1053/c_scale,f_auto,q_auto,w_1920/fl_lossy,pg_1/tyrcjgymy4ph8vgu8sb4/drug-store-reomeos?fimg-client-default')
drug_store_romeos.photo.attach(io: drug_store_romeos_photo, filename:"#{Band.last.name}.jpeg", content_type: 'image/png')
chai = Band.create!({ spotify_embed_url: 'https://open.spotify.com/embed/artist/0NZsNnETGPWLKJj2Y0vpBx', name: 'Chai', current_member_count: 4, looking_for_instrument: "Guitarist", location: 'Nagoya, Japan', genre: "Rock", bio: "Chai are a Japanese rock band from Nagoya. The group consists of four women—Mana, Kana, Yuuki and Yuna. Formed in 2012, the band released their debut studio album Pink in 2017"})
chai_photo = URI.open('https://images.complex.com/complex/images/c_scale,f_auto,q_auto,w_1920/fl_lossy,pg_1/wuyrrirv74khybhwutot/chai?fimg-client-default')
chai.photo.attach(io: chai_photo, filename: "#{Band.last.name}.jpeg", content_type: 'image/png')
babygirl = Band.create!({ spotify_embed_url: 'https://open.spotify.com/embed/artist/6Y2m4AEOS9JFrsK2goyg7T', name: 'Babygirl', current_member_count: 2, looking_for_instrument: "", location: 'Toronto, Canada', genre: "Alternative", bio: "Babygirl was born into a life of music. Kirsten “Kiki” Frances started writing song at nine, and Cameron “Bright” Breithaupt grew up in a household of professional musicians. They first met in college, bonded over a shared love of Lil Wayne, and started creating seriously catchy songs."})
babygirl_photo = URI.open('https://images.complex.com/complex/images/c_crop,h_887,w_1183,x_11,y_500/c_scale,f_auto,q_auto,w_1920/fl_lossy,pg_1/zhm0svamkntqcjsmeimk/babygirl?fimg-client-default')
babygirl.photo.attach(io: babygirl_photo, filename: "#{Band.last.name}.jpeg", content_type: 'image/png')
just_wondering = Band.create!({ spotify_embed_url: 'https://open.spotify.com/embed/artist/3cYJRMfmmDpWgSolJyNVwV' , name: 'Just Wondering', current_member_count: 3, looking_for_instrument: "Bassist", location: 'Dublin, Ireland', genre: "Rock", bio: "A trio made up of Wale Akande, Jack O’Shaughnessy and Adam Redmond, Just Wondering have formally released their debut single, an impressive track that melds modern synth pop melodies, soul vibes, guitar licks, electronic textures and processed vocals."})
just_wondering_photo = URI.open('https://images.complex.com/complex/images/c_scale,f_auto,q_auto,w_1920/fl_lossy,pg_1/t0km2k0f9ahlksxvcekf/just-wondering?fimg-client-default')
just_wondering.photo.attach(io: just_wondering_photo, filename: "#{Band.last.name}.jpeg", content_type: 'image/png')

# bloc party band
kele = User.create!({ email: 'kele@kele.com', password: '123123', first_name: 'Kele', last_name: 'Okereke', location: 'London, United Kingdom', genre: 'Rock', bio: 'Rowland Kelechukwu Okereke, also known mononymously as Kele, is an English singer, songwriter, and musician. He is best known as the lead singer and rhythm guitarist of the indie rock band Bloc Party. Okereke was born in Liverpool on 13 October 1981,[3] the son of Nigerian immigrant parents.[4] He is of Igbo descent and was raised Catholic.[5] From 2001 to 2003, he studied English literature at Kings College London.'})
kele_photo = URI.open('https://img.huffingtonpost.com/asset/5e69c240230000101e3a1ebb.jpeg?ops=scalefit_720_noupscale')
kele.photo.attach(io: kele_photo, filename: "#{User.last.first_name}.jpeg", content_type: 'image/png')
russell = User.create!({ email: 'russell@russell.com', password: '123123', first_name: 'Russell', last_name: 'Lissack', location: 'London, United Kingdom', genre: 'Rock', bio: 'Russell Lissack (born 11 March 1981) is a British musician. He is the guitar player for the rock band Bloc Party and is also in the band Pin Me Down. He was born in Chingford in London. Lead guitar and keyboards. I let my fingers do the talking and my legs do the walking. Sorry, was that insensitvie to people that are unfortunate not to have legs? If it was I did not mean it that way. Its just a saying, you know? Let my so and so do the talking. Come to think about it, that saying makes no sense as only legs can do walking anyhow. One of those things I guess *nervous chuckle*'})
russell_photo = URI.open('https://images.fineartamerica.com/images/artworkimages/mediumlarge/2/russell-lissack-bloc-party-mal-bray.jpg')
russell.photo.attach(io: russell_photo, filename: "#{User.last.first_name}.jpeg", content_type: 'image/png')
justin = User.create!({ email: 'justin@justin.com', password: '123123', first_name: 'Justin', last_name: 'Harris', location: 'London, United Kingdom', genre: 'Rock', bio: 'Bass guitar, keyboards, saxophones, backing vocals. Jack of all trades, master of four. I enjoy vest tops and wife beaters. Not to say that I am a wife beater. Or a vest top for that matter. Just that I enjoy them. The vest tops. And the wife beaters. But wife beaters that are clothes, not the people. I do not enjoy them so much. I met a wife beater once.'})
justin_photo = URI.open('https://i.scdn.co/image/ab67706c0000bebb2c0f71e90f309765b08e0e73')
justin.photo.attach(io: justin_photo, filename: "#{User.last.first_name}.jpeg", content_type: 'image/png')
louise = User.create!({ email: 'louise@louise.com', password: '123123', first_name: 'Louise', last_name: 'Bartle', location: 'London, United Kingdom', genre: 'Rock', bio: 'That chick your mum warned you about..till she gets to know me. Play the drums in my own rock band, which makes me a rock chick. Relatively new to the party (see what I did there?) but been loving every second of it since joining. Given myself a couple more years to win a grammy before I pack it in and join the family juice business.'})
louise_photo = URI.open('https://i.scdn.co/image/ab67706c0000bebba9b80cdf361e6311384c9025')
louise.photo.attach(io: louise_photo, filename: "#{User.last.first_name}.jpeg", content_type: 'image/png')
[kele, russell, justin, louise].each do |member|
  bloc_party.users << member
end
bloc_party.save

# chon band
mario = User.create!({ email: 'mario@mario.com', password: '123123', first_name: 'Mario', last_name: 'Camerena', location: 'Oceanside, California', genre: 'Rock', bio: 'Loving guitar life. Making the most of my Ibanez guitar, the MAR10, custom made and just for me. Main inspiration includes Carlos Santana and Jimi Hendrix. We love ourselves some Jimi.'})
mario_photo = URI.open('https://www.koimoi.com/wp-content/new-galleries/2020/03/californian-rock-band-chon-finds-india-progressive-musically-001.jpg')
mario.photo.attach(io: mario_photo, filename: "#{User.last.first_name}.jpeg", content_type: 'image/png')
erik = User.create!({ email: 'erik@erik.com', password: '123123', first_name: 'Erik', last_name: 'Hansel', location: 'Oceanside, California', genre: 'Rock', bio: 'Another guitarist in the band. You might think a mostly instrumentalist band might have more, you know, instruments. Yet guitar guitar guitar. Mine is the best one though. Obviously. Have you seen it? Enough to make Eric Clapton weep! A thing of pure beauty that is, fine silken cloth in instrumental form. Speaking of instrumental form, just wait till I get on stage tonight.'})
erik_photo = URI.open('https://i.ytimg.com/vi/3yTABTywpuE/maxresdefault.jpg')
erik.photo.attach(io: erik_photo, filename: "#{User.last.first_name}.jpeg", content_type: 'image/png')
nathan = User.create!({ email: 'nathan@nathan.com', password: '123123', first_name: 'Nathan', last_name: 'Camerena', location: 'Oceanside, California', genre: 'Rock', bio: 'Come they told him par ru pu pum pum. The ox and lamb kept time par ru pu pum pum. Little drummer boy at your service. Used to play the drums in the school nativity play. They never let me play Jesus, I have no idea why. Or even Joseph. Or the wise men. Only the drummer boy or lamb for your boy over here. One time I actually played the star.'})
nathan_photo = URI.open('https://images.equipboard.com/uploads/user/image/156175/big_nathan-camarena.jpg?v=1635479087')
nathan.photo.attach(io: nathan_photo, filename: "#{User.last.first_name}.jpeg", content_type: 'image/png')
drew = User.create!({ email: 'drew@drew.com', password: '123123', first_name: 'Drew', last_name: 'Pelisek', location: 'Oceanside, California', genre: 'Rock', bio: 'Drew Pelisek is a chameleonic rock musician from San Diego who has performed in bands such as The Fall Of Troy, CHON, and Weatherbox. Dark brooding type. I think the fall of Troy is such an awesome name for a rock band. I came up with that one myselv, of course. It really can not get better than that for a name. I have no clue what a "chon" is, personally. I did not come up with that one.'})
drew_photo = URI.open('https://cdnb.artstation.com/p/assets/images/images/017/099/201/large/kareem-najjar-drew.jpg?1554647908')
drew.photo.attach(io: drew_photo, filename: "#{User.last.first_name}.jpeg", content_type: 'image/png')
[mario, erik, nathan, drew].each do |member|
  chon.users << member
end
chon.save

#black sabbath
ozzy = User.create!({ email: 'ozzy@ozzy.com', password: '123123', first_name: 'Ozzy', last_name: 'Osbourne', location: 'London, United Kingdom', genre: 'Heavy Metal', bio: 'John Michael "Ozzy" Osbourne (born 3 December 1948) is an English singer, songwriter, and television personality. He rose to prominence during the 1970s as the lead vocalist of the heavy metal band Black Sabbath, during which period he adopted the nickname "Prince of Darkness". Osbourne was fired from Black Sabbath in 1979 due to alcohol and drug problems, but went on to have a successful solo career, releasing 12 studio albums, the first seven of which received multi-platinum certifications in the US. Osbourne has since reunited with Black Sabbath on several occasions.'})
ozzy_photo = URI.open('https://media-cldnry.s-nbcnews.com/image/upload/t_fit-2000w,f_auto,q_auto:best/newscms/2020_04/3195301/200121-ozzy_osbourne-mc-13202.jpg')
ozzy.photo.attach(io: ozzy_photo,  filename: "#{User.last.first_name}.jpeg", content_type: 'image/png')
bill = User.create!({ email: 'bill@bill.com', password: '123123', first_name: 'Bill', last_name: 'Ward', location: 'London, United Kingdom', genre: 'Heavy Metal', bio: 'William Thomas Ward (born 5 May 1948) is an English musician best known as the original drummer of British heavy metal band Black Sabbath. He has also performed lead vocals on two of the bands songs: "Its Alright" from the album Technical Ecstasy (1976) and "Swinging the Chain" from the album Never Say Die! (1978).'})
bill_photo = URI.open('https://www.drummerworld.com/pics/drumpics34/billward5612.jpg')
bill.photo.attach(io: bill_photo, filename: "#{User.last.first_name}.jpeg", content_type: 'image/png')
tony = User.create!({ email: 'tony@tony.com', password: '123123', first_name: 'Tony', last_name: 'Iommi', location: 'London, United Kingdom', genre: 'Heavy Metal', bio: 'Anthony Frank Iommi (/aɪˈoʊmi/; born 19 February 1948) is a British guitarist. He was lead guitarist, co-founder and leader of heavy metal band Black Sabbath, and was the bands primary composer and sole continuous member for nearly five decades. Iommi was ranked number 25 in Rolling Stone magazines list of the "100 Greatest Guitarists of All Time. On his last day of work in a sheet metal factory, as a teenager, Iommi lost the tips of the middle and ring fingers of his right hand in an accident, an event which crucially impacted his playing style.'})
tony_photo = URI.open('https://ichef.bbci.co.uk/news/976/cpsprodpb/183CF/production/_111697299_tony.jpg')
tony.photo.attach(io: tony_photo, filename: "#{User.last.first_name}.jpeg", content_type: 'image/png')
[ozzy, bill, tony].each do |member|
  black_sabbath.users << member
end
black_sabbath.save

# crumb band
lila = User.create!({  email: 'lila@lila.com', password: '123123', first_name: 'Lila', last_name: "Ramani", location: 'Brooklyn, United States', genre: "Rock", bio: "Lead singer and guitarist of Crumb. Many people ask us where we got the name crumb from. Usually I don't tell them, as I can typically sense the insincerity in their voices. However I'm happy to share it on here. You see, the origin of the name, Crumb, is... :P"})
lila_photo = URI.open('https://cdn2.pitchfork.com/longform/914/crumb2.jpg')
lila.photo.attach(io: lila_photo, filename: "#{User.last.first_name}.jpeg", content_type: 'image/png')
jesse = User.create!({ email: 'jesse@jesse.com', password: '123123', first_name: 'Jesse', last_name: "Brotter", location: 'Brooklyn, United States', genre: "Rock", bio: "Bassist and vocalists. Co-founder of Crumb. As a co-founder of the band, I also get asked multiple times why the band is called thus. Its not really something we talk about openly, trade secrets and all. I'll refer you down to my esteemed colleague below for further information as to where this name comes from."})
jesse_photo = URI.open('https://buzzbands.la/wp-content/gallery/crumb-lodgeroom-sw/Crumb-15.jpg')
jesse.photo.attach(io: jesse_photo, filename: "#{User.last.first_name}.jpeg", content_type: 'image/png')
bri = User.create!({ email: 'bri@bri.com', password: '123123', first_name: 'Bri', last_name: "Aronow", location: 'Brookln, United States', genre: "Rock", bio: "Synthezier, keyboard, saxophone. Met Johnny while in college. You wanna know about the name I suppose. Fine, listen closely because if you miss it now you miss it forever. Bread. That is all. Now take the gift I have given you this day and be well."})
bri_photo = URI.open('http://wrvu.org/wp-content/uploads/2021/10/DSC01800-scaled.jpg')
bri.photo.attach(io: bri_photo, filename: "#{User.last.first_name}.jpeg", content_type: 'image/png')
jonathan = User.create!({ email: 'jonathan@jonathan.com', password: '123123', first_name: 'Jonathan', last_name: "Gilad", location: 'Brooklyn, United States', genre: "Rock", bio: "Drummer. The one that makes your heat beat faster! Hopefully not too fast though as that could be a sign of heart disease. Your resting heart rate should actually be quite slow. Not DEATHLY slow of course, but slow enough for your hands to not shake, spilling your Starbucks coffee all over your new suede shoes."})
jonathan_photo = URI.open('https://static.wixstatic.com/media/b47582_04591e7f98614f6a8f87a680bc0b7a5d~mv2.jpg/v1/fill/w_1512,h_1512,al_c,q_90/Jonathan%2520Gilad%25202021_edited.jpg')
jonathan.photo.attach(io: jonathan_photo, filename: "#{User.last.first_name}.jpeg", content_type: 'image/png')
[lila, jesse, bri, jonathan].each do |member|
  crumb.users << member
end
crumb.save

# bachelor band
melina = User.create!({ email: 'melina@melina.com', password: '123123', first_name: 'Melina', last_name: "Duterte", location: 'Los Angeles, United States', genre: "Alternative", bio: "Melina Duterte is a master of voice: Hers are dream pop songs that hint at a universe of her own creation. Recording as Jay Som since 2015, Duterte’s world of shy, swirling intimacies always contains a disarming ease, a sky-bent sparkle and a grounding indie-rock humility. In an era of burnout, the title track of her 2017 breakout, Everybody Works, remains a balm and an anthem. Duterte’s life became a whirlwind in the wake of Everybody Works. After spending her teen years and early 20s exploring an eclectic array of musical styles—studying jazz trumpet as a child, carrying on her Filipino family tradition of spirited karaoke, and quietly recording indie-pop songs in her bedroom alone—that accomplished album found her playing festivals around the world, sharing stages with the likes of Paramore, Death Cab for Cutie, and Mitski."})
melina_photo = URI.open('https://static01.nyt.com/images/2017/03/26/arts/26GUIDE1/26GUIDE1-superJumbo.jpg')
melina.photo.attach(io: melina_photo, filename: "#{User.last.first_name}.jpeg", content_type: 'image/png')
ellen = User.create!({ email: 'ellen@ellen.com', password: '123123', first_name: 'Ellen', last_name: "Kempner", location: 'Los Angeles, United States', genre: "Alternative", bio: "Ellen Kempner (born June 10, 1994),[7] is the daughter of Janet and Jim Kempner.[8] Together with a younger sister, she grew up in Westport, Connecticut,[5] where she attended the Staples High School.[9] She developed an interest in playing music at an early age and had guitar lessons from her father. He was a bastard, but we dont talk about that."})
ellen_photo = URI.open('https://media.gettyimages.com/photos/ellen-kempner-lead-singer-with-palehound-performed-with-her-band-at-picture-id495398338?s=612x612')
ellen.photo.attach(io: ellen_photo, filename: "#{User.last.first_name}.jpeg", content_type: 'image/png')
[melina, ellen].each do |member|
  bachelor.users << member
end
bachelor.save

# drug store romeos band
charlie = User.create!({ email: 'charlie@charlie.com', password: '123123', first_name: 'Charlie', last_name: "Henderson", location: 'London, United Kingdom', genre: "Alternative", bio: "Guitarist. Co-founder of the band. Hardcore 80s music fan. Not just musioc, I love everything to do with the 80s. Tron, Stand By Me, even GTA Vice City because it was set in the 80s. 1984 to be precise. I wonder if GTA 6 will ever see the light of day? Rockstar probably aren't even working on it right, either that or they are too busy milking the cash cow that is GTA Online to even bother. I dont play games any more, they make me sad."})
charlie_photo = URI.open('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ5jEfJPLqHHOHzfonqzRPmukdvb-rHcLtB8A&usqp=CAU')
charlie.photo.attach(io: charlie_photo, filename: "#{User.last.first_name}.jpeg", content_type: 'image/png')
johnny = User.create!({ email: 'johnny@johnny.com', password: '123123', first_name: 'Johnny', last_name: "Gilbert", location: 'London, United Kingdom', genre: "Alternative", bio: "Co-founder, Drug Store Romeos. Play a lot of instruments and dream lots of dreams. Welcome to our world, and we look forward to entering yours one day. If you ever invite us. Why don't you invite us, don't you think we're worthy? We'll be good, I promise. We'll take our shoes off at the door and make sure we only put our drinks down on a coaster."})
johnny_photo = URI.open('https://underground-england.com/wp-content/uploads/2020/08/Drug-Store-Romeo-scaled-e1597060723419.jpg')
johnny.photo.attach(io: johnny_photo, filename: "#{User.last.first_name}.jpeg", content_type: 'image/png')
sarah = User.create!({ email: 'sarah@sarah.com', password: '123123', first_name: 'Sarah', last_name: "Downey", location: 'London, United Kingdom', genre: "Alternative", bio: "When I put an album on, it'll change the weather, and it’ll change the person I am, and it’ll change the walls that surround me. Like Storm, the weather witch and main member of the X-men. If I was an X-man, or woman, my super powers would be shrinking. That way I can make myself really small and so I can sneak into kitchen's and sneak way some squirrels and they will be none the wiser. Squeak squeak!"})
sarah_photo = URI.open('https://i.ytimg.com/vi/2HNe6j-JbG8/maxresdefault.jpg')
sarah.photo.attach(io: sarah_photo, filename: "#{User.last.first_name}.jpeg", content_type: 'image/png')
[charlie, johnny, sarah].each do |member|
  drug_store_romeos.users << member
end
drug_store_romeos.save

# chai band
mana = User.create!({ email: 'mana@mana.com', password: '123123', first_name: 'Mana', last_name: "S", location: 'Nagoya, Japan', genre: "Rock", bio: "Twinning with Kana. Bringing back girl power. That doesn't mean I can't love pink does it? I mean, loving pink while being a girl doesn't preculde me from being feminist. Does it? I don't have to suddenly start wearing blue or black or whatever to prove I'm not conforming to any gender stereotypes. I'm just being meeeeeeeeeee."})
mana_photo = URI.open('https://chai-band.com/global/resource/images/img-main-mana.png')
mana.photo.attach(io: mana_photo, filename: "#{User.last.first_name}.jpeg", content_type: 'image/png')
kana = User.create!({ email: 'kana@kana.com', password: '123123', first_name: 'Kana', last_name: "S", location: 'Nagoya, Japan', genre: "Rock", bio: "Older twin so therefore the more cynical one. Rock on. If we ever break up, the customs of the land dictate that, as the older twin, I'm entitled to a greater share of the profits than my sister. I read that somewhere anyway, might not be the case at all but I like to think it is."})
kana_photo = URI.open('https://chai-band.com/global/resource/images/img-main-kana-sp.png')
kana.photo.attach(io: kana_photo, filename: "#{User.last.first_name}.jpeg", content_type: 'image/png')
yuna = User.create!({ email: 'yuna@yuna.com', password: '123123', first_name: 'Yuna', last_name: "T", location: 'Nagoya, Japan', genre: "Rock", bio: "I'm Yina. Love all sorts of music. Happy to see J-pop taking over the world. We'll be bigger than K-pop soon, just watch. It'll happen in no time at all. And when it does, all you naysayers will eat your words!!"})
yuna_photo = URI.open('https://chai-band.com/global/resource/images/img-main-yuna.png')
yuna.photo.attach(io: yuna_photo, filename: "#{User.last.first_name}.jpeg", content_type: 'image/png')
yuuki = User.create!({ email: 'yuuki@yuuki.com', password: '123123', first_name: 'Yuuki', last_name: "J", location: 'Nagoya, Japan', genre: "Rock", bio: "I love to draw while playing the bass. If you like what you see on our albums, thank my brain. If you don't kiss my ass :). The rebel of the group and proud of it. Just look at my picture. The way my head is cocked to the side like that, just screams bad ass, and don't fuck with her because she's a bad ass."})
yuuki_photo = URI.open('https://chai-band.com/global/resource/images/img-main-yuuki.png')
yuuki.photo.attach(io: yuuki_photo, filename: "#{User.last.first_name}.jpeg", content_type: 'image/png')
[mana, kana, yuna, yuuki].each do |member|
  chai.users << member
end
chai.save

# babygirl band
kiki = User.create!({ email: 'kiki@kiki.com', password: '123123', first_name: 'Kiki', last_name: "Frances", location: 'Toronto, Canada', genre: "Alternative", bio: "American, Los Angeles-based, DIY and bedroom-pop singer, songwriter, multi-instrumentalist and producer. Who even knows what a DIY singer is anyway. I mean, all singers are quote unquote DIY singers, surely. Are there any that dont do the singing themselves, and instead contract it out to others? I guess perhaps Milli Vanilli did this. They cant be classed as DIY singers at all, fucking frauds."})
kiki_photo = URI.open('https://cloudimages.broadwayworld.com/columnpiccloud/1250-9b3034dd4d5f6c238518f413132c8890.jpg')
kiki.photo.attach(io: kiki_photo, filename: "#{User.last.first_name}.jpeg", content_type: 'image/png')
cameron = User.create!({ email: 'cameron@cameron.com', password: '123123', first_name: 'Cameron', last_name: "Breithaupt", location: 'Toronto, Canada', genre: "Alternative", bio: "I grew up surrounded by music as the child of two full-time professional musicians. What else was I gonna be, a doctor? Far too queamish for that, even the thought of blood makes me want to projectile vomit. I've got no idea how people can be doctors, elbow deep in blood day in and day out. I'm convinced they're psychopaths."})
cameron_photo = URI.open('https://eyecandy.earmilk.com/wp-content/uploads/2017/11/aMTuISoG-babygirljpg.jpg')
cameron.photo.attach(io: cameron_photo, filename: "#{User.last.first_name}.jpeg", content_type: 'image/png')
[kiki, cameron].each do |member|
  babygirl.users << member
end
babygirl.save

# just wondering band
wale = User.create!({ email: 'wale@wale.com', password: '123123', first_name: 'Wale', last_name: "Akande", location: 'Dublin, Ireland', genre: "Alternative", bio: "I love what I do. That's all there is to say really. Anything else you wanna know just ask me ✌🏾. Okay I'll tell you everything. I'm so so bored. And cold. I put on this exterior of being fun loving and social but the truth is I hate people."})
wale_photo = URI.open('https://www.clashmusic.com/sites/default/files/field/image/BICYCLES%20PRESS%20SHOT.jpg')
wale.photo.attach(io: wale_photo, filename: "#{User.last.first_name}.jpeg", content_type: 'image/png')
jack = User.create!({ email: 'jack@jack.com', password: '123123', first_name: 'Jack', last_name: "O'Shaughnessy", location: 'Dublin, Ireland', genre: "Alternative", bio: "F*** that out now on all streaming platforms #dublinsfinest. That's right, us, Just Wondering. Not Westlife or Boyzone. No one even listens to Boyzone anymore anyway. Besides No Matter What. That's a banger. And Baby Can I hold you. That's alright too."})
jack_photo = URI.open('https://www.clashmusic.com/sites/default/files/field/image/unnamed-17_4.jpg')
jack.photo.attach(io: jack_photo, filename: "#{User.last.first_name}.jpeg", content_type: 'image/png')
adam = User.create!({ email: 'adam@adam.com', password: '123123', first_name: 'Adam', last_name: "Redmond", location: 'Dublin, Ireland', genre: "Alternative", bio: "Just gonna stand there and watch me burn? Well, that's alright, because I like the way it hurts. Just gonna stand there and hear me cry? Well, that's alright, because I love the way you lie. I love the way you lie. I love the way you lie!"})
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




tester = User.create!({ email: 'test@test.com', password: '123123', first_name: 'Test', last_name: "Testerson", location: 'Munich', genre: "Rock", bio: "Been testing since before testing was cool."})
tester_photo = URI.open('https://www.digitalmusicnews.com/wp-content/uploads/2020/10/musician-guitar-urban-750.jpg')
tester.photo.attach(io: tester_photo, filename: "#{User.last.first_name}.jpeg", content_type: 'image/png')
