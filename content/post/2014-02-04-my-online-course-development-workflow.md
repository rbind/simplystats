---
id: 2628
title: My Online Course Development Workflow
date: 2014-02-04T09:30:00+00:00
author: Roger Peng
al2fb_facebook_link_id:
  - 136171103105421_603856829670177
al2fb_facebook_link_time:
  - 2014-02-04T14:30:05+00:00
al2fb_facebook_link_picture:
  - post=http://simplystatistics.org/?al2fb_image=1
dsq_thread_id:
  - 2219959907
categories:
  - Uncategorized
tags:
  - coursera
  - data science
slug: "my-online-course-development-workflow"
---
One of the nice things about developing [9 new courses](http://jhudatascience.org) for the JHU Data Science Specialization in a short period of time is that you get to learn all kinds of cool and interesting tools. One of the ways that we were able to push out so much content in just a few months was that we did most of the work ourselves, rather than outsourcing things like video production and editing. You could argue that this results in a poorer quality final product but (a) I disagree; and (b) even if that were true, I think the content is still valuable.

The advantage of learning all the tools was that it allowed for a quick turn-around from the creation of the lecture to the final exporting of the video (often within a single day). For a hectic schedule, it's nice to be able to write slides in the morning, record some video in between two meetings in the afternoon, and the combine/edit all the video in the evening. Then if you realize something doesn't work, you can start over the next day and have another version done in less than 24 hours.

I thought it might be helpful to someone out there to detail the workflow and tools that I use to develop the content for my online courses.

  * <span style="line-height: 16px;">I use <a href="http://www.techsmith.com/camtasia-mac-features.html">Camtasia for Mac</a> to do all my screencasting/recording. This is a nice tool and I think has more features than your average screen recorder. That said, if you just want to record your screen on your Mac, you can actually use the built-in Quicktime software. I used to do all of my video editing in Camtasia but now it's pretty much glorified screencasting software for me.</span>
  * For talking head type videos I use my [iPhone 5S](http://www.apple.com/iphone-5s/) [mounted](http://www.amazon.com/gp/product/B00AAKERD6/ref=oh_details_o03_s00_i00?ie=UTF8&psc=1) on a [tripod](http://www.amazon.com/gp/product/B000V7AF8E/ref=oh_details_o02_s00_i00?ie=UTF8&psc=1). The iPhone produces surprisingly good 1080p HD 30 fps video and is definitely sufficient for my purposes (see [here](http://www.apple.com/30-years/1-24-14-film/#video-1242014-film) for a much better example of what can be done). I attach the phone to an [Apogee microphone](http://apogeedigital.com/products/mic.php) to pick up better sound. For some of the [interviews](http://simplystatistics.org/interviews/) that we do on Simply Statistics I use two iPhones (A 5S and a 4S, my older phone).
  * To record my primary sound (i.e. me talking), I use the [Zoom H4N portable recorder](http://www.amazon.com/gp/product/B001QWBM62/ref=oh_details_o00_s00_i01?ie=UTF8&psc=1). This thing is not cheap but it records very high-quality stereo sound. I can connect it to my computer via USB or it can record to a SD card.
  * For simple sound recording (no video or screen) I use [Audacity](http://audacity.sourceforge.net).
  * All of my lecture videos are run through [Final Cut Pro X](http://www.apple.com/final-cut-pro/) on my [15-inch MacBook Pro with Retina Display](http://www.apple.com/macbook-pro/). Videos from Camtasia are exported in Apple ProRes format and then imported into Final Cut. Learning FCPX is not for the faint-of-heart if you're not used to a nonlinear editor (as I was not). I bought this [excellent book](http://www.amazon.com/gp/product/0321774671/ref=wms_ohs_product?ie=UTF8&psc=1) to help me learn it, but I still probably only use 1% of the features. In the end using a real editor was worth it because it makes merging multiple videos much easier (i.e. multicam shots for screencasts + talking head) and editing out mistakes (e.g. typos on slides) much simpler. The editor in Camtasia is pretty good but if you have more then one camera/microphone it becomes infeasible.
  * I have an [8TB Western Digital Thunderbolt drive](http://store.apple.com/us/product/HD816ZM/A/wd-8tb-my-book-thunderbolt-duo-dual-drive-storage-system?fnode=5f&fs=f%3Dthunderbolt%26fh%3D3783%252B309a) to store the raw video for all my classes (and some backups). I also use two [1TB Thunderbolt drives](http://store.apple.com/us/product/HE965VC/A/g-tech-1tb-g-drive-mobile-thunderboltusb-30-hard-drive?fnode=5f&fs=f%3Dthunderbolt%26fh%3D3783%252B309a) to store video for individual classes (each 4-week class borders on 1TB of raw video). These smaller drives are nice because I can just throw them in my bag and edit video at home or on the weekend if I need to.
  * Finished videos are shared with a [Dropbox for Business](https://www.dropbox.com/business) account so that Jeff, Brian, and I can all look at each other's stuff. Videos are exported to H.264/AAC and uploaded to Coursera.
  * For developing slides, Jeff, Brian, and I have standardized around using [Slidify](http://slidify.org). The beauty of using slidify is that it lets you write everything in [Markdown](http://daringfireball.net/projects/markdown/), a super simple text format. It also make it simpler to manage all the course material in [Git/GitHub](https://github.com/DataScienceSpecialization/courses) because you don't have to lug around huge PowerPoint files. Everything is  a light-weight text file. And thanks to [Ramnath's](http://people.mcgill.ca/ramnath.vaidyanathan/) incredible grit and moxie, we have handy tools to easily export everything to PDF and HTML slides (HTML slides hosted via [GitHub Pages](http://pages.github.com)).

The first courses for the [Data Science Specialization](https://www.coursera.org/specialization/jhudatascience/1) start on April 7th. Don't forget to sign up!
