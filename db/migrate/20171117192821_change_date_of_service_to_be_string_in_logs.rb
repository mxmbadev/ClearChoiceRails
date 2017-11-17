class ChangeDateOfServiceToBeStringInLogs < ActiveRecord::Migration
  def change
    change_column :logs, :date_of_service, :string
  end
end
