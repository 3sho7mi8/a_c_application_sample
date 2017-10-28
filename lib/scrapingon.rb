class Scrapingon
  require "nokogiri"
  require "open-uri"

  attr_accessor :url

  def initialize(url, id)
    @url = url
    @html = open(@url, "r:binary", "User-Agent" => "Googlebot/2.1").read
    @doc = Nokogiri::HTML(@html, nil, "utf-8")
    @id = id
  end

  def title
    eval <<-end_eval
      @doc.#{Condition.find(@id).get_title}
    end_eval
  end
end
