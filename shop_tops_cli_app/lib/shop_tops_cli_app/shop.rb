class ShopTopsCliApp::Shop

  attr_accessor :name, :url

  def initialize
    @name = name
    @url = url
  end


  def self.forever
    #Scrape forever21 tops sections and then return products and prices based on the data
    self.scrape_shop
  end

  def self.scrape_shop
    shop = []
    #Go to forever21 tops categeory, find various top sections
    #extract the sections
    #instantiate the top sections
    shop
  end


end
