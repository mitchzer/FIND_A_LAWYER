class RemoveColumnsFromAppointments < ActiveRecord::Migration[5.2]
  def change
    remove_column :appointments, :description
    remove_column :appointments, :lawyer_validation
  end
end
