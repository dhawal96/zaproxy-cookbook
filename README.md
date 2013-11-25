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
    <td><tt>['zaproxy']['version']</tt></td>
    <td>String</td>
    <td>Version to install</td>
    <td><tt>3.1.8</tt></td>
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
