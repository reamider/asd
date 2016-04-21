class CreateGists < ActiveRecord::Migration
  def change
    create_table :gists do |t|
      t.text :src
      t.string :lang
      t.string :desc

      t.timestamps null: false
    end
  end
end
