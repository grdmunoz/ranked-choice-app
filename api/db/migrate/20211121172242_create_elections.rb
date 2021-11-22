class CreateElections < ActiveRecord::Migration[6.1]
  def change
    create_table :elections do |t|
      t.string :name, null: false
      t.string :position, null: false
      t.integer :election_type
      t.integer :region
      t.integer :status
      t.integer :winning_candidate_id
      t.timestamps
    end
  end
end
