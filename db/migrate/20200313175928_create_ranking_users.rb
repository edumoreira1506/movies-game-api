class CreateRankingUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :ranking_users do |t|
      t.string :name
      t.integer :points

      t.timestamps
    end
  end
end
