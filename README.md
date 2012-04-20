Gem Installer
=============

Simple cookbook for managing gem versions on a node.

Usage
=====

Attributes
----------

Define gems (and optionally version restrictions) within the role:

```ruby
  override_attributes(
    :gem_installer => {
      :gems => [
        'pg',
        ['activerecord', '~> 3.0.0'],
        'ssmtp'
      ]
    }
  )
```

or


```ruby
  override_attributes(
    :gem_installer => {
      :gems => {
        'pg' => nil,
        'activerecord' =>  '~> 3.0.0',
        'ssmtp' => nil
      }
    }
  )
```

Data Bag
--------

Data bag support is provided via BagConfig and is no longer required. For
more information see:

https://github.com/chrisroberts/cookbook-bag_config

Issues/Bugs/Feature Requests
----------------------------

Create a github issue or fork, fix and send me a pull request

