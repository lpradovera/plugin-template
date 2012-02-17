module PluginTemplate
  class Plugin < Adhearsion::Plugin
    # Actions to perform when the plugin is loaded
    #
    init :plugin_template do
      logger.warn "PluginTemplate has been loaded"
    end

    # Basic configuration for the plugin
    #
    config :plugin_template do
      greeting "Hello", :desc => "What to use to greet users"
    end

    # Defining a Rake task is easy
    # The following can be invoked with:
    #   rake plugin_demo:info
    #
    tasks do
      namespace :plugin_template do
        desc "Prints the PluginTemplate information"
        task :info do
          STDOUT.puts "PluginTemplate plugin v. #{VERSION}"
        end
      end
    end

  end
end
