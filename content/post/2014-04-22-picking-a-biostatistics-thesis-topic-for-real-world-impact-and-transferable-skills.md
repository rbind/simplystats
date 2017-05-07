---
id: 2979
title: Picking a (bio)statistics thesis topic for real world impact and transferable skills
date: 2014-04-22T14:39:27+00:00
author: Jeff Leek
al2fb_facebook_link_id:
  - 136171103105421_635974499791743
al2fb_facebook_link_time:
  - 2014-04-22T18:39:35+00:00
al2fb_facebook_link_picture:
  - post=http://simplystatistics.org/?al2fb_image=1
dsq_thread_id:
  - 2631107333
categories:
  - Uncategorized
slug: "picking-a-biostatistics-thesis-topic-for-real-world-impact-and-transferable-skills"
---
One of the things that was hardest for me in graduate school was starting to think about my own research projects and not just the ideas my advisor fed me. I remember that it was stressful because I didn't quite know where to start. After having done this for a while and particularly after having read a bunch of papers by people who are way more successful than I am, I have come to the following algorithm as a means for finding a topic that will have real world impact and also give you skills to take on new problems in a flexible way.

  1.  Find a scientific problem that hasn't been solved with data (by far hardest part)
  2. Define your metric for success
  3.  Collect data/partner up with someone with data for that problem.
  4.  Create a good solution to the problem
  5.  Only invent new methods if you must
  6. (Optional) Write software and document the hell out of it
  7. (Optional) Respond to users and update as needed
  8. Don't get (meanly) competitive

The first step is definitely the most important and the hardest. The balance is between big important problems that lots of people are working on but where the potential for innovation is low and small detailed problems where you won't have serious competition but you will have limited impact. In general good ways to find scientific problems are the following. (1) Find close and real scientific/applications collaborators. Not real like you talk to them once a month, real like you have a weekly meeting, you try to understand how their data are collected or generated and you ask them specifically what problems prevent them from doing their job well then solve those problems. (2) You come up with a scientific question you have on your own. In mature research areas like genomics this requires a huge amount of reading to know what people have done before you, or to at least know what new technologies/data are becoming available. (3) You you could read a ton of papers and find one that produces interesting data you think could answer a question the authors haven't asked. In general, <a style="font-size: 16px;" href="http://simplystatistics.org/2013/05/29/what-statistics-should-do-about-big-data-problem-forward-not-solution-backward/">the key is to put the problem first</a>, before you even think about how to quantify or answer the question.

Next you have to define your metric for success. This metric should be scientific. You should try to say, "if I could predict x at 70% accuracy I could solve scientific problem y" or "if I could infer the relationship between x and y I would know something about z". The metric should be compared to the scientific standards in the field. As an example, screening tests for the general population often must be 99% sensitive and specific (or more) due to low prevalence. But in a sub population, sensitivity and specificity of 70% or 80% may be really useful.

Then you find the data. Here the key quote comes from Tukey:

> The data may not contain the answer. The combination of some data and an aching desire for an answer does not ensure that a reasonable answer can be extracted from a given body of data.

My experience is that when you start with the problem first, the data are often hard to come by, have quirks, or are not quite right for the problem you want to solve. Generating the perfect data is often very expensive, so a huge amount of the effort you will spend is either (a) generating the perfect data or (b) determining if the data you collected is "good enough" to answer the question. One important point here is that knowing when you have failed is the entire name of the game here. If you get stuck once, you should try again. If you get stuck 100 times, it might be time to look for a different data set or figure out why the problem is unanswerable with current data. Incidentally, this is the most difficult part of the approach I'm proposing for coming up with topics. Failure is both likely and frequent, but that is a good thing when you are in grad school if you can learn from it and learn to predict when you are going to fail.

Since you've identified a problem that hasn't been solved before in step 1, the first thing to try is to come up with a sensible solution using only the methods that already exist. In many cases, these existing methods [will work pretty well](http://simplystatistics.org/2014/03/20/the-8020-rule-of-statistical-methods-development/). If they don't, invent only as much statistical methodology and theory as you need to solve the problem. If you invent something new here, you should try it out [on simple simulated examples and complex data](http://simplystatistics.org/2013/03/06/the-importance-of-simulating-the-extremes/) where you either know the answer or can perform cross-validation/replication analysis.

At this point, if you have a basic solution to the problem, even if it is just the t-test, you are in great shape! You have solved a problem that is new and you are ready to publish. If you have invented some methods along the way, publish those, too!

In some cases the problems you solve will be focused on an area where lots of other people can collect similar data to answer similar problems. In this case, your most direct route to maximum impact is to write simple, usable, and really well documented software other people can use. Write it in R, make it free, give it a vignette and advertise it! If people use your software they will send you bug reports, patches, typos, fixes, and wish lists of things they want your software to do. The more you help people and respond, the more your software will get used and the more impact your method will have.

Step 8 is often the hardest part. If you do something interesting, you will have a ton of competitors. People will write better and more precise methods down and will "beat" your method. That's ok, in fact it is good! The more people that compare to your approach, the more you know you picked a good problem. In some cases, people will genuinely create better methods than you will. Learn from them and make your methods and software better. But try not to be upset that they wrote a paper about how their idea is so much better than yours, it is a high compliment they thought your idea was worth comparing to. This is one the author of the post hasn't nailed down perfectly but I think the more you can do it the happier you will be.

The best part of this algorithm is that it gives you the problem first focus that will make it easy to transition if you do a postdoc with a different kind of data, or move to industry, or start with new collaborators.
