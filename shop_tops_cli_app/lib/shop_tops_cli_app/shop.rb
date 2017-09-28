class ShopTopsCliApp::Shop

  attr_accessor :name, :url

  def initialize(name, url)
    @name = name
    @url = url
  end


  def self.forever
    #should return a bunch of instances of categories
    puts <<~HEREDOC
      1. Lace-Up
      2. Tees & Tanks
      3. Shirts & Blouses
      4. Sweaters & Cardigans
      5. Going Out Tops
    HEREDOC
    shop_1 = Shop.new
    shop_1.name = "Lace-Up"
    shop_1.url = "https://www.forever21.com/us/shop/Catalog/Category/f21/top_blouses-lace-up"

    shop_2 = Shop.new
    shop_2.name = "Tees & Tanks"
    shop_2.url = "https://www.forever21.com/us/shop/Catalog/Category/f21/top_t-shirts"

    shop_3 = Shop.new
    shop_3.name = "Shits & Blouses"
    shop_3.url = "https://www.forever21.com/us/shop/Catalog/Category/f21/top_blouses-shirts"

    shop_4 = Shop.new
    shop_4.name = "Sweaters & Cardigans"
    shop_4.url = "https://www.forever21.com/us/shop/Catalog/Category/f21/sweater"

    shop_5 = Shop.new
    shop_5.name = "Going Out Tops"
    shop_5.url = "https://www.forever21.com/us/shop/Catalog/Category/f21/top_going-out-tops"

    [shop_1, shop_2, shop_3, shop_4, shop_5]

  end


end
