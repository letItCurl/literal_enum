# LiteralEnum
Stop using integers in your database when using enums. Use the enum type define in your model for better DX.

## Usage

The following `class_method` is added to your arsenal and now `["pending", "accepted"]` are saved as strings in your database.

```ruby
class Article < ApplicationRecord
  # @NOTE:
  # The column `status` is supposed to be of type string in your database.
  literal_enum :status, ["pending", "accepted"]
end
```

## Installation
Add this line to your application's Gemfile:

```ruby
gem "literal_enum"
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install literal_enum
```

## Contributing
Open a PR ;)

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Special thanks:

Huge shout-out to [hundredwatt](https://github.com/hundredwatt)!

I was tired of this integer in the database when using enums, and he jumped into the discussion on Twitter and showed me this:
- [https://gist.github.com/hundredwatt/9742581230a320eaac008ef01e90f156](https://gist.github.com/hundredwatt/9742581230a320eaac008ef01e90f156)

After learning about Rails engines, I thought that this could be a great first gem ;)

The original `class_method` is actually from the gist by [@hundredwatt](https://gist.github.com/hundredwatt/9742581230a320eaac008ef01e90f156).
