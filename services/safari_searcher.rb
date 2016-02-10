require 'net/http'
require 'byebug'

class SafariSearcher
  attr_reader :query, :page

  def initialize(query, page=0)
    @query = query
    @page = page
  end

  # Make call to SafariBooks API
  # @return [Array] containing books and their information
  def commit
    safari_books = JSON.parse(fetch_safari_results)

    safari_books["results"]
  end

  private

  def fetch_safari_results
    uri = URI("https://www.safaribooksonline.com/api/v2/search/?query=#{@query}&sort=relevance&page=#{@page}")
    response = Net::HTTP.get(uri)
  end
end
