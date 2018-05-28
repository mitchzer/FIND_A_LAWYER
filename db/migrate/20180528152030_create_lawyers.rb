class CreateLawyers < ActiveRecord::Migration[5.2]
  def change
    create_table :lawyers do |t|
      t.string :specialties, array: true, :default =>[]
      t.string :country
      t.string :city
      t.string :address
      t.integer :price_per_hour
      t.string :bar
      t.string :languages, array: true, :default =>[]
      t.text :qualification
      t.string :professional_email
      t.string :professional_phone_number
      t.text :description
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
