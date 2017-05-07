---
id: 3486
title: An interactive visualization to teach about the curse of dimensionality
date: 2014-10-24T11:14:43+00:00
author: Jeff Leek
pe_theme_meta:
  - 'O:8:"stdClass":2:{s:7:"gallery";O:8:"stdClass":3:{s:2:"id";s:2:"-1";s:5:"width";s:0:"";s:6:"height";s:0:"";}s:5:"video";O:8:"stdClass":1:{s:2:"id";s:2:"-1";}}'
al2fb_facebook_link_id:
  - 136171103105421_716154598440399
al2fb_facebook_link_time:
  - 2014-10-24T15:14:50+00:00
al2fb_facebook_link_picture:
  - post=http://simplystatistics.org/?al2fb_image=1
dsq_thread_id:
  - 3151751001
categories:
  - Uncategorized
slug: "an-interactive-visualization-to-teach-about-the-curse-of-dimensionality"
---
I recently was contacted for an interview about the curse of dimensionality. During the course of the conversation, I realized how hard it is to explain the curse to a general audience. One of the best descriptions I could come up with was trying to describe sampling from a unit line, square, cube, etc. and taking samples with side length fixed. You would capture fewer and fewer points. As I was saying this, I realized it is a pretty bad way to explain the curse of dimensionality in words. But there was potentially a cool data visualization that would illustrate the idea. I went to my student [Prasad](http://www.biostat.jhsph.edu/~prpatil/), our resident interactive viz design expert to see if he could build it for me. He came up with this cool Shiny app where you can simulate a number of points (n) and then fix a side length for 1-D, 2-D, 3-D, and 4-D and see how many points you capture in a cube of that length in that dimension. You can find the [full app here](https://prpatil.shinyapps.io/cod_app/) or check it out on the blog here:

&nbsp;
