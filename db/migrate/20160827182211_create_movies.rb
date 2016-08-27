class CreateMovies < ActiveRecord::Migration[5.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :release_date
      t.string :rating
      t.string :genre
      t.string :director

      t.timestamps
    end
  end
end
