class CreateComments < ActiveRecord::Migration[8.0]
  def change
    create_table :comments do |t|
      t.text :text
      t.string :anonymous_name
      t.references :movie,  foreign_key: true
      t.references :user,  foreign_key: true

      t.timestamps
    end
  end
end
