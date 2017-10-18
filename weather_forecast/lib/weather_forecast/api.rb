class WeatherForecast::API
  attr_accessor :forecast_hash

  def self.current_location(latitude,longitude)
    forecast = RestClient.get('https://api.darksky.net/forecast/8a97fe8519f98871538db916a4f13fde/37.8267,-122.4233')
    @forecast_hash = JSON.parse(forecast)
    binding.pry
    @forecast_hash["currently"].each do |fore_info|
      WeatherForecast::Forecast.new_from_json(fore_info)
    end
  end

  def method_name
    
  end
end
