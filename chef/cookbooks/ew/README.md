ew Cookbook
===========

Das "*standard*" EveryWare `ew` Cookbook.

Requirements
------------

#### Cookbooks

Folgende externe Cookbooks werden verwendet:

 - openssh => https://supermarket.chef.io/cookbooks/openssh
 - resolver => https://supermarket.chef.io/cookbooks/resolver
 - apt => https://supermarket.chef.io/cookbooks/apt
 - logrotate => https://supermarket.chef.io/cookbooks/logrotate

Alle Cookbooks werden vom internen "Mirror" https://ewserv-git01-prod.everyware.internal/groups/cookbooks eingebunden und genutzt.





















e.g.
#### packages
- `toaster` - sysview needs toaster to brown your bagel.

Attributes
----------
TODO: List your cookbook attributes here.

e.g.
#### sysview::default
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['sysview']['bacon']</tt></td>
    <td>Boolean</td>
    <td>whether to include bacon</td>
    <td><tt>true</tt></td>
  </tr>
</table>

Usage
-----
#### sysview::default
TODO: Write usage instructions for each cookbook.

e.g.
Just include `sysview` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[sysview]"
  ]
}
```

Contributing
------------
TODO: (optional) If this is a public cookbook, detail the process for contributing. If this is a private cookbook, remove this section.

e.g.
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors: Alexander Skwar <alexander.skwar@everyware.ch>


