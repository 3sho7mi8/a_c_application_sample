class Scrapingon
  require "nokogiri"
  require "open-uri"

  attr_accessor :url, :doc

  def initialize(url, id)
    @url = url
    @html = open(@url, "r:binary", "User-Agent" => "Googlebot/2.1").read
    @doc = Nokogiri::HTML(@html, nil, "utf-8")
    @id = id
  end

  def title
    eval <<~RUBY
      #{GetExhibition.find(@id).title}
    RUBY
  end

  def description
    eval <<~RUBY
      #{GetExhibition.find(@id).description}
    RUBY
  end

  def image
    eval <<~RUBY
      #{GetExhibition.find(@id).image}
    RUBY
  end

  def note
    eval <<~RUBY
      #{GetExhibition.find(@id).note}
    RUBY
  end
end
