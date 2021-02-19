class CreateChirps < ActiveRecord::Migration[6.1]
  def change
    create_table :chirps do |t|
      t.string :body
      t.references :author, null: false, index: true, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
