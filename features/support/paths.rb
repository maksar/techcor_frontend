# Taken from the cucumber-rails project.

module NavigationHelpers

  def path_to(page_name)
    case page_name

      when /the home page/ then
        '/'
      when /projects page/ then
        '/projects'
      when /(.*) project page/ then
        "/projects/#{$1}"

      else
        raise "Can't find mapping from \"#{page_name}\" to a path.\n" +
                  "Now, go and add a mapping in #{__FILE__}"
    end
  end
end

World(NavigationHelpers)
