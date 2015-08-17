module ApplicationHelpers

  # Returns a page object for a given 'slug'.
  # This 'slug' corresponds with the page.slug that matches the 'slug'
  # identifier from data/config.yml
  #
  def find_page(name, space = 'site')
    all_pages = data[space].pages.values
    wanted_slug = data.config.pages[name]

    all_pages.detect { |page| page.slug == wanted_slug }
  end
end
