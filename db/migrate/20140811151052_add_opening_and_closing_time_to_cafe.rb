class AddOpeningAndClosingTimeToCafe < ActiveRecord::Migration
  def change
    add_column :cafes, :mon_open, :time
    add_column :cafes, :mon_close, :time
    add_column :cafes, :tue_open, :time
    add_column :cafes, :tue_close, :time
    add_column :cafes, :wed_open, :time
    add_column :cafes, :wed_close, :time
    add_column :cafes, :thu_open, :time
    add_column :cafes, :thu_close, :time
    add_column :cafes, :fri_open, :time
    add_column :cafes, :fri_close, :time
    add_column :cafes, :sat_open, :time
    add_column :cafes, :sat_close, :time
    add_column :cafes, :sun_open, :time
    add_column :cafes, :sun_close, :time
  end
end
