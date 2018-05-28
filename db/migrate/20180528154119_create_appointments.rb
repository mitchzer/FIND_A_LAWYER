class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.string :date
      t.string :time
      t.text :description
      t.boolean :lawyer_validation
      t.references :user, foreign_key: true
      t.references :lawyer, foreign_key: true

      t.timestamps
    end
  end
end
