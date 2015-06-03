class Log < ActiveRecord::Base
  has_many :log_entries
  has_many :representations
end
