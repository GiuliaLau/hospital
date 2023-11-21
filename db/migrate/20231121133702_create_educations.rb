class CreateEducations < ActiveRecord::Migration[7.0]
  def change
    create_table :educations do |t|
      t.string :university
      t.string :degree_name
      t.integer :score

      t.timestamps
    end
  end
end
