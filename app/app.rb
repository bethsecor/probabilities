require 'sinatra'
require_relative 'models/probabilities'

get '/' do
  erb :two_by_two_form
end

get '/results' do
  odds_ratio = Probabilities.new([[params[:a].to_i, params[:b].to_i], [params[:c].to_i, params[:d].to_i]]).odds_ratio
  erb :results, locals: { odds_ratio: odds_ratio }
end
