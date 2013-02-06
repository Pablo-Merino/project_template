# encoding: utf-8
require 'active_support/core_ext/string'


module GEM_CLASS_NAME; end

File.tap do |f|
	Dir[f.expand_path(f.join(f.dirname(__FILE__),'lib', 'GEM_NAME', '**/*.rb'))].each do |file|

		GEM_CLASS_NAME.autoload File.basename(file, '.rb').camelize, file
	end
end

