---
title: Data Science on a Chromebook
author: Jeff Leek
date: '2017-08-29'
slug: data-science-on-a-chromebook
categories:
  - Education
tags:
  - chromebook
---


About nine months ago [I announced](https://simplystatistics.org/2016/11/08/chromebook-part2/) that I was attempting a Chromebook experiment for the 2nd time. At first I thought it was going to be a short term experiment just to see if it was possible to function with only a Chromebook. But in an interesting twist I got used to it and have been working exclusively on a Chromebook for the last few months since the experiment started. 

I set myself the following requirements: 

1. I could only use Chrome OS - no installing/booting to Linux
2. I couldn't use another computer for any task 
3. I had to be "fully cloudy" in the sense that I didn't run any additional hardware

One of the reasons I did this was I wanted to see if it was possible to be a functioning/day to day data scientist without using an expensive laptop. This is part of a broader experiment I'm just beginning on how to [democratize data science education](https://peerj.com/preprints/3195/). 


I'm not going to go into extreme detail on how I set everything up here (more on that in a second) but I thought I'd describe my Chromebook set up that I've been using for the last couple of months. 


I have been using two [Samsung Chromebook Plus](https://www.amazon.com/dp/B01LZ6XKS6) computers, one of which I keep at home and one which I keep at work. One of the best parts about the fully cloudy/Chrome OS requirement is this means that from the user perspective everything is always in sync. I log off the computer at home, come to work, log on and its like I'm on the same computer. 

I thought I'd just go through at a high level the software I'm using to keep everything running. 


* __Google Slides for presentations__ - _(Cost:free)_ For the most part this has been really easy and is a smooth transition from Powerpoint. One thing I've found really useful is the laser pointer mode of the Chromebook plus for highlighting things on screen when presenting. I have also found that since they are using USB-C adapters I can participate in [dongle communism](https://simplystatistics.org/2011/09/23/dongle-communism/) with Apple users. I had to figure out the display mirroring menus in Chrome OS but after that this was easy. 
* __Google Docs/Paperpile for writing__ - _(Cost:free)_ This works great and has been my work flow as I describe [in my book](https://leanpub.com/modernscientist) since before the Chromebook experiment started. 
* __DocHub for signing things__ - _(Cost:\$4.99/month/billed yearly)_ Often I have to "sign" a document by adding my electronic signature. I used the note feature to create a jpeg of my signature. I can then upload the file to Docub 
* __Overleaf for writing latex__ - _(Cost:free or \$10/month/billed yearly)_  This is not necessary for all data scientists, but it has some nice features, including when I could [live write a grant](https://twitter.com/jtleek/status/856297030582497281) and people could watch.
* __Gmail for email__ - _(Cost:free)_ this one is pretty obvious. 
* __Google Sheets for data__ - _(Cost:free)_ this is again a choice I had been making frequently before I moved to Chromebooks. The [googlesheets](https://github.com/jennybc/googlesheets) R package lets you do [all sorts of cool things](https://simplystatistics.org/2016/08/26/googlesheets/) with google sheets. 
* __Digital Ocean for Rstudio__ - _(Cost: \$20/mo)__ I set up an Rstudio server and run it remotely on Digital Ocean. I currently use the \$20/month option but sometimes scale it up or down as needed. One great thing about the dockerized version of the software is that I can pause the instance, scale up the compute infrastructre, restart and everything is just as I left it but with more computational horsepower. I can then use that for a few hours as needed and scale back down. I use the terminal in Rstudio for most of my management of code/etc. on Github. 
* __Google Hangouts for video conferencing__ - _(Cost:free)_ this is the default but honestly I wish I had a better option. I often find it complicated and laggy to work with, but still mostly better than Skype. Would be open to suggestions on that front. 
* __Slack for communication__ _(Cost: \$6.67/month)_ a variety of different teams here at JHU and around the country use Slack for group communication. I use it through the web browser, although the Chromebook Plus allows you to install Android apps. 
* __Google Music for listening to music/podcasts__ _(Cost:\$10/month)_ This is an unnecesary expense but I like having something to listen to while I work. 
* __Tweetdeck for twitter__ - _(Cost:free)_ I have a couple of accounts I manage and I do this through the web browser. For the most part this works great.

So my total monthly cost comes to something like \$35 a month for various cloud services. 
At first doing this was sort of like writing a Haiku. I could still write, but the constraints made me think hard about how I did things. But after a while I have gotten so used to the form that it feels natural and I don't miss my (really expensive) Apple products anymore. 

The biggest headaches have been:

* __Wifi connectivity issues__ - this isn't as big as I thought it would be, most places have wifi where I work and it is mostly ok. When I have trouble I stream from my phone. 
* __Wifi blocking my DO server__ - this one has been a headache. I think if I just got a custom domain for the webserver and didn't just use the IP address I could avoid it. When I have trouble I stream from my phone. 
* __httr and Rstudio on a server__ - when I need to authenticate for websites I have run into trouble, but if I set `httr_oob_default==TRUE` ([documentation here](https://support.rstudio.com/hc/en-us/articles/217952868-Generating-OAuth-tokens-from-a-server)) then the Oauth process generates a code I can paste into my server. 


Beyond that it has actually been pretty straightforward to do almost anything I need. Stay tuned because this experiment has inspired a broader effort we are doing with Chromebooks here at the [JHU Data Science Lab](http://jhudatascience.org/). If you want to hear about this effort as it gets underway, sign up for [our weekly newsletter](http://jhudatascience.us16.list-manage.com/subscribe?u=5ea551600fcdf84334e5aa6b0&id=26c0b7221a) and you'll be the first to hear new announcements.





