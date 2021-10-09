class CreateJobOpportunities < ActiveRecord::Migration[6.0]
  def change
    create_table :job_opportunities do |t|
      t.string :position
      t.string :company
      t.string :status
      t.string :link_to_position
      t.string :notes
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
