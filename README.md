[![Build Status](https://travis-ci.org/bendodd/zaproxy-cookbook.png)](https://travis-ci.org/bendodd/zaproxy-cookbook)

YSlow cookbook
==========
Install the OWASP Zed Attack Proxy (ZAP)

Requirements
------------
None.

Attributes
----------

#### zaproxy::default
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['zaproxy']['config_dir']</tt></td>
    <td>String</td>
    <td>Directory to install config in</td>
    <td><tt>/home/zaproxy/.ZAP/</tt></td>
  </tr>
  <tr>
    <td><tt>['zaproxy']['working_dir']</tt></td>
    <td>String</td>
    <td>Working directory</td>
    <td><tt>/opt/zap</tt></td>
  </tr>
  <tr>
    <td><tt>['zaproxy']['user']</tt></td>
    <td>String</td>
    <td>User</td>
    <td><tt>zaproxy</tt></td>
  </tr>
  <tr>
    <td><tt>['zaproxy']['group']</tt></td>
    <td>String</td>
    <td>User</td>
    <td><tt>zaproxy</tt></td>
  </tr>
  <tr>
    <td><tt>['zaproxy']['version']</tt></td>
    <td>String</td>
    <td>Version to install</td>
    <td><tt>2.2.2</tt></td>
  </tr>
  <tr>
    <td><tt>['zaproxy']['version']</tt></td>
    <td>String</td>
    <td>Version to install</td>
    <td><tt>2.2.2</tt></td>
  </tr>
  <tr>
    <td><tt>['zaproxy']['checksum']</tt></td>
    <td>String</td>
    <td>Checksum of the required version</td>
    <td><tt>12d101d2a9b35edd2574f8e7e140da5bfc0a726d</tt></td>
  </tr>
  <tr>
    <td><tt>['zaproxy']['port']</tt></td>
    <td>Int</td>
    <td>Port for the proxy to run on</td>
    <td><tt>9090</tt></td>
  </tr>

</table>

Usage
-----
#### zaproxy::default

    {
      "name":"my_node",
      "run_list": [
        "recipe[zaproxy]"
      ]
    }

Contributing
------------

1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write you change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Author:: Benedict Dodd (benedict.dodd@gmail.com)
