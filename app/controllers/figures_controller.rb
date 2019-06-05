class FiguresController < ApplicationController
  set :views, './app/views/figures'
  #index
  get '/figures' do 
    @figures = Figure.all
    erb :index
  end
  get '/figures/new' do
    @titles = Title.all
    @landmarks = Landmark.all
    erb :new
  end
  post '/figures' do
    # binding.pry
    Figure.create(params)

  end
end
