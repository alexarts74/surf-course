Surfboard.destroy_all
Wetsuit.destroy_all

surfboard_deb = Surfboard.create(url: "test", name: "Olaian", level: "Débutant", volume: 60, dimension_length: 7.4, dimension_height: 25.5, dimension_thickness: 4.35, price: 350)
board_image = Cloudinary::Uploader.upload(Rails.root.join("app/assets/images/olaian.jpeg"))
surfboard_deb.image.attach(io: URI.open(board_image['secure_url']), filename: "olaian.jpeg", content_type: "image/jpeg")

surfboard_deb_weight = Surfboard.create(url: "test", name: "Olaian", level: "Débutant", volume: 80, dimension_length: 8.6, dimension_height: 28.5, dimension_thickness: 6.35, price: 375)
board_image = Cloudinary::Uploader.upload(Rails.root.join("app/assets/images/surfboard-deb-weight.jpeg"))
surfboard_deb_weight.image.attach(io: URI.open(board_image['secure_url']), filename: "surfboard-deb-weight.jpeg", content_type: "image/jpeg")

surfboard_norm_weight = Surfboard.create(url: "test", name: "Olaian", level: "Débutant", volume: 70, dimension_length: 7.8, dimension_height: 27.0, dimension_thickness: 5.35, price: 365)
board_image = Cloudinary::Uploader.upload(Rails.root.join("app/assets/images/surfborad-deb-norm.jpeg"))
surfboard_norm_weight.image.attach(io: URI.open(board_image['secure_url']), filename: "surfborad-deb-norm.jpeg", content_type: "image/jpeg")

puts "surfboard deb ok"

surfboard_int = Surfboard.create(url: "test", name: "Olaian", level: "Intermédiaire", volume: 29, dimension_length: 5.6, dimension_height: 17.5, dimension_thickness: 3.35, price: 520)
board_image = Cloudinary::Uploader.upload(Rails.root.join("app/assets/images/surf-int.jpeg"))
surfboard_int.image.attach(io: URI.open(board_image['secure_url']), filename: "surf-int.jpeg", content_type: "image/jpeg")

surfboard_int_1 = Surfboard.create(url: "test", name: "Olaian", level: "Intermédiaire", volume: 24, dimension_length: 5.7, dimension_height: 18.5, dimension_thickness: 3, price: 530)
board_image = Cloudinary::Uploader.upload(Rails.root.join("app/assets/images/shortboard-1.jpeg"))
surfboard_int_1.image.attach(io: URI.open(board_image['secure_url']), filename: "shortboard-1.jpeg", content_type: "image/jpeg")

surfboard_int_2 = Surfboard.create(url: "test", name: "Olaian", level: "Intermédiaire", volume: 36, dimension_length: 7.0, dimension_height: 19.5, dimension_thickness: 3.35, price: 540)
board_image = Cloudinary::Uploader.upload(Rails.root.join("app/assets/images/surf-int-2.jpeg"))
surfboard_int_2.image.attach(io: URI.open(board_image['secure_url']), filename: "surf-int-2.jpeg", content_type: "image/jpeg")

surfboard_int_3 = Surfboard.create(url: "test", name: "Olaian", level: "Intermédiaire", volume: 45, dimension_length: 7.6, dimension_height: 22.5, dimension_thickness: 3.35, price: 550)
board_image = Cloudinary::Uploader.upload(Rails.root.join("app/assets/images/surf-int-4.jpeg"))
surfboard_int_3.image.attach(io: URI.open(board_image['secure_url']), filename: "surf-int-4.jpeg", content_type: "image/jpeg")

surfboard_int_4 = Surfboard.create(url: "test", name: "Olaian", level: "Intermédiaire", volume: 32, dimension_length: 6.0, dimension_height: 22.5, dimension_thickness: 3.35, price: 560)
board_image = Cloudinary::Uploader.upload(Rails.root.join("app/assets/images/surf-int-5.jpeg"))
surfboard_int_4.image.attach(io: URI.open(board_image['secure_url']), filename: "surf-int-5.jpeg", content_type: "image/jpeg")

surfboard_int_5 = Surfboard.create(url: "test", name: "Olaian", level: "Intermédiaire", volume: 40, dimension_length: 7.2, dimension_height: 22.5, dimension_thickness: 3.35, price: 570)
board_image = Cloudinary::Uploader.upload(Rails.root.join("app/assets/images/surf-int-6.jpeg"))
surfboard_int_5.image.attach(io: URI.open(board_image['secure_url']), filename: "surf-int-6.jpeg", content_type: "image/jpeg")

