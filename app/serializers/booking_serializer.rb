class BookingSerializer < ActiveModel::Serializer
  attributes :id, :seat_number
  belongs_to :user
  belongs_to :showtime
end
