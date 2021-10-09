class CreateJobOpportunities < ActiveRecord::Migration[6.0]
  def change
    create_table :job_opportunities do |t|
      t.string :position
      t.string :company
      t.boolean :status
      t.string :link_to_position
      t.string :notes

      t.timestamps
    end
  end
end
