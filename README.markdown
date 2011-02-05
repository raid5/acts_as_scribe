ActsAsScribe
============
A simple Rails 3 gem that allows you to keep history of user activities/actions. By default, `create` and `destroy` are tracked for models. A common use for collecting user actions is to provide a public timeline.

> Scribe (From Wikipedia, the free encyclopedia):
"A scribe was traditionally a person who could read and write. This usually indicated secretarial and administrative duties such as dictation and keeping business, judicial, and history records for kings, nobles, temples, and cities."

Install (Rails 3)
-----------------
 
Add the following line to your Gemfile:
 
 `gem 'acts_as_scribe', :git => 'git://github.com/raid5/acts_as_scribe.git', :branch => 'rails3'`
 
Generate the tables via the given generator:

 `rails g acts_as_scribe_migration`
 
And finally...
 
 `rake db:migrate`
 
Record activities in your models
---------------------------------------------

Associate the scribe activities with your user model.

    class User < ActiveRecord::Base    
      has_many :scribe_activities
    end

Record comment activities by users.

    class Comment < ActiveRecord::Base    
      record_activity_of :user
    end

You can use any association that is related to a user, such as:

    class Post < ActiveRecord::Base
      belongs_to :author, :class_name => "User"
      record_activity_of :author
    end

This will register automatically a new activity when you create or destroy a new record. If you want control over the activities registration based on your model's state just use the :if option.

    class Post < ActiveRecord::Base
      belongs_to :author, :class_name => "User"
      record_activity_of :author, :if => Proc.new { |post| post.private == false }
    end

If you want to record activities other than the default create and destroy you can specify the :actions option.

    class Post < ActiveRecord::Base
      belongs_to :author, :class_name => "User"
      record_activity_of :author, :actions => [:create, :update, :destroy]
    end


Record activities without related item
--------------------------------------

If you want to record activities not related to any specific model just use `Activity.report` in your code.

    def grant_admin(user)
      user.admin = true
      Activity.report(current_user, :grant_admin, user)
    end
  
If the action is not related to any item, just don't use it.

    def login
      current_user = User.find(…)
      Activity.report(current_user, :login)
    end
