---
id: 187
title: Why "no one reads the statistics literature anymore"
date: 2012-05-30T12:54:00+00:00
author: admin
tumblr_simplystatistics_permalink:
  - http://simplystatistics.tumblr.com/post/24060354412/why-no-one-reads-the-statistics-literature-anymore
tumblr_simplystatistics_id:
  - 24060354412
dsq_thread_id:
  - 933698879
categories:
  - Uncategorized
slug: "why-no-one-reads-the-statistics-literature-anymore"
---
Spurred by Rafa&#8217;s post on <a href="http://simplystatistics.tumblr.com/post/23674712262/how-do-we-evaluate-statisticians-working-in-genomics" target="_blank">evaluating statisticians working in genomics</a>, there&#8217;s an interesting <a href="https://groups.google.com/group/reproducible-research/browse_thread/thread/7a8da11209cec2f2" target="_blank">discussion</a> going on at the Scientists for Reproducible Research group on statistics journals. Evan Johnson kicks it off:

> <span>&#8230;our statistics journals have </span><span>little impact on how genomic data are analyzed. My group rarely looks </span><span>to publish in statistics journals anymore because even IF we can get </span><span>it published quickly, NO ONE will read it, so the only things we send  </span><span>there anymore are things that we don&#8217;t care if anyone ever uses.</span>

Evan continues:

> <span>It&#8217;s </span><span>crazy to me that all of our statistical journals are barely even </span><span>noticed by bioinformaticians, computational biologists, and by people </span><span>in genomics. Even worse, very few non-statisticians in genomics ever </span><span>try to publish in our journals. Ultimately, this represents a major </span><span>failure in the statistical discipline to be collectively influential </span><span>on how genomic data are analyzed. </span>

I may agree with the first point but I&#8217;m not sure I agree with second. Regarding the first, I think <a href="http://simplystatistics.tumblr.com/post/23674712262/how-do-we-evaluate-statisticians-working-in-genomics#comment-538117393" target="_blank">Karl put it best</a> in that really the problem is that &#8220;the bulk of the people who might benefit from my method do not read the statistical literature&#8221;. For the second point, I think the issue is that the way science works is changing. Here&#8217;s my cartoon of how science worked in the &#8220;old days&#8221;, say, pre-computer era:

![](http://media.tumblr.com/tumblr_m4u5m65EJP1r08wvg.png)

The idea here is that scientists worked with statisticians (they may have been one and the same) to publish stat papers and scientific papers. If Scientist A saw a paper in a domain journal written by Scientist B using a method developed by Statistician C, how could Scientist A apply that method? He had to talk to Statistician D, who would read that statistics literature and find Statistician C&#8217;s paper to learn about the method. The point is that there is no direct link from Scientist A to Statistician C except through statistics journals. Therefore, it was critical for Statistician C to publish in the stat journals to ensure that there would be an impact on scientists.

My cartoon of the &#8220;new way&#8221; of doing things is below.

![](http://media.tumblr.com/tumblr_m4u5s53fSy1r08wvg.png)

Now, if Scientist wants to use a method developed by Statistician C (and used by Scientist B), he simply finds the software developed by Statistician C and applies it to his data. Here, there is a direct connection between A and C through software. If Statistician C wants his method to have an impact on scientists, there are two options: publish in stat journals and hope that the method filters through other statisticians, or publish in domain journals _with software_ so that other scientists may apply the method directly. It seems the latter approach is more popular in some areas.

Peter Diggle makes an <a href="http://simplystatistics.tumblr.com/post/23674712262/how-do-we-evaluate-statisticians-working-in-genomics#comment-538227946" target="_blank">important point</a> about generalized linear models and the seminal book written by McCullagh and Nelder:

> <span>the book [by McCullagh and Nelder] would have been read by many fewer people if Nelder and colleague had not embedded the idea in software that (for the time) was innovative in being interactive rather than batch-oriented.</span>

For better or for worse (and probably very often for worse), the software allowed many many people access to the methods.

The supposed attraction of publishing a statistical method in a statistics journal like JASA or JRSS-B is that the methods are published in a more abstract manner (usually using mathematical symbols) in the hopes that the methods will be applicable to a wide array of problems, not just the problem for which it was developed. Of course, the flip side of this argument is, as <a href="http://simplystatistics.tumblr.com/post/23674712262/how-do-we-evaluate-statisticians-working-in-genomics#comment-538117393" target="_blank">Karl says</a>, again eloquently, &#8220;<span>if you don&#8217;t get down to the specifics of a particular data set, then you haven&#8217;t really solved </span>_any_<span> problem&#8221;.</span>

I think abstraction is important and we need to continue publishing those kinds of ideas. However, I think there is one key point that the statistics community has had difficulty grasping, which is that **software represents an important form of abstraction**, if not the most important form. Anyone who has written software knows that there are many approaches to implementing your method in software and various levels of abstraction one can use. The variety of problems to which the software can be applied depends on how general the interface to your software is. This is why I always encourage people to write R packages because it often forces them to think a bit more abstractly about who might be using the software.

Whither the statistics journals? It&#8217;s hard to say. Having them publish more software probably won&#8217;t help as the audience remains the same. I&#8217;m a bit stumped here but I look forward to continued discussion!
