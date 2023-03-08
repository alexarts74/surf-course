Surfboard.create(url: "https://www.boardshop.co.uk/love-machine-fm-surfboard-6ft-9-futures-fcs-green-tint", name: "Love Machine FM surfboard 6ft 9 Futures FCS - Green Tint", level: "Intermediate/Advanced", volume: 42.12, dimension_length: 6.9, dimension_height: 21, dimension_thickness: 2.75, price: 1042.84, image: "https://assets.boardshop.co.uk/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/l/o/love-machine-fm-surfboard-futures-fcs-fins-green-j_1.jpg")
Wetsuit.create(url: "https://www.boardshop.co.uk/vissla-high-seas-no-zip-4-3mm-wetsuit-charcoal", name: "Vissla High Seas No Zip 4/3mm Wetsuit - Charcoal", thickness: 4/3, zip: "No Zip", price: 290.00, image: "https://assets.boardshop.co.uk/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/v/i/vissla-high-seas-no-zip-4-3-wetsuit-charcoal-a.jpg")

# require "open-uri"
# require "nokogiri"

# i = 0
# loop do
#   i += 1
#   puts i
#   url = "https://www.boardshop.co.uk/surfboards?p=#{i}"
#   html_file = URI.open(url).read
#   html_doc = Nokogiri::HTML.parse(html_file)
#   html_doc.search(".product-name>a").each do |element|
#     url = element[:href]
#     html_file = URI.open(url).read
#     html_doc = Nokogiri::HTML.parse(html_file)
#     element = html_doc.search(".product-features>ul>li>span")[1]
#     name = element.children.to_s.strip
#     element = html_doc.search(".product-features>ul>li")[1]
#     level = element.children.last.text.strip
#     element = html_doc.search(".product-features>ul>li")[2]
#     volume = element.children.last.text.strip
#     element = html_doc.search(".product-features>ul>li")[5]
#     dimensions = element.children.last.text.strip
#     price = html_doc.search(".regular-price")
#     price = price.text.strip
#     image = html_doc.search(".image-zoom>img")
#     image = image.first.attributes["src"].value
# sleep(0.5)

#   end
#   if i == 5
#     break
#   end
# end

# i = 0
# loop do
#   i += 1
#   puts i
#   url = "https://www.boardshop.co.uk/wetsuits?p=#{i}"
#   html_file = URI.open(url).read
#   html_doc = Nokogiri::HTML.parse(html_file)
#   html_doc.search(".product-name>a").each do |element|
#     url = element[:href]
#     html_file = URI.open(url).read
#     html_doc = Nokogiri::HTML.parse(html_file)
#     element = html_doc.search(".product-features>ul>li>span")[1]
#     name = element.children.to_s.strip
#     element = html_doc.search(".product-features>ul>li")[1]
#     thickness = element.children.last.text.strip
#     element = html_doc.search(".product-features>ul>li")[3]
#     zip = element.children.last.text.strip

#     if html_doc.search(".regular-price").present?
#       price = html_doc.search(".regular-price").first.children[1].text

#     else
#       price = html_doc.search(".special-price").first.children[3].children.text.strip
#     end

#     image = html_doc.search(".image-zoom>img")
#     image = image.first.attributes["src"].value

#   end
#   if i == 5
#     break
# sleep(0.5)
#   end
# end
