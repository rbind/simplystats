---
id: 2024
title: Teaching least squares to a 5th grader by calibrating a programmable robot
date: 2013-10-15T10:07:16+00:00
author: Rafael Irizarry
al2fb_facebook_link_id:
  - 136171103105421_555638117825382
al2fb_facebook_link_time:
  - 2013-10-15T14:07:21+00:00
al2fb_facebook_link_picture:
  - post=http://simplystatistics.org/?al2fb_image=1
dsq_thread_id:
  - 1859927582
categories:
  - Uncategorized
slug: "teaching-least-squares-to-a-5th-grader-by-calibrating-a-programmable-robot"
---
The Lego Mindstorm kit provides software and hardware to create programmable robots. A very simple first task is figuring out how to make the robot move any given distance. You get to program the number of wheel rotations. The video below shows how one can use this to motivate and teach least squares. We assumed the formula was distance = K × rotations, collected data for 1,2..., 10 rotations, then used R to motivate (via plots) and calculate the least squares estimate of K.



Not shown in the video is my explanation of how we could also use the formula circumference  = pi x diameter to figure out K and a discussion about which approach is better.  Next project will be to calibrate turns which are achieved by rotating the wheels in opposite directions. This time I will use both the geometric approach (compute the wheel circumference and the circumference defined by robot turns) and the statistical approach.
