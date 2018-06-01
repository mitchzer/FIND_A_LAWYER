class AddPhotoToLawyers < ActiveRecord::Migration[5.2]
  def change
    add_column :lawyers, :photo, :string
  end
end
