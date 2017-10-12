 class ShopTopsCliApp::Scraper

  def get_page
    Nokogiri::HTML(open("https://www.ebay.com/b/Womens-Tops-Blouses/53159/bn_661824"))
  end

  def scrape_tops
    self.get_page.css("div#x-carousel li")[0..4]
  end

  def choose_top_types
    scrape_tops.each do |t|
      ShopTopsCliApp::Clothing.new_from_index_page(t)
    end
  end

  #def self.scrape_shoulder
    #doc = Nokogiri::HTML(open("https://www.ebay.com/b/Womens-Tops-Blouses/53159/bn_661824"))
    #name = doc.search('a.b-guidancecard__link').text
    #url = 5.times do |i|
        #puts doc.css('a.b-guidancecard__link')[i].attribute('href').text
      #end
    #binding.pry
  #end



end
