class CreatePosts < ActiveRecord::Migration
  def change
  	add_column :posts, :published_at, :date
    create_table 	:posts do |t|
    	t.string 		:title
    	t.text			:body
    	t.string		:pull_quote
    	t.string		:publication
    	t.string		:url
    	t.string		:author

      t.timestamps null: false
    end
  end
end
