module TutorsHelper

  # Returns the Gravatar for the given user.
  def gravatar_for(tutor, options = { size: 80 })
    gravatar_id = Digest::MD5::hexdigest(tutor.email.downcase)
    size = options[:size]
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    image_tag(gravatar_url, alt: tutor.name, class: "gravatar")
  end
end