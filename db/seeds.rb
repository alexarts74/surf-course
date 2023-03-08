require "open-uri"
require "nokogiri"

i = 0
loop do
  i += 1
  puts i
  url = "https://www.boardshop.co.uk/surfboards?p=#{i}"

  html_file = URI.open(url, "Cookie" => "frontend=t5am7hhirj1r6elehqkrs0vja5; frontend_cid=buPWmTv4PWfNFWJN; external_no_cache=1; CookieConsent={stamp:%27LFhIdeAqXMnt0Vezh90X5cCixjA1Msr++k0E2yqI3mkLQQ8XV4qJ0w==%27%2Cnecessary:true%2Cpreferences:true%2Cstatistics:true%2Cmarketing:true%2Cmethod:%27explicit%27%2Cver:1%2Cutc:1678281069521%2Cregion:%27fr%27}; _gcl_au=1.1.637479544.1678281069; _ga=GA1.3.978133287.1678281038; _gid=GA1.3.999443208.1678281069; _fbp=fb.2.1678281068971.1777825138; _pin_unauth=dWlkPU5EVmxPRFl6WkRRdE9ETm1PQzAwWkRreUxUZzNaalF0TUdNeU5XSTFaREkzTlRaaw; _hjFirstSeen=1; _hjSession_104392=eyJpZCI6ImVmODlkMzQyLWFlYzAtNGNmNS04YjI0LWQ1NTYzMWY1MTg5ZiIsImNyZWF0ZWQiOjE2NzgyODEwNjkwNzksImluU2FtcGxlIjpmYWxzZX0=; _hjAbsoluteSessionInProgress=0; __gads=ID=abc647fd66a9db2e-224c92b32edc00fd:T=1678281070:RT=1678281070:S=ALNI_MaCz3hRLYTwSm_ao20zhLODOjOSdg; __gpi=UID=00000be8572d9ddf:T=1678281070:RT=1678281070:S=ALNI_MYyUVaWFwQ3hAeweocOefcTuReMpg; _hjSessionUser_104392=eyJpZCI6ImY3NWJkZDc0LWZjN2MtNTIzZi05NjEyLTFkNGQyYzBlYWVmZSIsImNyZWF0ZWQiOjE2NzgyODEwNjkwNzQsImV4aXN0aW5nIjp0cnVlfQ==; _hjIncludedInPageviewSample=1; _hjIncludedInSessionSample_104392=0; _dc_gtm_UA-15167166-1=1; currency=EUR").read
  html_doc = Nokogiri::HTML.parse(html_file)
  html_doc.search(".product-name>a").each do |element|
    url = element[:href]
    html_file = URI.open(url, "Cookie" => "frontend=t5am7hhirj1r6elehqkrs0vja5; frontend_cid=buPWmTv4PWfNFWJN; external_no_cache=1; CookieConsent={stamp:%27LFhIdeAqXMnt0Vezh90X5cCixjA1Msr++k0E2yqI3mkLQQ8XV4qJ0w==%27%2Cnecessary:true%2Cpreferences:true%2Cstatistics:true%2Cmarketing:true%2Cmethod:%27explicit%27%2Cver:1%2Cutc:1678281069521%2Cregion:%27fr%27}; _gcl_au=1.1.637479544.1678281069; _ga=GA1.3.978133287.1678281038; _gid=GA1.3.999443208.1678281069; _fbp=fb.2.1678281068971.1777825138; _pin_unauth=dWlkPU5EVmxPRFl6WkRRdE9ETm1PQzAwWkRreUxUZzNaalF0TUdNeU5XSTFaREkzTlRaaw; _hjFirstSeen=1; _hjSession_104392=eyJpZCI6ImVmODlkMzQyLWFlYzAtNGNmNS04YjI0LWQ1NTYzMWY1MTg5ZiIsImNyZWF0ZWQiOjE2NzgyODEwNjkwNzksImluU2FtcGxlIjpmYWxzZX0=; _hjAbsoluteSessionInProgress=0; __gads=ID=abc647fd66a9db2e-224c92b32edc00fd:T=1678281070:RT=1678281070:S=ALNI_MaCz3hRLYTwSm_ao20zhLODOjOSdg; __gpi=UID=00000be8572d9ddf:T=1678281070:RT=1678281070:S=ALNI_MYyUVaWFwQ3hAeweocOefcTuReMpg; _hjSessionUser_104392=eyJpZCI6ImY3NWJkZDc0LWZjN2MtNTIzZi05NjEyLTFkNGQyYzBlYWVmZSIsImNyZWF0ZWQiOjE2NzgyODEwNjkwNzQsImV4aXN0aW5nIjp0cnVlfQ==; _hjIncludedInPageviewSample=1; _hjIncludedInSessionSample_104392=0; _dc_gtm_UA-15167166-1=1; currency=EUR" ).read
    html_doc = Nokogiri::HTML.parse(html_file)
    element = html_doc.search(".product-features>ul>li>span")[1]
    name = element.children.to_s.strip
    element = html_doc.search(".product-features>ul>li")[1]
    level = element.children.last.text.strip
    element = html_doc.search(".product-features>ul>li")[2]
    volume = element.children.last.text.strip.to_f
    element = html_doc.search(".product-features>ul>li")[5]
    dimension_length = element.children.last.text.strip.split('x').first&.gsub(/ft /,".")&.strip&.to_f
    element = html_doc.search(".product-features>ul>li")[5]
    dimension_height = element.children.last.text.strip.split('x')[1]&.gsub(/ft /,".")&.strip&.to_f
    dimension_thickness = html_doc.search(".product-features>ul>li")[5].children.last.text.strip.split('x')[2]&.gsub(/ft /,".")&.strip&.to_f
    price = html_doc.search(".regular-price")
    price = price.text.strip.gsub(/€/,"").to_f
    image = html_doc.search(".image-zoom>img")
    image = image.first.attributes["src"].value

    # datas = {
    #   url: url,
    #   name: name,
    #   level: level,
    #   volume: volume,
    #   dimension_length: dimension_length,
    #   dimension_height: dimension_height,
    #   dimension_thickness: dimension_thickness,
    #   price: price,
    #   image: image
    # }
    # ap datas

    # Surfboard.create(url: url, name: name, level: level, volume: volume, dimension_length: dimension_length, dimension_height: dimension_height, dimension_thickness: dimension_thickness, price: price, image: image)

    sleep(0.5)
  end
  # binding.pry
   if i == 5
     break
   end
