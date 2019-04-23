class CreateEntries < ActiveRecord::Migration[5.2]
  def change
    create_table :entries do |t|
      t.integer :user_id
      t.integer :job_listing_id
      t.datetime :contract_date

      t.timestamps
    end
  end
end
