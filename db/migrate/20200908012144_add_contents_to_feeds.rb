class AddContentsToFeeds < ActiveRecord::Migration[5.2]
  def change
    add_column :feeds, :content, :string
  end
end
