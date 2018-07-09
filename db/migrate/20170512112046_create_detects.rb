class CreateDetects < ActiveRecord::Migration[5.0]
  def change
    create_table :detects do |t|
      t.string :attachment

      t.timestamps
    end
  end
end
