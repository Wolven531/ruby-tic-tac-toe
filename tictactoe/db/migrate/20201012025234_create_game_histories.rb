class CreateGameHistories < ActiveRecord::Migration[6.0]
  def change
    create_table :game_histories do |t|
      t.numeric :num_ties
      t.numeric :num_p0_wins
      t.numeric :num_p1_wins

      t.timestamps
    end
  end
end
