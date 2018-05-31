class AddSpecialtyToLawyers < ActiveRecord::Migration[5.2]
  def change
    add_reference :lawyers, :specialty, foreign_key: true
  end
end
