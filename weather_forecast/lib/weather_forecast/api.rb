class WeatherForecast::API
  attr_accessor

  def self.current_location(latitude,longitude)
    forecast = RESTCLIENT.get('https://api.darksky.net/forecast/8a97fe8519f98871538db916a4f13fde/37.8267,-122.4233')
    
  end

end
