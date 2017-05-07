---
id: 3201
title: 'Introducing people to R: 14 years and counting'
date: 2014-07-29T17:17:09+00:00
author: Roger Peng
al2fb_facebook_link_id:
  - 136171103105421_679039225485270
al2fb_facebook_link_time:
  - 2014-07-29T21:17:15+00:00
al2fb_facebook_link_picture:
  - post=http://simplystatistics.org/?al2fb_image=1
dsq_thread_id:
  - 2883633098
categories:
  - Uncategorized
slug: "introducing-people-to-r-14-years-and-counting"
---
I've been introducing people to R for quite a long time now and I've been doing some reflecting today on how that process has changed quite a bit over time. I first started using R around 1998--1999 I think I first started talking about R informally to my fellow classmates (and some faculty) back when I was in graduate school at UCLA. There, the department was officially using [Lisp-Stat](http://www.stat.uiowa.edu/~luke/xls/xlsinfo/xlsinfo.html) (which I loved) and only later [converted its courses over to R](http://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=1&cad=rja&uact=8&ved=0CB0QFjAA&url=http%3A%2F%2Fwww.jstatsoft.org%2Fv13%2Fi07%2Fpaper&ei=uADYU_rQMrLfsATQ44L4Bw&usg=AFQjCNFymozQrHQaHHRdLkF3QGIqamvCSQ&sig2=Twlq_KFfvTekZgJSr9SS1g&bvm=bv.71778758,d.cWc). Through various brown-bag lunches and seminars I would talk about R, and the main selling point at the time was "It's just like S-PLUS but it's free!" As it turns out, S-PLUS was basically abandoned by academics and its ownership changed hands a number of times over the years (it is currently owned by TIBCO). I still talk about S-PLUS when [I talk about the history of R](http://youtu.be/kzxHxFHW6hs) but I'm not sure many people nowadays actually have any memories of the product.

When I got to Johns Hopkins in 2003 there wasn't really much of a modern statistical computing class, so [Karl Broman](http://kbroman.org), [Rafa Irizarry](http://rafalab.dfci.harvard.edu), [Brian Caffo](http://www.bcaffo.com), [Ingo Ruczinski](http://www.biostat.jhsph.edu/~iruczins/), and I got together and started what we called the "KRRIB" class, which was basically a weekly seminar where one of us talked about a computing topic of interest. I gave some of the R lectures in that class and when I asked people who had heard of R before, almost no one raised their hand. And no one had actually used it before. My approach was pretty much the same at the time, although I left out the part about S-PLUS because no one had used that either. A lot of people had experience with SAS or Stata or SPSS. A number of people had used something like Java or C/C++ before and so I often used that a reference frame. No one had ever used a functional-style of programming language like Scheme or Lisp.

Over time, the population of students (mostly first-year graduate students) slowly shifted to the point where many of them had been introduced to R while they were undergraduates. This trend mirrored the overall trend with statistics where we are seeing more and more students do undergraduate majors in statistics (as opposed to, say, mathematics). Eventually, by 2008--2009, when I'd ask how many people had heard of or used R before, everyone raised their hand. However, even at that late date, I still felt the need to convince people that R was a "real" language that could be used for real tasks.

R has grown a lot in recent years, and is being used in so many places now, that I think its essentially impossible for a person to keep track of everything that is going on. That's fine, but it makes "introducing" people to R an interesting experience. Nowadays in class, students are often teaching me something new about R that I've never seen or heard of before (they are quite good at Googling around for themselves). I feel no need to "bring people over" to R. In fact it's quite the opposite--people might start asking questions if I _weren't_ teaching R.

Even though my approach to introducing R has evolved over time, with the topics that I emphasize or de-emphasize changing, I've found there are a few topics that I always  stress to people who are generally newcomers to R. For whatever reason, these topics are always new or at least a little unfamiliar.

  * **R is a functional-style language**. Back when most people primarily saw something like C as a first programming language, it made sense to me that the functional style of programming would seem strange. I came to R from Lisp-Stat so the functional aspect was pretty natural for me. But many people seem to get tripped up over the idea of passing a function as an argument or not being able to modify the state of an object in place. Also, it sometimes takes people a while to get used to doing things like lapply() and map-reduce types of operations. Everyone still wants to write a for loop!
  * **R is both an interactive system and a programming language**. Yes, it's a floor wax and a dessert topping--get used to it. Most people seem expect one or the other. SAS users are wondering why you need to write 10 lines of code to do what SAS can do in one massive PROC statement. C programmers are wondering why you don't write more for loops. C++ programmers are confused by the weird system for object orientation. In summary, no one is ever happy.
  * **Visualization/plotting capabilities are state-of-the-art**. One of the big selling points back in the "old days" was that from the very beginning R's plotting and graphics capabilities where far more elegant than the ASCII-art that was being produced by other statistical packages (true for S-PLUS too). I find it a bit strange that this point has largely remained true. While other statistical packages have definitely improved their output (and R certainly has some areas where it is perhaps deficient), R still holds its own quite handily against those other packages. If the community can continue to produce things like ggplot2 and rgl, I think R will remain at the forefront of data visualization.

I'm looking forward to teaching R to people as long as people will let me, and I'm interested to see how the next generation of students will approach it (and how my approach to them will change). Overall, it's been just an amazing experience to see the widespread adoption of R over the past decade. I'm sure the next decade will be just as amazing.
