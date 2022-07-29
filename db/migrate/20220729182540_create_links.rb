class CreateLinks < ActiveRecord::Migration[7.0]
  def change
    create_table :links do |t|
      t.string :title
      t.text :body
      t.references :user, null: false, foreign_key: true, index: true

      t.timestamps
    end
  end
end
