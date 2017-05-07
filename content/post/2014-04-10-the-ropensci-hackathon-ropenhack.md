---
id: 2928
title: 'The #rOpenSci hackathon #ropenhack'
date: 2014-04-10T09:41:09+00:00
author: Jeff Leek
dsq_thread_id:
  - 2599532572
al2fb_facebook_exclude:
  - 
al2fb_facebook_exclude_video:
  - 
al2fb_facebook_link_id:
  - 136171103105421_630041917051668
al2fb_facebook_link_time:
  - 2014-04-10T13:41:16+00:00
al2fb_facebook_link_picture:
  - post=http://simplystatistics.org/?al2fb_image=1
categories:
  - Uncategorized
slug: "the-ropensci-hackathon-ropenhack"
---
_Editor's note: This is a guest post by [Alyssa Frazee](http://alyssafrazee.com/), a graduate student in the Biostatistics department at Johns Hopkins and a participant in the recent rOpenSci hackathon. _

Last week, I took a break from my normal PhD student schedule to participate in a [hackathon](https://github.com/ropensci/hackathon) in San Francisco. The two-day event was hosted by [rOpenSci](http://ropensci.org/), an organization committed to developing R tools for open science. Working with [several wonderful people](https://github.com/ropensci/hackathon/wiki/Confirmed-attendees) from the R community was inspiring, humbling, and incredibly fun. So many great things happened in a two-day whirlwind: it would be impossible now to capture the whole thing in a narrative that would do it justice. So instead of a play-by-play, here are some of the quotes from the event that I've recently been reflecting on:

### **"The enemy isn't R, Python, or Julia. The enemy is closed-source science."**

<p dir="ltr">
  There have been some lively internet debates recently about mathematical and scientific computing languages. While conversations about these languages are interesting and necessary, the forest often gets lost for the trees: in the end, we are here to do good science, and we should use whatever makes that easiest. We should build strong, collaborative communities, both within languages and across them. A closed-source science mentality hinders this kind of collaboration. I thought one of the hackathon projects, an<a href="https://github.com/takluyver/IRkernel"> R kernel for the iPython notebook</a>, especially exemplified a commitment to open science and to cross-language collaboration. It was so awesome to spend two days with R folks like this who genuinely enjoy working together, in any language, to make scientific computing better.
</p>

### **"Pair debugging is fun!"**

<p dir="ltr">
  This quote perfectly captures one of my favorite things about hackathons: genuine group work! During my time in graduate school, I've done most of my programming solo. I think this is the nature of getting a PhD: the projects have to be yours, and all the other PhD students are working on their solo projects. So I really enjoyed the hackathon because it facilitated true pair/group work: two or more peers working on the same project, in the same room, at the same time. I like this work strategy for many reasons:
</p>

<p dir="ltr">
  •          The rate at which I learn new things is high, since it's so easy to ask a question. Lots of time is saved by not having to sift through internet search results.
</p>

<p dir="ltr">
  •          Sometimes I find solo debugging to be<a href="https://twitter.com/irqed/status/358212928404586498"> pretty painful</a>. But I think pair debugging is fun and satisfying: it's like an inspirational sports movie. It's you and me, the ragtag underdogs, against the computer, the evil bully from across town. Relatedly, the sweet sweet taste of victory is also shared.
</p>

<p dir="ltr">
  •          It's easier to stay focused on the task at hand. I'm not as easily distracted by email/Twitter/Facebook/blogs/the rest of the internet when I'm not coding alone.
</p>

<p dir="ltr">
  My<a href="http://en.wikipedia.org/wiki/Academic_genealogy"> academic sister</a>,<a href="http://hilaryparker.com/"> Hilary</a>, and I did a good amount of pair debugging during the hackathon, and I kept finding myself thinking "I wish this would have been possible while we were both grad students!" I think we both had lots of fun working together. For a short discussion of more fun aspects of pairing,<a href="http://jvns.ca/blog/2014/03/02/pair-programming/"> here's a blog post I like</a>. At the rOpenSci hackathon in particular, group work was especially awesome because we could ask questions in person to people who have written the libraries our projects depend on, or to RStudio developers, or to GitHub employees, or to potential users of the projects. Just some of the many joys of having lots of<a href="https://github.com/ropensci/hackathon/wiki/Confirmed-attendees"> talented, friendly R programmers</a> all in the same space!
</p>

### **"Want me to write some unit tests for your unit tests?"**

<p dir="ltr">
  During the hackathon, I primarily worked on a unit-testing package called<a href="https://github.com/ropensci/testdat"> testdat</a>. Testdat provides functions that check for and fix common problems with tabular data, like UTF-8 characters and inconsistent missing data codes, with the overall goal of making data processing/cleaning more reproducible. The project was really good for a two-day hackathon, since it was small enough to almost finish in two days, and it was very modular: one person worked on the missing data checking functions, another worked on UTF-8 checking, a third wrote the tests for the finished functions (unit tests for unit tests!), etc. Also, it didn't require a lot of background knowledge in a specific subject area or a deep dive into an existing codebase: all it required were some coding skills and perhaps a frustrating experience with messy data in the past (for motivation).
</p>

<p dir="ltr">
  Finding an appropriate project to work on was probably my biggest challenge at this hackathon. I spent the summer at<a href="https://www.hackerschool.com/"> Hacker School</a>, where the days were structured similarly to how they were at the rOpenSci hackathon: there wasn't really any structure. In both scenarios, the minimal structure was intentional. Lots of great collaborative work can happen with a few free days of hacking. But with two free days at the hackathon (versus Hacker School's 50), it was much more important to choose a good project quickly and get coding. One way to do this would have been to arrive at the hackathon with a small project in hand (<a href="https://github.com/ropensci/hackathon/issues?state=open">many people did this</a>). My strategy, however, was to chat with a few different project groups for the first hour or two on day 1, and then stick with one of those groups for the rest of the time. It worked well -- as I mentioned above, testdat was a great project -- but I did feel some time pressure (internally!) to choose a small project quickly.
