class LogEntry < ActiveRecord::Base
  belongs_to :log
  # what I need to do is cycle through each key of self.data and add it to an array and then .store the array in the calculator.
  # Then cycle
  # then I can pass the string (stored in the representation) into the calculator to calculate that particular metric.


  #I should just send the formed JSON for making a bar chart.
end
