class AlterPlacesAddLatAndLng < ActiveRecord::Migration
  def change
  	padd_column :places, :latitude, :float
    add_column :places, :longitude, :float

  end
end
