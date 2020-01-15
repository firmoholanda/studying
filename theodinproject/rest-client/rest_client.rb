require 'rest-client'

response = RestClient.post "https://www.bing.com/", :param1 => "search?q=ruby"

#response = RestClient.get "https://www.bing.com/search?q=ruby"

#puts "Getting data from #{some_site}"
puts "code:"
puts response.code
puts "\nheaders:"
puts response.headers
puts "\ncookies:"
puts response.cookies
puts "\nhistory:"
puts response.history

puts response