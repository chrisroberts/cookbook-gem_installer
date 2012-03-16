Gem Installer
=============

Simple cookbook for managing gem versions on a node.

Usage
=====

Attributes
----------

Define gems (and optionally version restrictions) within the role:

  override_attributes(
    :gem_installer => [
      'pg',
      ['activerecord', '~> 3.0.0'],
      'ssmtp'
    ]
  )

Data Bag
--------

The GemInstaller uses the BagConfig cookbook to allow configuration
via data bag entries. For more information for data bag configuration
please see:

https://github.com/chrisroberts/cookbook-bag_config

=== Issues/Bugs/Feature Requests

Create a github issue or fork, fix and send me a pull request

