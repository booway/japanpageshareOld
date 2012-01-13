class CreateCampaignMembers < ActiveRecord::Migration
  def change
    create_table :campaign_members do |t|

      t.timestamps
    end
  end
end
