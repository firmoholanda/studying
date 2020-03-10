module ApplicationHelper
  def full_title(page_title = '')
    base_title = 'private-events app'
    page_title.empty? ? base_title : page_title + ' | ' + base_title
  end

  def formatted_date(date, lead_in)
    date.strftime("#{lead_in}%-m/%-d/%y at %-l:%M %p")
  end
end
