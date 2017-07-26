class CreateShowtimes < ActiveRecord::Migration[5.1]
  def change
    create_table :showtimes do |t|
      t.datetime :time
      t.references :movie, foreign_key: true

      t.timestamps
    end
  end
end
