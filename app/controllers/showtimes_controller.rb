class ShowtimesController < ApplicationController
  skip_before_action :authorize_request

  def index
    @showtimes = Showtime.find_by(movie_id: params[:movie_id])
    render json: @showtimes, serializer: ShowtimeSerializer
  end

  def show
    @showtime = Showtime.find(params[:id])
    render json: @showtime, serializer: ShowtimeSerializer
  rescue ActiveRecord::RecordNotFound => error
    render json: { error: error.message }, status: :not_found
  end
end
