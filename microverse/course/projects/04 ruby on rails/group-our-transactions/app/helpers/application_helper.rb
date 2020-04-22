module ApplicationHelper
  def full_title(page_title = '')
    base_title = 'group-our-transactions app'
    if page_title.empty?
      base_title
    else
      page_title + ' | ' + base_title
    end
  end

  def navbar_page_title(page_name = '')
    page_name unless page_name.empty?
  end
end
