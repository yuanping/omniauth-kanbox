omniauth-kanbox
===============

Unofficial OmniAuth strategy for Kanbox.

## Installation

Add this line to your application's Gemfile:

	gem 'omniauth-kanbox'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install omniauth-kanbox


## Usage

`OmniAuth::Strategies::Kanbox` is simply a Rack middleware. Read the OmniAuth docs for detailed instructions: https://github.com/intridea/omniauth.

Here's a quick example, adding the middleware to a Rails app in `config/initializers/omniauth.rb`:

```ruby
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :kanbox, ENV['KANBOX_KEY'], ENV['KANBOX_SECRET']
end
```


## Auth Hash

Here's an example *Auth Hash* available in `request.env['omniauth.auth']`:

```ruby
{
  :provider => 'kanbox',
  :uid => 'user email',
  :info => {
    :email => 'yp.xjgz@gmail.com',
    :name => 'yp.xjgz@gmail.com',
    :phone => '18612553650',
    ::description => 'spaceUsed:200/20000'
  },
  :credentials => {
    :token => 'ABCDEF...', # OAuth 2.0 access_token, which you may wish to store
    :expires_at => 1321747205, # when the access token expires (it always will)
    :expires => true # this will always be true
  },
  :extra => {
    :raw_info => {
      :status => 'ok',
      :email => 'yp.xjgz@gmail.com',
      :phone => '18612553650',
      :spaceQuota => '200',
      :spaceUsed => '20000',
      :emailIsActive => 1,
      :phoneIsActive => 0
    }
  }
}
```

The precise information available may depend on the permissions which you request.


