class ShopTopsCliApp::Shop

  attr_accessor :name, :url

  def initialize
    @name = name
    @url = url
  end


  def self.forever
    #Scrape ebay tops sections and then return products and prices based on the data
    self.scrape_shop
  end

  def self.scrape_shop
    shop = []

    shop << self.scrape_ebay
    #Go to ebay tops categeory, find various top sections
    #extract the sections
    #instantiate the top sections
    shop
  end

  def self.scrape_ebay
    doc = Nokogiri::HTML(open("https://www.ebay.com/b/Womens-Tops-Blouses/53159/bn_661824"))
    name = doc.search('p.b-guidancecard__title')[0..4].text.strip
    url = doc.search('a.b-guidancecard__link').first.attr('href')
    #binding.pry
  end

end
