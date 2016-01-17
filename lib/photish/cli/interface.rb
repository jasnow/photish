module Photish
  module CLI
    class Interface < Thor
      package_name "Photish"
      map "-v" => :version
      map "--version" => :version

      desc "version", "Current version"
      def version
        puts "Photish v#{Photish::VERSION}"
        puts "Ruby runtime: #{RUBY_VERSION} p#{RUBY_PATCHLEVEL} (#{RUBY_RELEASE_DATE}) [#{RUBY_PLATFORM}]"
      end

      desc "credits", "Major conritbutors"
      def credits
        puts "#{Photish::AUTHOR_NAME} <#{Photish::AUTHOR_EMAIL}>"
      end

      desc "generate", "Generates the gallery static site"
      option :force, type: :boolean
      option :config_override, type: :string
      def generate
        Photish::Command::Generate.new(options).execute
      end

      desc "worker", "A worker process that helps the generate command"
      option :worker_index, type: :numeric
      def worker
        Photish::Command::Worker.new(options).execute
      end

      desc "host", "Serves the HTML on a HTTP server"
      option :force, type: :boolean
      option :config_override, type: :string
      def host
        Photish::Command::Host.new(options).execute
      end

      desc "init", "Creates a basic Photish site structure"
      option :example, type: :boolean
      option :config_override, type: :string
      def init
        Photish::Command::Init.new(options).execute
      end

      desc "deploy", "Deploys the static site, using the specified engine"
      method_option :engine, required: true
      option :config_override, type: :string
      def deploy
        Photish::Command::Deploy.new(options).execute
      end
    end
  end
end

