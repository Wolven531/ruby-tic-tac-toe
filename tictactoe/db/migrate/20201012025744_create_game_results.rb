class CreateGameResults < ActiveRecord::Migration[6.0]
  def change
    create_table :game_results do |t|
      t.numeric :player
      t.string :result

      t.timestamps
    end
  end
end
