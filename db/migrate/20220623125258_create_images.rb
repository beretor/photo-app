class CreateImages < ActiveRecord::Migration[6.1]
  def change
    create_table :images do |t|
      t.string :name
      t.string :picture
      t.references :user, index: false, foreign_key: true

      t.timestamps null:false
    end
  end
end
