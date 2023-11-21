class AddDoctorReferenceToEducations < ActiveRecord::Migration[7.0]
  def change
    add_reference :educations, :doctor, foreign_key: true
  end
end
