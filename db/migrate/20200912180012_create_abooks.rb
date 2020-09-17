class CreateAbooks < ActiveRecord::Migration[6.0]
  def up
    # title (String), author (String), genre (String), price (Number), published-date (String)
    create_table :abooks do |t|
      # rails adds an ID for us
      t.column "title", :string
      t.column "author", :string
      t.column "genre", :string
      t.column "price", :integer
      t.column "published_date", :string
      t.timestamps
    end
  end

  def down
    drop_table :abooks
  end
end
