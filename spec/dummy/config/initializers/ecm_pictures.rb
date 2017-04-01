Ecm::Pictures.configure do |config|
  # Accepted markup languages
  #
  # default: config.markup_languages = %w[ textile ]
  config.markup_languages = %w( textile )

  # Default markup language
  #
  # default: config.default_markup_language = 'textile'
  config.default_markup_language = 'textile'

  # Paperclip options
  #
  # default:     config.paperclip_options = {
  #                styles: {
  #                  small_thumb:   "80x60",
  #                  medium_thumb:  "160x120",
  #                  default_thumb: "260x180"
  #                }
  #              }
  config.paperclip_options = {
    styles: {
      small_thumb:   '80x60',
      medium_thumb:  '160x120',
      default_thumb: '260x180'
    }
  }

  # Set the base controller for the contact form
  #
  # Default: config.base_controller = 'ApplicationController'
  #
  config.base_controller = 'ApplicationController'

  # Adds <notextile> tags around the to fix html output.
  #
  # Default: config.prevent_textile_rendering_in_html = true
  #
  config.prevent_textile_rendering_in_html = true

  # Render galleries in the index view as :thumbnail
  # or :media_object.
  #
  # Default: config.render_gallery_index_as = :thumbnail
  #
  config.render_gallery_index_as = :thumbnail

  # Render pictures in the index view as :thumbnail
  # or :media_object.
  #
  # Default: config.render_gallery_index_as = :thumbnail
  #
  config.render_picture_index_as = :thumbnail

  # Default: config.thumbnail_container_css_classes = 'col-sm-6 col-md-4'
  # 
  config.thumbnail_container_css_classes = 'col-sm-6 col-md-4'

  # Default: config.thumbnail_paperclip_style = :original
  # 
  config.thumbnail_paperclip_style = :original
end
