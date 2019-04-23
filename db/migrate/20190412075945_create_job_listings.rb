class CreateJobListings < ActiveRecord::Migration[5.2]
  def change
    create_table :job_listings do |t|
      t.integer :company_id
      t.integer :genre_id
      t.integer :price
      t.string :place
      t.string :date_time
      t.string :people
      t.text :details

      t.timestamps
    end
  end
end
