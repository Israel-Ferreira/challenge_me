class CreateChallenges < ActiveRecord::Migration[6.0]
  def change
    create_table :challenges do |t|
      t.references :author, null: false, foreign_key: {to_table: :users}
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
