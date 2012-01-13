class CreatePageFans < ActiveRecord::Migration
  def change
    create_table :page_fans do |t|

      t.timestamps
    end
  end
end
