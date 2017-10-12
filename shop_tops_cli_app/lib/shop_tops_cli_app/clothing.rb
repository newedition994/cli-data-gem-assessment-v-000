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


  def initialize(name=nil, url=nil, price=nil)
    @name = name
    @url = url
    @price = price
    @@all << self
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

  def top_name
    @name ||= doc.css("").text
  end

  def top_url
    @url ||= doc.css("").text
  end

  def top_price
    @price ||= doc.css("").text
  end


end
