class CreateSentences < ActiveRecord::Migration[6.0]
  def change
    create_table :sentences do |t|
      t.text :content, unique: true
      t.belongs_to :movies, null: false, foreign_key: true

      t.timestamps
    end
  end
end
