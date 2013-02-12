class CreateMeetingsSponsors < ActiveRecord::Migration
  def change
    create_table :meetings_sponsors do |t|
      t.integer :meeting_id
      t.integer :sponsor_id

      t.timestamps
    end
  end
end
