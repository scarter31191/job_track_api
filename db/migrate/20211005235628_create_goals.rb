class CreateGoals < ActiveRecord::Migration[6.0]
  def change
    create_table :goals do |t|
      t.references :user, null: false, foreign_key: true
      t.string :goals
      t.string :status
      t.string :notes

      t.timestamps
    end
  end
end
