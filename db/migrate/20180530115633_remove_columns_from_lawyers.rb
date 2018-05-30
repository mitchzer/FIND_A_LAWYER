class RemoveColumnsFromLawyers < ActiveRecord::Migration[5.2]
  def change
    remove_column :lawyers, :country
    remove_column :lawyers, :city
    remove_column :lawyers, :price_per_hour
    remove_column :lawyers, :bar
    remove_column :lawyers, :languages
    remove_column :lawyers, :professional_phone_number
    remove_column :lawyers, :description
  end
end
