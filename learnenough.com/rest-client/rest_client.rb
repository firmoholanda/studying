# frozen_string_literal: true

require 'rest-client'
require 'nokogiri'

# retrieve the keyword from the user
# search for it
# return the results
class BingSearch
  URL = 'https://www.bing.com/search?q='

  def search
    puts 'Enter the keyword you want to search for: '
    @key_word = gets.chomp
    word = "#{URL}#{@key_word}"
    @response = RestClient.get word
  end

  def show
    puts 'code:'    + @response.code.to_s
    puts 'headers:' + @response.headers.to_s
    puts 'cookies:' + @response.cookies.to_s
    puts 'history:' + @response.history.to_s
    puts 'body:'    + @response.body
  end

  def save_files
    # write file dump file to local dir
    File.write('body.html', @response.body.to_s)
  end

  def display__search_links
    # parse html with nokogiri
    puts @parsed_data = Nokogiri::HTML.parse(@response.body.to_s)

    # get all lins from response.body
    nodeset = @parsed_data.xpath('//a')
    nodeset.map { |element| element['href'] }.compact
  end

  def display_search_title
    # get search title
    puts @parsed_data.title
  end
end

test = BingSearch.new

test.search
test.save_files
test.show
test.display_search_links
test.display_search_title
