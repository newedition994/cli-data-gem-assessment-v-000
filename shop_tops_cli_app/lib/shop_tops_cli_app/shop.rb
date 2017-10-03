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
    #Go to forever21 tops categeory, find various top sections
    #extract the sections
    #instantiate the top sections
    shop
  end

  def self.scrape_ebay
    doc = Nokogiri::HTML(open("https://www.ebay.com/b/Off-Shoulder-Sleeve-Tops-Blouses-for-Women/53159/bn_5219291"))
    name = doc.search('h1.b-pageheader').text
    #sleep 15
    binding.pry
  end

end
