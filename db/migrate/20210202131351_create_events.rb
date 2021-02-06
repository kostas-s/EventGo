class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :title

      t.string :location
      t.datetime :date
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
