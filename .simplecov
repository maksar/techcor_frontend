SimpleCov.start do
  add_filter 'features/step_definitions/web_steps.rb'
  add_filter 'features/support/paths.rb'

  add_group "Code" do |file|
    file.filename.include?(File.dirname(__FILE__) + "/lib/")
  end

  add_group "Cucumber" do |file|
    file.filename.include?(File.dirname(__FILE__) + "/features/")
  end
end
