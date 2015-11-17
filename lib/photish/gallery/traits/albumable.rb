module Photish
  module Gallery
    module Traits
      module Albumable
        def albums
          @albums ||= Dir.entries(path)
                         .reject { |file| ['.', '..'].include?(file) }
                         .map    { |file| File.join(path, file) }
                         .reject { |file| !Dir.exist?(file) }
                         .map    { |file| album_class.new(self, file) }
        end

        def all_albums
          albums.map { |album| [album] + album.all_albums }
                .flatten
        end
      end
    end
  end
end
