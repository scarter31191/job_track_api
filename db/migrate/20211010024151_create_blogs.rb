class CreateBlogs < ActiveRecord::Migration[6.0]
  def change
    create_table :blogs do |t|
      t.date :date
      t.string :topic
      t.string :link
      t.string :notes
      t.references :user, null: false, foreign_key: true
      
      t.timestamps
    end
  end
end
