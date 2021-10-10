class CreateGithubs < ActiveRecord::Migration[6.0]
  def change
    create_table :githubs do |t|
      t.date :date
      t.integer :commits
      t.string :link
      t.string :notes
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
