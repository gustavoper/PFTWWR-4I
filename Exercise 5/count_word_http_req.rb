#count_word_http_req.rb
require 'open-uri'
require 'nokogiri'
require 'hpricot'
require 'net/http'

url = "http://satishtalim.github.com/webruby/chapter3.html"

REGEXP = /\bthe\b/

#1 - using NET/HTTP Library and URI

netUri = URI(url)
pageBody =  Net::HTTP.get(netUri).scan(REGEXP).count.to_s()
netResult =  "Via Net/HTTP Library and URI: " + pageBody


#2 - using open-uri

openUriResponse = open(url).readlines.join
pageBody = openUriResponse.scan(REGEXP).count.to_s()
openUriResult = "Via open-Uri:  " + pageBody


#3 - using Hpricot

hpricotReq = Hpricot(open(url))
hpricotReponse = hpricotReq.inner_html.scan(REGEXP).count.to_s()
hpricotResult = "via Hpricot: " + hpricotReponse

#4 - using Nokogiri
nokogiriReq = Nokogiri::HTML(open(url))
nokogiriResp = "Via Nokogiri:" +nokogiriReq.text.scan(REGEXP).count.to_s()




#results
puts netResult
puts openUriResult
puts hpricotResult
puts nokogiriResp
