resolver Cookbook
=================
[![Build Status](https://travis-ci.org/chef-cookbooks/resolver.svg?branch=master)](http://travis-ci.org/chef-cookbooks/resolver)
[![Cookbook Version](https://img.shields.io/cookbook/v/resolver.svg)](https://supermarket.chef.io/cookbooks/resolver)

Configures /etc/resolv.conf, unless the nameservers attribute is empty. Search will be excluded if empty.


Requirements
------------
### Chef
Chef version 11.14+ and Ohai 7.2.0+ are required.

Attributes
----------
See `attributes/default.rb` for default values.

- `node['resolver']['search']` - Search list for host-name lookup.
- `node['resolver']['nameservers']` - Required, an array of nameserver IP address strings; the default is an empty array, and the default recipe will not change resolv.conf if this is not set. See __Usage__.
- `node['resolver']['options']` - a hash of resolv.conf options. See __Usage__ for examples.
- `node['resolver']['domain']` - Local domain name. if `nil`, the domain is determined from the local hostname returned by `gethostname(2)`.

Recipes
-------
Use one of the recipes to set up /etc/resolv.conf for your system(s).

### default
Configure /etc/resolv.conf based on attributes.

### from_server_role
Configure /etc/resolv.conf's nameservers based on a search for a specific role (by Chef environment).


Usage
-----
Using the default recipe, set the resolver attributes in a role, for example from my base.rb:

```ruby
"resolver" => {
  "nameservers" => ["10.13.37.120", "10.13.37.40"],
  "search" => "int.example.org",
  "options" => {
    "timeout" => 2, "rotate" => nil
  }
}
```

The resulting `/etc/resolv.conf` will look like:

```text
search int.example.org
nameserver 10.13.37.120
nameserver 10.13.37.40
options timeout:2 rotate
```

Using the `from_server_role` recipe, assign the `node['resolver']['server_role']` attribute's role to a system that is the DNS resolver in the same Chef environment.


License & Authors
-----------------
- Author:: Joshua Timberman (<joshua@chef.io>)

```text
Copyright 2009-2015, Chef Software, Inc.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```
