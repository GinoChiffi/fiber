module ApplicationHelper
  # Wrapper for FontAwesome icons
  # just pass the icon name to get the needed html tag
  #
  # @param name [String] name of the FontAwesome icon (without `fa`)
  # @param options [Hash] optional extra options
  #
  # You can specify a `before_text` and `after_text` for displaying text
  # before or after the icon, you can also specify a title and optional class,
  # and style. You can also specify a powertip option
  #
  def icon(name, options = {})
    css_class = [:fa, "fa-#{name}", options[:class]].compact.join(' ')
    icon_tag = content_tag(:span, '', class: css_class)
    safe_join([icon_tag].compact, ' ')
  end

  # Helper for User Avatars
  #
  # 1. Priority is Facebook Profile Picture
  # 2. Priority is our local profile_pic url
  # 3. Priority is a font-awesome user icon
  #
	def user_avatar(options = { class: 'avatar' })
		if current_user.has_profile_picture?
			image_tag current_user.profile_picture_url, class: options[:class]
		else
			icon 'user-circle-o', class: options[:class]
		end
	end
end