surfboard_int_6 = Surfboard.create(url: "test", name: "Prism", level: "Intermédiaire", volume: 30, dimension_length: 6.6, dimension_height: 22.5, dimension_thickness: 3.35, price: 580)
board_image = Cloudinary::Uploader.upload(Rails.root.join("app/assets/images/surf-int-7.jpeg"))
surfboard_int_6.image.attach(io: URI.open(board_image['secure_url']), filename: "surf-int-7.jpeg", content_type: "image/jpeg")

puts "surfboard int ok"

surfboard_pro = Surfboard.create(url: "test", name: "Pyzel", level: "Confirmé", volume: 24, dimension_length: 6.0, dimension_height: 19.5, dimension_thickness: 2.35, price: 750)
board_image = Cloudinary::Uploader.upload(Rails.root.join("app/assets/images/surf-pro.jpeg"))
surfboard_pro.image.attach(io: URI.open(board_image['secure_url']), filename: "surf-pro.jpeg", content_type: "image/jpeg")

surfboard_pro_1 = Surfboard.create(url: "test", name: "Pyzel", level: "Confirmé", volume: 29.9, dimension_length: 6, dimension_height: 19.5, dimension_thickness: 2.35, price: 750)
board_image = Cloudinary::Uploader.upload(Rails.root.join("app/assets/images/surf-pro-1.jpeg"))
surfboard_pro_1.image.attach(io: URI.open(board_image['secure_url']), filename: "surf-pro-1.jpeg", content_type: "image/jpeg")

surfboard_pro_2 = Surfboard.create(url: "test", name: "Pyzel", level: "Confirmé", volume: 31, dimension_length: 6.6, dimension_height: 19.5, dimension_thickness: 2.35, price: 750)
board_image = Cloudinary::Uploader.upload(Rails.root.join("app/assets/images/surf-pro-2.jpeg"))
surfboard_pro_2.image.attach(io: URI.open(board_image['secure_url']), filename: "surf-pro-2.jpeg", content_type: "image/jpeg")

surfboard_pro_3 = Surfboard.create(url: "test", name: "Pyzel", level: "Confirmé", volume: 41, dimension_length: 7.0, dimension_height: 19.5, dimension_thickness: 2.35, price: 750)
board_image = Cloudinary::Uploader.upload(Rails.root.join("app/assets/images/surf-pro-4.jpeg"))
surfboard_pro_3.image.attach(io: URI.open(board_image['secure_url']), filename: "surf-pro-4.jpeg", content_type: "image/jpeg")

surfboard_pro_4 = Surfboard.create(url: "test", name: "Uwl", level: "Confirmé", volume: 40, dimension_length: 6, dimension_height: 19.5, dimension_thickness: 2.35, price: 750)
board_image = Cloudinary::Uploader.upload(Rails.root.join("app/assets/images/surf-pro-5.jpeg"))
surfboard_pro_4.image.attach(io: URI.open(board_image['secure_url']), filename: "surf-pro-5.jpeg", content_type: "image/jpeg")

puts "surfboard pro ok"

wetsuit_cold = Wetsuit.create(url: "test", name: "Hurley", thickness: 5.4, zip: "frontzip", price: 400)
wetsuit_image = Cloudinary::Uploader.upload(Rails.root.join("app/assets/images/wetsuit-cold.jpeg"))
wetsuit_cold.image.attach(io: URI.open(wetsuit_image['secure_url']), filename: "wetsuit-cold.jpeg", content_type: "image/jpeg")

wetsuit_temp = Wetsuit.create(url: "test_2", name: "Hurley", thickness: 4.3, zip: "frontzip", price: 220)
wetsuit_image = Cloudinary::Uploader.upload(Rails.root.join("app/assets/images/hurley4:3.jpeg"))
wetsuit_temp.image.attach(io: URI.open(wetsuit_image['secure_url']), filename: "hurley4:3.jpeg", content_type: "image/jpeg")

wetsuit_hot = Wetsuit.create(url: "test_3", name: "Hurley", thickness: 2.2, zip: "frontzip", price: 200)
wetsuit_image = Cloudinary::Uploader.upload(Rails.root.join("app/assets/images/shorty.jpeg"))
wetsuit_hot.image.attach(io: URI.open(wetsuit_image['secure_url']), filename: "shorty.jpeg", content_type: "image/jpeg")


