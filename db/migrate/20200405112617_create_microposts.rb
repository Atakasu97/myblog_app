class CreateMicroposts < ActiveRecord::Migration[5.1]
  def change
    create_table :microposts do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
    add_index :microposts, :created_at
  end
end
