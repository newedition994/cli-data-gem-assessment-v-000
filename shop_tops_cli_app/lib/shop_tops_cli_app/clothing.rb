class ShopTopsCliApp::Clothing

  attr_accessor :name, :url, :price

  @@all = []

#The following is all based on the best restaurant cli example and is all subject to change this is all just an outline to get more information for the project.

  def new_from_index_page(t)
    self.new(
      t.css("h3").text,
      "http://www.ebay.com#{t.css("a").attribute("href").text}",
      t.css("span.s-item__price").text
    )
  end


  def initialize
    @name = name
    @url = url
    @price = price
  end

  def self.all
    @@all
  end

  def self.forever
    #Scrape ebay tops sections and then return products and prices based on the data
    self.scrape_shop
  end

  def self.scrape_shop
    clothing = []

    clothing << self.scrape_shoulder
    #extract the sections
    #instantiate the top sections
    clothing
  end

  def self.scrape_shoulder
    doc = Nokogiri::HTML(open("https://www.ebay.com/b/Womens-Tops-Blouses/53159/bn_661824"))
    name = doc.search('a.b-guidancecard__link').text
    url = 5.times do |i|
        puts doc.css('a.b-guidancecard__link')[i].attribute('href').text
      end
    binding.pry
  end


end
