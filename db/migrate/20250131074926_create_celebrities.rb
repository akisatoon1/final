class CreateCelebrities < ActiveRecord::Migration[8.0]
  def change
    create_table :celebrities do |t|
      t.string :name
      t.string :image_url
      t.integer :known_cnt
      t.integer :unknown_cnt

      t.timestamps
    end
  end
end
