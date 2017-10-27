class Scrapingon
  require "nokogiri"
  require "open-uri"

  attr_accessor :url

  def initialize(url)
    @url = url
    @html = open(@url, "r:binary", "User-Agent" => "Googlebot/2.1").read
    @doc = Nokogiri::HTML(@html, nil, "utf-8")
  end

  def image
  end
end
