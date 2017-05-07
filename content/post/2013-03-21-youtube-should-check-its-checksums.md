---
id: 1113
title: Youtube should check its checksums
date: 2013-03-21T22:37:35+00:00
author: Jeff Leek
al2fb_facebook_link_id:
  - 136171103105421_475550335834161
al2fb_facebook_link_time:
  - 2013-03-22T02:37:39+00:00
al2fb_facebook_link_picture:
  - post=http://simplystatistics.org/?al2fb_image=1
dsq_thread_id:
  - 1155835173
categories:
  - Uncategorized
slug: "youtube-should-check-its-checksums"
---
I am in the process of uploading the video lectures for [Data Analysis](https://www.coursera.org/course/dataanalysis). I am getting ready to send out the course wrap-up email and I wanted to include the link to the Youtube playlist as well.

Unfortunately, Youtube keeps reporting that a pair of the videos in week 2 are duplicates. This is true despite them being different lengths (12:15 vs. 16:58), having different titles, and having dramatically different content. I [I am in the process of uploading the video lectures for [Data Analysis](https://www.coursera.org/course/dataanalysis). I am getting ready to send out the course wrap-up email and I wanted to include the link to the Youtube playlist as well.

Unfortunately, Youtube keeps reporting that a pair of the videos in week 2 are duplicates. This is true despite them being different lengths (12:15 vs. 16:58), having different titles, and having dramatically different content. I](http://productforums.google.com/forum/#!topic/youtube/Yc7hHqwtBX0) on the forums:

> YouTube uses a checksum to determine duplicates. The chances of having two different files containing different content but have the same checksum would be astronomical.

That isn't on the [official Google documentation page](http://support.google.com/youtube/bin/answer.py?hl=en&answer=58139), which is pretty sparse, but is the only description I can find of how Youtube checks for duplicate content. A [checksum](http://en.wikipedia.org/wiki/Checksum) is a function you apply to the data from a video that (ideally) with high probability will yield different values when different videos are uploaded and the same value when the same video is uploaded. One possible checksum function could be the length of the video. Obviously that won't work in general because many videos might be 2 minutes exactly.

Regardless, it looks like Youtube can't distinguish my lecture videos. I'm thinking Vimeo or something else if I can't get this figured out. Of course, if someone has a suggestion (short of re-exporting the videos from Camtasia) that would allow me to circumvent this problem I'd love to hear it!

**Update**: _I ended up fiddling with the videos and got them to upload. Thanks to the helpful comments!_

&nbsp;
