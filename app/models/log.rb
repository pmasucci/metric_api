class Log < ActiveRecord::Base
  has_many :log_entries
  has_many :representations

  def charts
    data = {}
    calculator = Dentaku::Calculator.new
    representations = self.representations
    values = self.log_entries.map { |entry| entry.data }
    values.each do |thing|
      calculator.store(thing)
    end
    representations.each do |rep|
      data[rep.chart_type] = values.map do |value|
        calculator.evaluate(rep.structure['x'], value).to_f
      end
    end
    data
  end
end
