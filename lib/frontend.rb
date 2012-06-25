require 'sinatra/base'
require 'bebop'
require 'haml'
require 'techcor'

module Techcor
  class Frontend < Sinatra::Base
    register Bebop

    configure do
      set :haml, {:format => :html5, :escape_html => true}
    end

    helpers do
      def link_to text, url
        "<a href='#{url}'>#{text}</a>"
      end
    end

    get '/' do
      redirect projects_index_path
    end

    resource :projects do |resource|
      resource.index do
        @projects = ProjectCatalog.load.projects
        haml :index
      end

      resource.show do
        @project = DescribeProject.new(params[:project_id], '%d/%m/%Y').call
        haml :project
      end
    end
  end
end
