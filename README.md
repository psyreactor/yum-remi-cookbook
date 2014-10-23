[![Build Status](https://travis-ci.org/psyreactor/yum-remi-cookbook.svg?branch=master)](https://travis-ci.org/psyreactor/yum-remi-cookbook)

Yum Remi Cookbook
===============

This cookbook install Remi repo Enterprise Linux.

####[Remi Repo](http://http://rpms.famillecollet.com/)

"Providing the  latest versions of the PHP stack, and some other software, to the Fedora and Enterprise Linux (RHEL, CentOS, Oracle, Scientific Linux, ...) users. It mainly contains :

    packages I also maintains in Fedora
    backports of packages available in Fedora development version
    some packages incompatible with Fedora policy
    some packages in progress before being submitted to Fedora repository
    (nearly) vanilla versions
"

Requirements
------------
#### Cookbooks:

- yum - https://github.com/opscode-cookbooks/yum

The following platforms and versions are tested and supported using Opscode's test-kitchen.

- CentOS 5.8, 6.3

The following platform families are supported in the code, and are assumed to work based on the successful testing on CentOS.


- Red Hat (rhel)
- Fedora
- Amazon Linux

#### yum-remi:default
##### Basic Config
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>node['yum'][repo]['enabled']</tt></td>
    <td>Boolean</td>
    <td>Enable/Disable Repo</td>
    <td><tt>true</tt></td>
  </tr>
  <tr>
    <td><tt>node['yum'][repo]['gpgcheck']</tt></td>
    <td>Boolean</td>
    <td>check GPG Cert</td>
    <td><tt>true</tt></td>
  </tr>
  <tr>
    <td><tt>node['yum'][repo]['managed']</tt></td>
    <td>Boolean</td>
    <td>Enable/Disable managed</td>
    <td><tt>true</tt></td>
  </tr>
</table>

repo = w%(remi remi-test remi-php55 remi-php56)

Usage
-----
#### yum-remi::default
Just include `yum-remi` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[yum-remi]"
  ]
}
```

Example enable test repo

```json
"default_attributes": {
  "yum": {
    "remi-test": {
      "gpgcheck": true,
      "managed": true,
      "enabled": true
    }
  }
}
```

Contributing
------------

1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

[More details](https://github.com/psyreactor/yum-remi-cookbook/blob/master/CONTRIBUTING.md)

License and Authors
-------------------
Authors:
Lucas Mariani (Psyreactor)
- [marianiluca@gmail.com](mailto:marianiluca@gmail.com)
- [https://github.com/psyreactor](https://github.com/psyreactor)
- [http://blog.psyreactor.com.ar](http://blog.psyreactor.com.ar)

