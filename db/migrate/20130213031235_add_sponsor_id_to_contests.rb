class AddSponsorIdToContests < ActiveRecord::Migration
  def change
    add_column :contests, :sponsor_id, :integer
    add_column :contests, :meeting_id, :integer
  end
end
