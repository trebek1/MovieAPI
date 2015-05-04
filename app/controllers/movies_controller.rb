class MoviesController < ApplicationController
  def index
    @movies = Movie.all

    	search = params[:q]
		
		if search 

			render json: @movies = Movie.find_by_title(params[:q])
			#@movies = Movie.where(title: search)
		else
			@movies = []
		end
  end

  def show
  end

  def new
  end

  def movies
  end

  def edit
  end
end
