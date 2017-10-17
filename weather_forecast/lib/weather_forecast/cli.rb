class WeatherForecast::CLI

  def call
    puts "welcome to the weather api"
    puts "please enter your latitude:"
    latitude = gets.strip.to_f
    puts "please enter your longitude:"
    longitude = gets.strip.to_f
    WeatherForecast::API.current_location(latitude,longitude)
  end

#Do NOT forget to edit the WeatherForecast spec file. Record up to 30 minutes of code work for the project. Update blog post and link to repo. Look at the videos for assistance with completing the project and attend the study group for more insight on how to complete the second section of the project to move on to the next section by wednesday.

end
