---
id: 4473
title: "A thanksgiving dplyr Rubik's cube puzzle for you"
date: 2015-11-25T12:14:06+00:00
author: Jeff Leek
pe_theme_meta:
  - 'O:8:"stdClass":2:{s:7:"gallery";O:8:"stdClass":3:{s:2:"id";s:2:"-1";s:5:"width";s:0:"";s:6:"height";s:0:"";}s:5:"video";O:8:"stdClass":1:{s:2:"id";s:2:"-1";}}'
al2fb_facebook_link_id:
  - 136171103105421_887367551319102
al2fb_facebook_link_time:
  - 2015-11-25T17:14:25+00:00
al2fb_facebook_link_picture:
  - post=http://simplystatistics.org/?al2fb_image=1
dsq_thread_id:
  - 4350329119
categories:
  - Uncategorized
slug: "a-thanksgiving-dplyr-rubiks-cube-puzzle-for-you"
---
[Nick Carchedi](http://nickcarchedi.com/) is back visiting from [DataCamp](https://www.datacamp.com/) and for fun we came up with a [[Nick Carchedi](http://nickcarchedi.com/) is back visiting from [DataCamp](https://www.datacamp.com/) and for fun we came up with a](https://cran.rstudio.com/web/packages/dplyr/vignettes/introduction.html) Rubik's cube puzzle. Here is how it works. To solve the puzzle you have to make a 4 x 3 data frame that spells Thanksgiving like this:

<div class="oembed-gist">
  <noscript>
    View the code on <a href="https://gist.github.com/jtleek/4d4b63a035973231e6d4">Gist</a>.
  </noscript>
</div>

<span style="line-height: 1.5;">To solve the puzzle you need to pipe this data frame in </span>

<div class="oembed-gist">
  <noscript>
    View the code on <a href="https://gist.github.com/jtleek/aae1218a8f4d1220e07d">Gist</a>.
  </noscript>
</div>

and pipe out the Thanksgiving data frame using only the dplyr commands _arrange_,  _mutate_, _slice_,  _filter_ and _select_. For advanced users you can try our slightly more complicated puzzle:

<div class="oembed-gist">
  <noscript>
    View the code on <a href="https://gist.github.com/jtleek/b82531d9dac78ba3c60a">Gist</a>.
  </noscript>
</div>

See if you can do it [this fast](http://www.theguardian.com/technology/video/2015/nov/24/boy-completes-rubiks-cube-in-49-seconds-word-recordvideo). Post your solutions in the comments and Happy Thanksgiving!
