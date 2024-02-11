class CreateCountries < ActiveRecord::Migration[7.1]
  def change
    create_table :countries do |t|
      t.string :name
      t.string :capital_city
      t.text :other_cities
      t.text :currencies
      t.text :location
      t.text :known_by
      t.string :map
      t.string :flag

      t.timestamps
    end
  end
end
