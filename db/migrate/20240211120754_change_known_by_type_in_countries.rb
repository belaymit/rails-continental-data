class ChangeKnownByTypeInCountries < ActiveRecord::Migration[7.1]
  def change
    remove_column :countries, :known_by, :text
    add_column :countries, :known_by, :string, array: true, default: []
  end
end
