---
layout: "module"
subtitle: "Login & Tour of Guacamole"
---

This lab provides a quick tour of the Guacamole VNC server to help you get familiar with lab environment along with some key terminology we will use in subsequent lab content.

If you are already familiar with the basics of Docker you can skip this lab — after making sure you can login.

## Accessing Guacamole

[Guacamole](http://bit.ly/2dzB3b6) is an HTML5 web application that provides access to desktop environments using remote desktop protocols (such as VNC or RDP). **As long as you have access to a web browser, you have access to your machines.**

Navigate to the login `${URI}` and login with the your user/password.

![Guacamole Login]({{ "/images/guac_login.png" | prepend: site.baseurl }})

:information_source: Both the `${URI}` and login credentials should have been provided to you by your instructor.

After logging in, you should see two groups, `term` and `vnc`.

![Guacamole Welcome]({{ "/images/guac_welc.png" | prepend: site.baseurl }})

Before clicking on the user's name under the `vnc` group, navigate to the user's settings page.

![Guacamole Settings]({{ "/images/guac_setti.png" | prepend: site.baseurl }})

And, select the "Text input" button under the **Default Input Method** section.

![Guacamole Settings]({{ "/images/guac_input.png" | prepend: site.baseurl }})

Return **Home** via the same drop down used to reach the settings page.

Then click your user's name under the `vnc` group.

![Guacamole Desktop]({{ "/images/guac_desk.png" | prepend: site.baseurl }})

Once you see the user's desktop, you're ready to proceed to the next lab!

In the event that this does not happen, please raise you hand :raising_hand: and an instructor will be by to help momentarily.
