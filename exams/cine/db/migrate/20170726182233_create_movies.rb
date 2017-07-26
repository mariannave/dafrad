class CreateMovies < ActiveRecord::Migration[5.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :imdb
      t.string :trailer
      t.string :country
      t.integer :year
      t.string :duration
      t.string :production_company
      t.string :director
      t.string :rating
      t.text :description

      t.timestamps
    end
  end
end
