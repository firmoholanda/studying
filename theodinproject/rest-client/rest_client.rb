require 'rest-client'

response = RestClient.get "https://www.bing.com/search?q=ruby"

puts "code:"    + response.code.to_s
puts "headers:" + response.headers.to_s
puts "cookies:" + response.cookies.to_s
puts "history:" + response.history.to_s
puts "body:"    + response.body
