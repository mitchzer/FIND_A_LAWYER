class AddLawyerToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :lawyer, :boolean
  end
end
