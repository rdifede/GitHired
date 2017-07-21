class CreateFavejobs < ActiveRecord::Migration[5.1]
  def change
    create_table :favejobs do |t|
      t.string :title
      t.string :description
      t.string :location
      t.string :website
      t.string :position
      t.string :apply
      t.belongs_to :user, index: true;
    end
  end
end
