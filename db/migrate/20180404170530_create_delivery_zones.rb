class CreateDeliveryZones < ActiveRecord::Migration[5.1]
  def change
    create_table :delivery_zones do |t|
      t.string :name

      t.timestamps
    end
  end
end
