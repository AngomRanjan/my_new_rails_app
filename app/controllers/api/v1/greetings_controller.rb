class Api::V1::GreetingsController < ApplicationController
  def index
    @greeting = Greeting.find_by(id: rand(1..5))
    if @greeting
      render json: @greeting
    else
      json_response({ msg: 'no post or user found' }, 400)
    end
  end
end
