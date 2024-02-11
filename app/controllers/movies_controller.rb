class MoviesController < ApplicationController
  skip_before_action :authorize_request

  def index
    @movies = Movie.all
    render json: @movies, each_serializer: MovieSerializer
  end

  def show
    @movie = Movie.find(params[:id])
    render json: @movie, serializer: MovieSerializer
  rescue ActiveRecord::RecordNotFound => error
    render json: { error: error.message }, status: :not_found
  end
end
