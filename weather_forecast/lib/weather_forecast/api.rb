class WeatherForecast::API
  attr_accessor :forecast_hash, :forecast

  def self.current_location(latitude,longitude, location)
    forecast = RestClient.get(` echo $key`)
    @forecast_hash = JSON.parse(forecast)
      WeatherForecast::Forecast.new_from_json(@forecast_hash["currently"], location)
  end

end
#`$key`
