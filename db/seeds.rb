require "open-uri"
require "nokogiri"

# url = "https://www.boardshop.co.uk/surfboards?p=1"
# html_file = URI.open(url).read
# html_doc = Nokogiri::HTML.parse(html_file)
# html_doc.search(".product-name>a").each do |element|
#   url = element[:href]
#   html_file = URI.open(url).read
#   html_doc = Nokogiri::HTML.parse(html_file)
#   element = html_doc.search(".product-features>ul>li>span")[1]
#   name = element.children.to_s.strip
#   element = html_doc.search(".product-features>ul>li")[1]
#   level = element.children.last.text.strip
#   element = html_doc.search(".product-features>ul>li")[2]
#   volume = element.children.last.text.strip
#   element = html_doc.search(".product-features>ul>li")[5]
#   dimensions = element.children.last.text.strip
#   price = html_doc.search(".regular-price")
#   price = price.text.strip
#   image = html_doc.search(".image-zoom>img")
#   image = image.first.attributes["src"].value

#   datas = {
  #     url: url,
  #     name: name,
  #     level: level,
  #     volume: volume,
#     dimensions: dimensions,
#     price: price,
#     image: image
#   }

#   ap datas
#   sleep(0.5)
# end

url = "https://www.boardshop.co.uk/wetsuits?p=1"
html_file = URI.open(url).read
html_doc = Nokogiri::HTML.parse(html_file)
html_doc.search(".product-name>a").each do |element|
  url = element[:href]
  html_file = URI.open(url).read
  html_doc = Nokogiri::HTML.parse(html_file)
  element = html_doc.search(".product-features>ul>li>span")[1]
  name = element.children.to_s.strip
  element = html_doc.search(".product-features>ul>li")[1]
  thickness = element.children.last.text.strip
  element = html_doc.search(".product-features>ul>li")[3]
  zip = element.children.last.text.strip

  if html_doc.search(".regular-price").present?
    price = html_doc.search(".regular-price").first.children[1].text

  else
    price = html_doc.search(".special-price").first.children[3].children.text.strip
  end

  image = html_doc.search(".image-zoom>img")
  image = image.first.attributes["src"].value
    sleep(0.5)

    datas = {
      url: url,
      name: name,
      thickness: thickness,
      zip: zip,
      price: price,
      image: image
    }
    ap datas
  end

#   Surfboard.create(name: name, level: level, volume: volume, dimensions: dimensions)
# end
