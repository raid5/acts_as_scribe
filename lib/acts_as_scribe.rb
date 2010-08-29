require File.dirname(__FILE__) + '/scribe/scribe_activity'
require File.dirname(__FILE__) + '/scribe/scribe'

ActiveRecord::Base.send :include, LinkingPaths::Acts::Scribe