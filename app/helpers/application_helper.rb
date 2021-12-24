module ApplicationHelper
  def login_helper(style = '')
    if current_user.is_a?(GuestUser)
      (link_to 'Login', new_user_session_path, class: style) +
        ''.html_safe +
        (link_to 'Register', new_user_registration_path, class: style)
    else
      link_to 'Logout', destroy_user_session_path, method: :delete, class: style
    end
  end

  def source_helper(styles)
    if session[:source]
      greeting = "Thanks for visiting me from #{session[:source].capitalize}"
      content_tag(:div, greeting, class: styles)
    end
  end

  def copyright_generator
    RobsonViewTool::Renderer.copyright 'Muhammad Anas', 'All rights reserved'
  end

  def nav_items
    [
      { url: root_path, title: 'Home' },
      { url: about_path, title: 'About' },
      { url: blogs_path, title: 'Blog' },
      # { url: tech_news_path, title: 'Tech News' }
    ]
  end

  def nav_helper(style, tag_type)
    nav_links = ''

    nav_items.each do |item|
      nav_links << "<#{tag_type}>
      <a href='#{item[:url]}' class='#{style} #{active? item[:url]}'>#{item[:title]}</a>
      </#{tag_type}>"
    end

    nav_links.html_safe
  end

  def alerts
    alert = (flash[:alert] || flash[:error] || flash[:notice])

    alert_generator alert if alert
  end

  def alert_generator(msg)
    js add_gritter(msg, title: 'Muhammad Anas Portfolio', sticky: false)
  end

  def active?(path)
    'active' if current_page? path
  end
end
