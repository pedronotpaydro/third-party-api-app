class Api::HolidaysController < ApplicationController
  def index
    response = HTTP.get("https://holidayapi.com/v1/holidays?pretty&key=#{Rails.application.credentials.holiday_api[:api_key]}&country=US&year=2019")
    render json: response.parse
  end
end