wetsuit_cold_women = Wetsuit.create(url: "test", name: "Hurley ladies winter", thickness: 5.4, zip: "frontzip", price: 400)
wetsuit_image = Cloudinary::Uploader.upload(Rails.root.join("app/assets/images/wetsuit-cold-women.jpg"))
wetsuit_cold_women.image.attach(io: URI.open(wetsuit_image['secure_url']), filename: "wetsuit-cold-women.jpg", content_type: "image/jpg")

wetsuit_temp_women = Wetsuit.create(url: "test_2", name: "Hurley ladies spring", thickness: 4.3, zip: "frontzip", price: 220)
wetsuit_image = Cloudinary::Uploader.upload(Rails.root.join("app/assets/images/wetsuit-temp-women.jpg"))
wetsuit_temp_women.image.attach(io: URI.open(wetsuit_image['secure_url']), filename: "wetsuit-temp-women.jpg", content_type: "image/jpg")

wetsuit_hot_women = Wetsuit.create(url: "test_3", name: "Hurley ladies summer", thickness: 2.2, zip: "frontzip", price: 200)
wetsuit_image = Cloudinary::Uploader.upload(Rails.root.join("app/assets/images/wetsuit-hot-women.jpg"))
wetsuit_hot_women.image.attach(io: URI.open(wetsuit_image['secure_url']), filename: "wetsuit-hot-women.jpg", content_type: "image/jpg")

puts "seed ok"

# require "open-uri"
# require "nokogiri"


# i = 0
# loop do
#   i += 1
#   puts i
#   url = "https://www.boardshop.co.uk/surfboards?p=#{i}"

#   html_file = URI.open(url, "Cookie" => "frontend=t5am7hhirj1r6elehqkrs0vja5; frontend_cid=buPWmTv4PWfNFWJN; external_no_cache=1; CookieConsent={stamp:%27LFhIdeAqXMnt0Vezh90X5cCixjA1Msr++k0E2yqI3mkLQQ8XV4qJ0w==%27%2Cnecessary:true%2Cpreferences:true%2Cstatistics:true%2Cmarketing:true%2Cmethod:%27explicit%27%2Cver:1%2Cutc:1678281069521%2Cregion:%27fr%27}; _gcl_au=1.1.637479544.1678281069; _ga=GA1.3.978133287.1678281038; _gid=GA1.3.999443208.1678281069; _fbp=fb.2.1678281068971.1777825138; _pin_unauth=dWlkPU5EVmxPRFl6WkRRdE9ETm1PQzAwWkRreUxUZzNaalF0TUdNeU5XSTFaREkzTlRaaw; _hjFirstSeen=1; _hjSession_104392=eyJpZCI6ImVmODlkMzQyLWFlYzAtNGNmNS04YjI0LWQ1NTYzMWY1MTg5ZiIsImNyZWF0ZWQiOjE2NzgyODEwNjkwNzksImluU2FtcGxlIjpmYWxzZX0=; _hjAbsoluteSessionInProgress=0; __gads=ID=abc647fd66a9db2e-224c92b32edc00fd:T=1678281070:RT=1678281070:S=ALNI_MaCz3hRLYTwSm_ao20zhLODOjOSdg; __gpi=UID=00000be8572d9ddf:T=1678281070:RT=1678281070:S=ALNI_MYyUVaWFwQ3hAeweocOefcTuReMpg; _hjSessionUser_104392=eyJpZCI6ImY3NWJkZDc0LWZjN2MtNTIzZi05NjEyLTFkNGQyYzBlYWVmZSIsImNyZWF0ZWQiOjE2NzgyODEwNjkwNzQsImV4aXN0aW5nIjp0cnVlfQ==; _hjIncludedInPageviewSample=1; _hjIncludedInSessionSample_104392=0; _dc_gtm_UA-15167166-1=1; currency=EUR").read
#   html_doc = Nokogiri::HTML.parse(html_file)
#   html_doc.search(".product-name>a").each do |element|
#     url = element[:href]
#     html_file = URI.open(url, "Cookie" => "frontend=t5am7hhirj1r6elehqkrs0vja5; frontend_cid=buPWmTv4PWfNFWJN; external_no_cache=1; CookieConsent={stamp:%27LFhIdeAqXMnt0Vezh90X5cCixjA1Msr++k0E2yqI3mkLQQ8XV4qJ0w==%27%2Cnecessary:true%2Cpreferences:true%2Cstatistics:true%2Cmarketing:true%2Cmethod:%27explicit%27%2Cver:1%2Cutc:1678281069521%2Cregion:%27fr%27}; _gcl_au=1.1.637479544.1678281069; _ga=GA1.3.978133287.1678281038; _gid=GA1.3.999443208.1678281069; _fbp=fb.2.1678281068971.1777825138; _pin_unauth=dWlkPU5EVmxPRFl6WkRRdE9ETm1PQzAwWkRreUxUZzNaalF0TUdNeU5XSTFaREkzTlRaaw; _hjFirstSeen=1; _hjSession_104392=eyJpZCI6ImVmODlkMzQyLWFlYzAtNGNmNS04YjI0LWQ1NTYzMWY1MTg5ZiIsImNyZWF0ZWQiOjE2NzgyODEwNjkwNzksImluU2FtcGxlIjpmYWxzZX0=; _hjAbsoluteSessionInProgress=0; __gads=ID=abc647fd66a9db2e-224c92b32edc00fd:T=1678281070:RT=1678281070:S=ALNI_MaCz3hRLYTwSm_ao20zhLODOjOSdg; __gpi=UID=00000be8572d9ddf:T=1678281070:RT=1678281070:S=ALNI_MYyUVaWFwQ3hAeweocOefcTuReMpg; _hjSessionUser_104392=eyJpZCI6ImY3NWJkZDc0LWZjN2MtNTIzZi05NjEyLTFkNGQyYzBlYWVmZSIsImNyZWF0ZWQiOjE2NzgyODEwNjkwNzQsImV4aXN0aW5nIjp0cnVlfQ==; _hjIncludedInPageviewSample=1; _hjIncludedInSessionSample_104392=0; _dc_gtm_UA-15167166-1=1; currency=EUR" ).read
#     html_doc = Nokogiri::HTML.parse(html_file)
#     element = html_doc.search(".product-features>ul>li>span")[1]
#     name = element.children.to_s.strip
#     element = html_doc.search(".product-features>ul>li")[1]
#     level = element.children.last.text.strip
#     element = html_doc.search(".product-features>ul>li")[2]
#     volume = element.children.last.text.strip.to_f
#     element = html_doc.search(".product-features>ul>li")[5]
#     dimension_length = element.children.last.text.strip.split('x').first&.gsub(/ft /,".")&.strip&.to_f
#     element = html_doc.search(".product-features>ul>li")[5]
#     dimension_height = element.children.last.text.strip.split('x')[1]&.gsub(/ft /,".")&.strip&.to_f
#     dimension_thickness = html_doc.search(".product-features>ul>li")[5].children.last.text.strip.split('x')[2]&.gsub(/ft /,".")&.strip&.to_f
#     price = html_doc.search(".regular-price")
#     price = price.text.strip.gsub(/€/,"").to_f
#     image = html_doc.search(".image-zoom>img")
#     image = image.first.attributes["src"].value

