class CreateFeeds < ActiveRecord::Migration[6.1]
  def change
    create_table :feeds do |t|
      t.text :picture
      t.text :content

      t.timestamps
    end
  end
end
