class CreateHackathonUsers < ActiveRecord::Migration
  def change
    create_table :hackathon_users do |t|
      t.references :user
      t.references :hackathon

      t.timestamps null: false
    end

    add_index :hackathon_users, :user_id
    add_index :hackathon_users, :hackathon_id
  end
end