#     Surfboard.create(url: url, name: name, level: level, volume: volume, dimension_length: dimension_length, dimension_height: dimension_height, dimension_thickness: dimension_thickness, price: price, image: image)
#     sleep(0.5)
#   end

#    if i == 10
#      break
#    end
# end

# def zip?(html_doc)
#   element = html_doc.search(".product-features>ul>li")[3]
#   element.children.first.text.strip == "Zip"
# end

# i = 0
# loop do
#   i += 1
#   puts i
#   url = "https://www.boardshop.co.uk/wetsuits?p=#{i}"
#   html_file = URI.open(url, "Cookie" => "frontend=t5am7hhirj1r6elehqkrs0vja5; frontend_cid=buPWmTv4PWfNFWJN; external_no_cache=1; CookieConsent={stamp:%27LFhIdeAqXMnt0Vezh90X5cCixjA1Msr++k0E2yqI3mkLQQ8XV4qJ0w==%27%2Cnecessary:true%2Cpreferences:true%2Cstatistics:true%2Cmarketing:true%2Cmethod:%27explicit%27%2Cver:1%2Cutc:1678281069521%2Cregion:%27fr%27}; _gcl_au=1.1.637479544.1678281069; _ga=GA1.3.978133287.1678281038; _gid=GA1.3.999443208.1678281069; _fbp=fb.2.1678281068971.1777825138; _pin_unauth=dWlkPU5EVmxPRFl6WkRRdE9ETm1PQzAwWkRreUxUZzNaalF0TUdNeU5XSTFaREkzTlRaaw; _hjFirstSeen=1; _hjSession_104392=eyJpZCI6ImVmODlkMzQyLWFlYzAtNGNmNS04YjI0LWQ1NTYzMWY1MTg5ZiIsImNyZWF0ZWQiOjE2NzgyODEwNjkwNzksImluU2FtcGxlIjpmYWxzZX0=; _hjAbsoluteSessionInProgress=0; __gads=ID=abc647fd66a9db2e-224c92b32edc00fd:T=1678281070:RT=1678281070:S=ALNI_MaCz3hRLYTwSm_ao20zhLODOjOSdg; __gpi=UID=00000be8572d9ddf:T=1678281070:RT=1678281070:S=ALNI_MYyUVaWFwQ3hAeweocOefcTuReMpg; _hjSessionUser_104392=eyJpZCI6ImY3NWJkZDc0LWZjN2MtNTIzZi05NjEyLTFkNGQyYzBlYWVmZSIsImNyZWF0ZWQiOjE2NzgyODEwNjkwNzQsImV4aXN0aW5nIjp0cnVlfQ==; _hjIncludedInPageviewSample=1; _hjIncludedInSessionSample_104392=0; _dc_gtm_UA-15167166-1=1; currency=EUR").read
#   html_doc = Nokogiri::HTML.parse(html_file)
#   html_doc.search(".product-name>a").each do |element|
#     url = element[:href]
#     html_file = URI.open(url, "Cookie" => "frontend=t5am7hhirj1r6elehqkrs0vja5; frontend_cid=buPWmTv4PWfNFWJN; external_no_cache=1; CookieConsent={stamp:%27LFhIdeAqXMnt0Vezh90X5cCixjA1Msr++k0E2yqI3mkLQQ8XV4qJ0w==%27%2Cnecessary:true%2Cpreferences:true%2Cstatistics:true%2Cmarketing:true%2Cmethod:%27explicit%27%2Cver:1%2Cutc:1678281069521%2Cregion:%27fr%27}; _gcl_au=1.1.637479544.1678281069; _ga=GA1.3.978133287.1678281038; _gid=GA1.3.999443208.1678281069; _fbp=fb.2.1678281068971.1777825138; _pin_unauth=dWlkPU5EVmxPRFl6WkRRdE9ETm1PQzAwWkRreUxUZzNaalF0TUdNeU5XSTFaREkzTlRaaw; _hjFirstSeen=1; _hjSession_104392=eyJpZCI6ImVmODlkMzQyLWFlYzAtNGNmNS04YjI0LWQ1NTYzMWY1MTg5ZiIsImNyZWF0ZWQiOjE2NzgyODEwNjkwNzksImluU2FtcGxlIjpmYWxzZX0=; _hjAbsoluteSessionInProgress=0; __gads=ID=abc647fd66a9db2e-224c92b32edc00fd:T=1678281070:RT=1678281070:S=ALNI_MaCz3hRLYTwSm_ao20zhLODOjOSdg; __gpi=UID=00000be8572d9ddf:T=1678281070:RT=1678281070:S=ALNI_MYyUVaWFwQ3hAeweocOefcTuReMpg; _hjSessionUser_104392=eyJpZCI6ImY3NWJkZDc0LWZjN2MtNTIzZi05NjEyLTFkNGQyYzBlYWVmZSIsImNyZWF0ZWQiOjE2NzgyODEwNjkwNzQsImV4aXN0aW5nIjp0cnVlfQ==; _hjIncludedInPageviewSample=1; _hjIncludedInSessionSample_104392=0; _dc_gtm_UA-15167166-1=1; currency=EUR").read
#     html_doc = Nokogiri::HTML.parse(html_file)
#     element = html_doc.search(".product-features>ul>li>span")[1]
#     name = element.children.to_s.strip
#     element = html_doc.search(".product-features>ul>li")[1]
#     thickness = element.children.last.text.strip

#     next unless zip?(html_doc)
#     zip = html_doc.search(".product-features>ul>li")[3].children.last.text.strip

#     if html_doc.search(".regular-price").present?
#       price = html_doc.search(".regular-price").first.children[1].text.gsub(/€/,"").to_f
#     else
#       price = html_doc.search(".special-price").first.children[3].children.text.strip.gsub(/€/,"").to_f
#     end
#     image = html_doc.search(".image-zoom>img")
#     image = image.first.attributes["src"].value

#     Wetsuit.create!(url:, name:, thickness:, zip:, price:, image:)
#     sleep(0.5)
#   end
#     if i == 6
#       break
#     end
# end
