class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.string :commenter
      t.text :body
      t.references :user, null: false, foreign_key: true, index: true
      t.references :link, null: false, foreign_key: true, index: true

      t.timestamps
    end
  end
end
