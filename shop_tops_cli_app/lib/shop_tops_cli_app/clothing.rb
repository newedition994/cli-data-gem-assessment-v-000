class ShopTopsCliApp::Clothing

  attr_accessor :name, :url

  @@all = []

  def initialize
    @name = name
    @url = url
  end


  def self.forever
    #Scrape ebay tops sections and then return products and prices based on the data
    self.scrape_shop
  end

  def self.scrape_shop
    clothing = []

    clothing << self.scrape_shoulder
    #Go to ebay tops categeory, find various top sections
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
