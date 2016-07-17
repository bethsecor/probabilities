require 'sinatra'
require_relative 'models/probabilities'
require 'pry'

get '/' do
  erb :two_by_two_form
end

get '/results' do
  table = params[:params]
  odds_ratio = Probabilities.new([[table[:a].to_i, table[:b].to_i],
                                  [table[:c].to_i,table[:d].to_i]]).odds_ratio
  erb :results, locals: { odds_ratio: odds_ratio }
end
