require "open-uri"
require "nokogiri"

ingredient = "chocolate"
url = "https://www.bbcgoodfood.com/search/recipes?q=#{ingredient}"

html_file = URI.open(url).read
html_doc = Nokogiri::HTML.parse(html_file)

html_doc.search(".standard-card-new__article-title").each do |element|
  puts element.text.strip
  puts element.attribute("href").value
  name = element.text.strip
  link = element.attribute("href").value

  Surfboard.create(name: name, link: link)
end
