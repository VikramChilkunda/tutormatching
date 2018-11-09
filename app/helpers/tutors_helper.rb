module TutorsHelper

  # Returns the Gravatar for the given user.
  def gravatar_for(tutor)
    gravatar_id = Digest::MD5::hexdigest(tutor.email.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
    image_tag(gravatar_url, alt: tutor.name, class: "gravatar")
  end
end