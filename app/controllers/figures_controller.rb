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
    binding.pry
    figure = Figure.create(name: params[:figure], title_ids: params[:title], landmark_ids: params[:landmarks])
    if (params["name"] != "")
      new_landmark = Landmark.create(name: params[:name], year_completed: params[:year].to_i)
      figure.landmarks << new_landmark
    end
    redirect '/figures'
  end
end
