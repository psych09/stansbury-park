module ApplicationHelper
  def active? path
    "active" if current_page? path
  end
  
  def video_tag_helper(video, img)
    video_tag(
            video,
            id: 'background',
            autoplay: true,
            loop: true,
            muted: true,
            poster: img
            )
  end
  
  def image_placeholder(height, width)
    "<img src='http://via.placeholder.com/#{height}x#{width}', style='width: 100%'><a>".html_safe
  end
end
