module CommentsHelper
  
    def gravatar_for(comment)
   
    gravatar_id = Digest::MD5::hexdigest(comment.email.to_s.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
    image_tag(gravatar_url, class: "gravatar")
    end
    
end
