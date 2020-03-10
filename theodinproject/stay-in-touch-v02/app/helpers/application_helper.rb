module ApplicationHelper

  def full_title(page_title = '')
    base_title = 'stay-in-touch app'
    if page_title.empty?
      base_title
    else
      page_title + ' | ' + base_title
    end
  end

  def menu_link_to(link_text, link_path)
    class_name = current_page?(link_path) ? 'menu-item active' : 'menu-item'

    content_tag(:div, class: class_name) do
      link_to link_text, link_path
    end
  end

  def like_or_dislike_btn(post)
    like = Like.find_by(post: post, user: current_user)
    if like
      link_to('dislike!', post_like_path(id: like.id, post_id: post.id), class:"label label-warning", method: :delete)
    else
      link_to('like!', post_likes_path(post_id: post.id), class:"label label-primary", method: :post)
    end
  end

  # Returns true if the user is logged in, false otherwise.
  def logged_in?
    !current_user.nil?
  end


end
