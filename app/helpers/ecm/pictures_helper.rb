module Ecm::PicturesHelper
  # renders picture galleries in your views
  #
  # = Usage
  #
  # Assume you have created a picture gallery named "Holidays 2012". You can
  # render it in your view as follows:
  #
  #  <%= render_picture_gallery 'Holidays 2012' %>
  def render_picture_gallery(name, options = {})
    options = { preview_style: :thumb }.merge(options)

    gallery = Ecm::Pictures::Gallery.published.where(name: name.to_s).first

    if gallery.nil?
      content_tag(:div, class: 'warning missing gallery') do
        content_tag(:p, I18n.t('ecm.pictures.gallery.warnings.missing', name: name.to_s))
      end
    else
      render gallery, { view: self }
    end

  rescue Exception => e
    return e.message
  end

  # helper method to build link options for images inside a gallery.
  def build_link_options_for_picture_in_gallery(gallery_identifier, picture)
    link_options = {}

    # Add gallery identifier for orange box
    link_options[:rel] = "lightbox[#{gallery_identifier}]"

    # Add thumbnail class for twitter bootstrap
    link_options[:class] = 'thumbnail'

    # build the caption
    caption = ''
    caption << "<div class=\"caption-name\">#{picture.name}</div>" unless picture.name.blank?
    caption << "<div class=\"caption-description\">#{picture.description}</div>" unless picture.description.blank?
    link_options[:"data-ob_caption"] = caption if caption.size > 0

    link_options
  end

  def render_picture(name, options = {})
    options.reverse_merge!(
      preview_style: :thumb,
      plain: false,
      img_css_class: nil
    )

    img_css_class = options.delete(:img_css_class)
    plain         = options.delete(:plain)

    picture = Ecm::Pictures::Picture.published.where(name: name.to_s).first

    if picture.nil?
      return content_tag(:div, class: 'warning missing picture') do
        content_tag(:p, I18n.t('ecm.pictures.picture.warnings.missing', name: name.to_s))
      end
    end

    if plain
      image_tag picture.image.url, class: img_css_class
    else
      render picture
    end

  rescue Exception => e
    return e.message
  end
end
