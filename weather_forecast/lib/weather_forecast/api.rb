class WeatherForecast::API
  attr_accessor :forecast_hash, :forecast

  def self.current_location(latitude,longitude, location)
    forecast = RestClient.get("https://api.darksky.net/forecast/8a97fe8519f98871538db916a4f13fde/#{latitude},#{longitude}")
    @forecast_hash = JSON.parse(forecast)
      WeatherForecast::Forecast.new_from_json(@forecast_hash["currently"], location)
  end

end
