require "open-uri"
require "nokogiri"


board = ""
url = "https://www.boardshop.co.uk/#{board}"

html_file = URI.open(url).read
html_doc = Nokogiri::HTML.parse(html_file)

html_doc.search(".product-features/ul/li/span").each do |element|
  name = element.text.strip
  level = element.text.strip
  volume = element.text.strip
  dimensions = element.text.strip

  Surfboard.create(name: name, level: level, volume: volume, dimensions: dimensions)
end
