class AddReferrerOnUsers < ActiveRecord::Migration
  def change
    add_reference :users, :referrer, index: true
  end
end
