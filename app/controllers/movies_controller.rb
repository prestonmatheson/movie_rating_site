class MoviesController < ApplicationController

  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def rating
  end

  def new
    @movie = Movie.new
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def create
    @movie = Movie.new(movie_params)
    respond_to do |format|
      if @movie.save
        format.html { redirect_to movies_path, notice: 'Your movie was created.' }
      else 
        format.html { render :new }
      end 
    end
  end

  def update
    redirect_to movies_path, notice: 'Your movie was updated.'
  end

  def destroy
    @movie = Movie.find(params[:id])

    @movie.destroy

    respond_to do |format|
      format.html { redirect_to movies_url, notice: 'Movie was deleted.' }
    end
  end

  private
  def movie_params
    params.require(:movie).permit(:title, :body)
  end  

end
