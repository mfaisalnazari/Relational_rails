class CreateCohorts < ActiveRecord::Migration[7.1]
  def change
    create_table :cohorts do |t|
      t.string :name
      t.boolean :active
      t.integer :length

      t.timestamps
    end
  end
end