</p>

<p dir="ltr">
  For a look at some of the other hackathon projects, check out<a href="https://github.com/ropensci"> rOpenSci's GitHub page</a>, the<a href="https://github.com/ropensci/hackathon"> hackathon GitHub page</a>, project-specific posts on the<a href="http://ropensci.org/blog/"> rOpenSci blog</a>, or the hackathon's live-tweet hashtag,<a href="https://twitter.com/search?src=typd&q=%23ropenhack"> #ropenhack</a>.
</p>

### **"Why are there so many Minnesotans here?"**

<p dir="ltr">
  There were at least four hackathon attendees (out of 35-40 total) that either currently live in or hail from Minnesota. Talk about overrepresentation! We are everywhere.
</p>

### **"I love my job."**

<p dir="ltr">
  I'm a late-stage PhD student, so the job market is looming closer with every passing day. When I meet new people working in statistics, genomics, data science, or another related field, I like to ask them whether they like their current work, how it compares to other jobs they've had, etc. Hackathon attendees had all kinds of jobs: academic researcher, industry scientist, freelancer, student, etc. The majority of the responses to my inquiries about how they liked their work was "I love it." The situation made the job market seem exciting, rather than intimidating: among the hackathon attendees and folks from the SF data science community that hung out with us for a dinner, the jobs themselves were pretty heterogeneous, but the general enjoyment of the work seemed consistently high.
</p>

### **"What's the future of R?"**

<p dir="ltr">
  I suppose we should have known that existential questions like this would come up when 40 passionate R people spend two straight days together. Our discussion of the future of R didn't really yield any definitive answers or predictions, but I think we have big dreams for what R's future will look like: vibrant, open, collaborative, and scientifically driven. If the hackathon atmosphere was any indication of R's future, I'm feeling pretty optimistic about where things are going.
</p>

In closing: we're really grateful to the people and organizations that made the hackathon possible: [rOpenSci](http://ropensci.org/), [Karthik Ram](http://inundata.org/), [GitHub](http://github.com), the [Sloan Foundation](http://www.sloan.org/), and [F1000 Research](http://f1000research.com/). Thanks for strengthening the R community, giving us the chance to meet each other outside of the internet, and helping us have a great time doing R, for science, together!
