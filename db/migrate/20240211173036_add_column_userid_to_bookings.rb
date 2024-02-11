class AddColumnUseridToBookings < ActiveRecord::Migration[7.1]
  def change
    add_reference :bookings, :user, foreign_key: true
  end
end