end

i = 0
loop do
  i += 1
  puts i
  url = "https://www.boardshop.co.uk/wetsuits?p=#{i}"
  html_file = URI.open(url, "Cookie" => "frontend=t5am7hhirj1r6elehqkrs0vja5; frontend_cid=buPWmTv4PWfNFWJN; external_no_cache=1; CookieConsent={stamp:%27LFhIdeAqXMnt0Vezh90X5cCixjA1Msr++k0E2yqI3mkLQQ8XV4qJ0w==%27%2Cnecessary:true%2Cpreferences:true%2Cstatistics:true%2Cmarketing:true%2Cmethod:%27explicit%27%2Cver:1%2Cutc:1678281069521%2Cregion:%27fr%27}; _gcl_au=1.1.637479544.1678281069; _ga=GA1.3.978133287.1678281038; _gid=GA1.3.999443208.1678281069; _fbp=fb.2.1678281068971.1777825138; _pin_unauth=dWlkPU5EVmxPRFl6WkRRdE9ETm1PQzAwWkRreUxUZzNaalF0TUdNeU5XSTFaREkzTlRaaw; _hjFirstSeen=1; _hjSession_104392=eyJpZCI6ImVmODlkMzQyLWFlYzAtNGNmNS04YjI0LWQ1NTYzMWY1MTg5ZiIsImNyZWF0ZWQiOjE2NzgyODEwNjkwNzksImluU2FtcGxlIjpmYWxzZX0=; _hjAbsoluteSessionInProgress=0; __gads=ID=abc647fd66a9db2e-224c92b32edc00fd:T=1678281070:RT=1678281070:S=ALNI_MaCz3hRLYTwSm_ao20zhLODOjOSdg; __gpi=UID=00000be8572d9ddf:T=1678281070:RT=1678281070:S=ALNI_MYyUVaWFwQ3hAeweocOefcTuReMpg; _hjSessionUser_104392=eyJpZCI6ImY3NWJkZDc0LWZjN2MtNTIzZi05NjEyLTFkNGQyYzBlYWVmZSIsImNyZWF0ZWQiOjE2NzgyODEwNjkwNzQsImV4aXN0aW5nIjp0cnVlfQ==; _hjIncludedInPageviewSample=1; _hjIncludedInSessionSample_104392=0; _dc_gtm_UA-15167166-1=1; currency=EUR").read
  html_doc = Nokogiri::HTML.parse(html_file)
  html_doc.search(".product-name>a").each do |element|
    url = element[:href]
    html_file = URI.open(url, "Cookie" => "frontend=t5am7hhirj1r6elehqkrs0vja5; frontend_cid=buPWmTv4PWfNFWJN; external_no_cache=1; CookieConsent={stamp:%27LFhIdeAqXMnt0Vezh90X5cCixjA1Msr++k0E2yqI3mkLQQ8XV4qJ0w==%27%2Cnecessary:true%2Cpreferences:true%2Cstatistics:true%2Cmarketing:true%2Cmethod:%27explicit%27%2Cver:1%2Cutc:1678281069521%2Cregion:%27fr%27}; _gcl_au=1.1.637479544.1678281069; _ga=GA1.3.978133287.1678281038; _gid=GA1.3.999443208.1678281069; _fbp=fb.2.1678281068971.1777825138; _pin_unauth=dWlkPU5EVmxPRFl6WkRRdE9ETm1PQzAwWkRreUxUZzNaalF0TUdNeU5XSTFaREkzTlRaaw; _hjFirstSeen=1; _hjSession_104392=eyJpZCI6ImVmODlkMzQyLWFlYzAtNGNmNS04YjI0LWQ1NTYzMWY1MTg5ZiIsImNyZWF0ZWQiOjE2NzgyODEwNjkwNzksImluU2FtcGxlIjpmYWxzZX0=; _hjAbsoluteSessionInProgress=0; __gads=ID=abc647fd66a9db2e-224c92b32edc00fd:T=1678281070:RT=1678281070:S=ALNI_MaCz3hRLYTwSm_ao20zhLODOjOSdg; __gpi=UID=00000be8572d9ddf:T=1678281070:RT=1678281070:S=ALNI_MYyUVaWFwQ3hAeweocOefcTuReMpg; _hjSessionUser_104392=eyJpZCI6ImY3NWJkZDc0LWZjN2MtNTIzZi05NjEyLTFkNGQyYzBlYWVmZSIsImNyZWF0ZWQiOjE2NzgyODEwNjkwNzQsImV4aXN0aW5nIjp0cnVlfQ==; _hjIncludedInPageviewSample=1; _hjIncludedInSessionSample_104392=0; _dc_gtm_UA-15167166-1=1; currency=EUR").read
    html_doc = Nokogiri::HTML.parse(html_file)
    element = html_doc.search(".product-features>ul>li>span")[1]
    name = element.children.to_s.strip
    element = html_doc.search(".product-features>ul>li")[1]
    thickness = element.children.last.text.strip
    element = html_doc.search(".product-features>ul>li")[3]
    zip = element.children.last.text.strip

    if html_doc.search(".regular-price").present?
      price = html_doc.search(".regular-price").first.children[1].text.gsub(/€/,"").to_f

    else
      price = html_doc.search(".special-price").first.children[3].children.text.strip.gsub(/€/,"").to_f

    end


    # datas = {
    #   url: url,
    #   name: name,
    #   thickness: thickness,
    #   zip: zip,
    #   price: price,
    #   image: image
    # }
    # ap datas

    # Wetsuit.create(url: url, name: name, thickness: thickness, zip: zip, price: price, image: image)
    sleep(0.5)
  end
    if i == 3
      break
    end
end
