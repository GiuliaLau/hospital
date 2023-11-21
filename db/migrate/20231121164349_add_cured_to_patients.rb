class AddCuredToPatients < ActiveRecord::Migration[7.0]
  def change
    add_column :patients, :cured, :boolean
  end
end
