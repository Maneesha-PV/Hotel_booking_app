class AddNumberOfChildrenToBookings < ActiveRecord::Migration[5.0]
  def change
    add_column :bookings, :number_of_children, :integer
  end
end
