# ReadableModel

This gem doesn't do any logical opertaion. Just make the MVC - Model as much as readable.
This library adds the model template as per the rails style guide.
https://github.com/bbatsov/rails-style-guide#activerecord

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'readable_model'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install readable_model

## Usage

```ruby
rails generate scaffold scaffold_name
```

or

```ruby
rails generate model model_name
```

Now check your model file

## Before readable_model template

```ruby
class User < ActiveRecord::Base
  include UrlHelper
  serialize :template
  belongs_to :country

  alias_attribute :subject, :title

  has_one :photo
  has_many :authentications, dependent: :destroy, inverse_of: :user
  has_many :items, dependent: :destroy, counter_cache: true

  self.table_name = "admin_users"
  validates :email, presence: true
  validates :username, presence: true

  before_save :cook
  after_create :update_item
  validates :username, uniqueness: { case_sensitive: false }

  COLORS = ['red', 'green', 'blue']
  attr_accessor :date
  @@per_page = 10
  scope :blocked, -> { where(active: false }
  delegate :name, :address, to: :order, prefix: :order
  serialize :rule_options

  def role
    role_type.inquiry
  end
end
```
## After readable_model template

```ruby
class User < ActiveRecord::Base
  include UrlHelper

  # Default Scope
  default_scope { where(active: true) }

  # Configurations
  self.table_name = "admin_users"
  COLORS = ['red', 'green', 'blue']
  @@per_page = 10

  # Attributes
  attr_accessor :date
  alias_attribute :subject, :title
  delegate :name, :address, to: :order, prefix: :order
  serialize :template

  # Associations
  has_one :photo
  has_many :authentications, dependent: :destroy, inverse_of: :user
  has_many :items, dependent: :destroy, counter_cache: true
  belongs_to :country

  # Validations
  validates :email, presence: true
  validates :username, presence: true
  validates :username, uniqueness: { case_sensitive: false }

  # Callbacks
  before_save :cook
  after_create :update_item

  # Scopes
  scope :blocked, -> { where(active: false }

  def role
    role_type.inquiry
  end
end
```