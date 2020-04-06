class AddCategoryRefToMovies < ActiveRecord::Migration[6.0]
  def change
    add_reference :movies, :category, null: true, foreign_key: true
  end
end
