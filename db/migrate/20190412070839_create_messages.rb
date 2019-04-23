class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.integer :user_id
      t.integer :company_id
      t.text :message

      t.timestamps
    end
  end
end
