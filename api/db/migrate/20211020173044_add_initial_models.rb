class AddInitialModels < ActiveRecord::Migration[6.1]
  def change
    create_table :rounds do |t|
      t.integer :ordinal, null: false
      t.timestamps
    end

    create_table :candidates do |t|
      t.string :name, null: false
      t.string :bio
      t.timestamps
    end

    create_table :candidate_rounds do |t|
      t.integer :votes
      t.references :candidate, index: true
      t.references :round, index: true
      t.timestamps
    end
  end
end
