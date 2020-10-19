class CreateGenresJokes < ActiveRecord::Migration[5.2]
  def change
    create_table :genres_jokes, :id => false do |t|
      t.integer :genre_id
      t.integer :joke_id
    end
  end
end
