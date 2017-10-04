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

    shop << self.scrape_shoulder
    shop << self.scrape_blouses
    shop << self.scrape_tunic
    shop << self.scrape_tank
    shop << self.scrape_button
    #Go to ebay tops categeory, find various top sections
    #extract the sections
    #instantiate the top sections
    shop
  end

  def self.scrape_shoulder
    doc = Nokogiri::HTML(open("https://www.ebay.com/b/Womens-Off-Shoulder-Tops-Blouses/53159/bn_651757"))
    name = doc.search('p.b-guidancecard__title')[0].text.strip
    #url = doc.search('a.b-guidancecard__link').first.attr('href')
    binding.pry
  end

  def self.scrape_blouses
    doc = Nokogiri::HTML(open("https://www.ebay.com/b/Womens-Blouses/53159/bn_649768"))
    #shop.name =
    #shop.url =
  end

  def self.scrape_tunic
    doc = Nokogiri::HTML(open("https://www.ebay.com/b/Tunic-Tops/53159/bn_635701"))
    #shop.name =
    #shop.url =
  end

  def self.scrape_tank
    doc = Nokogiri::HTML(open("https://www.ebay.com/b/Womens-Tank-Cami-Tops-Blouses/53159/bn_652021"))
    #shop.name =
    #shop.url =
  end

  def self.scrape_button
    doc = Nokogiri::HTML(open("https://www.ebay.com/b/Button-Down-Shirts-for-Women/53159/bn_628831"))
    #shop.name =
    #shop.url =
  end

end
