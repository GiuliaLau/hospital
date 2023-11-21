class RemoveBooleanAndCuredFromPatients < ActiveRecord::Migration[7.0]
  def change
    remove_column :patients, :cured, :string
    remove_column :patients, :boolean, :string
  end
end
