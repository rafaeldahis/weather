class API::CitiesController < ApplicationController
	def show

		url = 'http://api.openweathermap.org/data/2.5/forecast/city?q='+params[:id]+'&APPID=4f430a5d7c4d95319f3e704ea29aa5a2'
		response = HTTParty.get(url)
		parsed = response.parsed_response
		
		if parsed
			@city = City.where(name: params[:id]).first_or_create

			@city.name = parsed["city"]["name"]
			@city.temperature = parsed["list"][0]["main"]["temp"]
			@city.conditions = parsed["list"][0]["weather"][0]["description"]
			@city.image = ""
			@city.save!
			
			render json: @city

		end
  end

end