class ShowtimeSerializer < ActiveModel::Serializer
  attributes :id, :date, :start_time, :end_time, :available_seats
  belongs_to :movie
  has_many :bookings

  def available_seats
    object.available_seats
  end

  def start_time
    object.start_time.strftime("%H:%m %p")
  end

  def end_time
    object.end_time.strftime("%H:%m %p")
  end
end
