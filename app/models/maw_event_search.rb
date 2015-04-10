class MawEventSearch
  attr_reader :date_from, :date_to
  
  def initialize(params)
    params ||= {}
    @date_from = parsed_date(params[:date_from])
    @date_to = parsed_date(params[:date_to])
  end
  
  def scope
    MawEvent.where('date BETWEEN ? AND ?', @date_from, @date_to)
  end
  
  private
  
  def parsed_date(date_string)
    Date.parse(date_string)
  rescue ArgumentError, TypeError
  end
  
end