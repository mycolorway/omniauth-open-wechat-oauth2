# omniauth-open-wechat-oauth2

Using OAuth2 to authenticate wechat user in web application.
Base on [https://github.com/skinnyworm/omniauth-wechat-oauth2](https://github.com/skinnyworm/omniauth-wechat-oauth2)

Open Wechat Document: [https://open.weixin.qq.com/cgi-bin/frame?t=resource/res_main_tmpl&verify=1&lang=zh_CN](https://open.weixin.qq.com/cgi-bin/frame?t=resource/res_main_tmpl&verify=1&lang=zh_CN)

## Installation

Add this line to your application's Gemfile:

    gem 'omniauth-open-wechat-oauth2'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install omniauth-open-wechat-oauth2

## Usage

Add provider to `config/initializers/omniauth.rb`

```ruby
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :open_wechat, 'open_wechat_app_id', 'open_wechat_app_secret'
end
```

Access the OmniAuth Open Wechat OAuth2 URL: /auth/open_wechat

## Auth Hash

A example of `request.env["omniauth.auth"]` :

```ruby
{
    :provider => "open_wechat",
    :uid => "123456789",
    :info => {
          nickname:   "Nickname",
          sex:        1,
          province:   "Changning",
          city:       "Shanghai",
          country:    "China",
          headimgurl: "http://image_url",
          unionid:    "xxxxxxxxx"
        },
    :credentials => {
            :token => "token",
            :refresh_token => "another_token",
            :expires_at => 7200,
            :expires => true
        },
    :extra => {
            :raw_info => {
                      openid:     "openid"
                      nickname:   "Nickname",
                      sex:        1,
                      province:   "Changning",
                      city:       "Shanghai",
                      country:    "China",
                      headimgurl: "http://image_url",
                      unionid:    "xxxxxxxxx"
                    }
        }
}
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/omniauth-open-wechat-oauth2/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
