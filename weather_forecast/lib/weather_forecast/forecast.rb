class WeatherForecast::Forecast
  attr_reader
  @@all = []

  def self.new_from_json(fore_info)
    self.new(
    fore_info[""],
    fore_info[""],
    fore_info[""]
    )
  end

  def initialize()

    @@all << self
  end

  def self.all
    @@all
  end

  def self.find()
    self.all[]
  end

end
