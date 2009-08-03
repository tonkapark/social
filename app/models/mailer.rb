class Mailer < ActionMailer::Base
  

  def item_notify(item, user)
    subject    "A new post has been added at #{SITE_NAME}"
    recipients user.email
    from       MAILER_FROM_ADDRESS    
    body       :greeting => 'Hi,', :item => item
    @content_type = "text/html"
  end
  
  def comment_notify(comment)
    subject    "A comment has been added at #{SITE_NAME}"
    recipients comment.item.user.email
    from       MAILER_FROM_ADDRESS    
    body       :greeting => 'Hi,', :comment => comment
    @content_type = "text/html"
  end

end
