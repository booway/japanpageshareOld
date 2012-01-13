class CreatePageBlockedUsers < ActiveRecord::Migration
  def change
    create_table :page_blocked_users do |t|

      t.timestamps
    end
  end
end
