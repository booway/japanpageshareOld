class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :name
      t.string :username
      t.string :first_name
      t.string :last_name
      t.string :pic_small
      t.string :pic_big
      t.string :pic_square
      t.string :pic
      t.string :timezone
      t.string :religion
      t.string :birthday
      t.string :birthday_date
      t.string :sex
      t.string :blood_type
      t.string :hometown_location
      t.string :current_location
      t.string :activities
      t.string :quotes
      t.string :about_me
      t.string :music
      t.string :book
      t.string :movie
      t.string :sport
      t.string :status
      t.string :locale
      t.string :profie_url
      t.string :verified
      t.string :website
      t.string :is_blocked
      t.string :contact_email
      t.string :email
      t.string :name_format
      t.string :languages
      t.integer :friend_count 
      t.string :salt
      t.string :encrypted_password
      
      t.timestamps
    end
    
    add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  end

  def self.down
    drop_table :users
  end
end