class ShopTopsCliApp::CLI

  def call
    puts "Check out these cute Tops:"
    list_types
  end

  def list_types
    puts <<~HEREDOC
      1. Lace-Up
      2. Tees & Tanks
      3. Shirts & Blouses
      4. Sweaters & Cardigans
      5. Going Out Tops
    HEREDOC
  end


end
