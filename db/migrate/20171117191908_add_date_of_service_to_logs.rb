class AddDateOfServiceToLogs < ActiveRecord::Migration
  def change
    add_column :logs, :date_of_service, :date
    remove_column :logs, :date, :datetime
  end
end
