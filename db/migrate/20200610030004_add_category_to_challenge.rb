class AddCategoryToChallenge < ActiveRecord::Migration[6.0]
  def change
    add_reference :challenges, :category, null: false, foreign_key: true
  end
end
