class CreateJokes < ActiveRecord::Migration[5.2]
  def change
    create_table :jokes do |t|
      t.text :title
      t.text :setup
      t.text :punchline
      t.integer :user_id

      t.timestamps
    end
  end
end
