 class ShopTopsCliApp::Scraper

  def get_page
    Nokogiri::HTML(open("https://www.ebay.com/b/Womens-Tops-Blouses/53159/bn_661824"))
  end

  def scrape_tops

  end

  def choose_top_types

  end




end
