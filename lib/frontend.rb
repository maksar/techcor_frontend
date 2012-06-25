require 'sinatra/base'
require 'haml'

module Techcor
  class Frontend < Sinatra::Base

    configure do
      set :haml, {:format => :html5, :escape_html => true}
    end

    get '/' do
      haml :index
    end

  end
end
