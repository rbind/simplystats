---
id: 1985
title: A general audience friendly explanation for why Lars Peter Hansen won the Nobel Prize
date: 2013-10-14T10:54:33+00:00
author: Jeff Leek
al2fb_facebook_link_id:
  - 136171103105421_555196061202921
al2fb_facebook_link_time:
  - 2013-10-14T18:28:31+00:00
al2fb_facebook_link_picture:
  - post=http://simplystatistics.org/wp-content/uploads/2013/10/weights1.png
dsq_thread_id:
  - 1856789134
categories:
  - Uncategorized
slug: "why-did-lars-peter-hansen-win-the-nobel-prize-generalized-method-of-moments-explained"
---
_Lars Peter Hansen won the Nobel Prize in economics for creating the generalized method of moments. [A rather technical](http://en.wikipedia.org/wiki/Generalized_method_of_moments) explanation of the idea appears on Wikipedia. [These](http://lipas.uwasa.fi/~sjp/Teaching/gmm/lectures/gmmc3.pdf) are a good set of lecture notes on gmms if you like math. I went over to Marginal Revolution to see what was being written about the Nobel Prize winners. Clearly a bunch of other people were doing the same thing as the site was pretty slow to load. [Here is what Tyler C. says about Hansen](http://marginalrevolution.com/marginalrevolution/2013/10/lars-peter-hansen-nobel-laureate.html). In describing Hansen's work he says:_

> For years now journalists have asked me if Hansen might win, and if so, how they might explain his work to the general reading public.  Good luck with that one.

_[Alex T. does a good job](http://marginalrevolution.com/marginalrevolution/2013/10/lars-peter-hansen-nobelist.html) of explaining the idea, but it still seems a bit technical for my tastes. [Guan Y.](http://noahpinionblog.blogspot.com/2013/10/lars-peter-hansen-explained-kind-of.html)  does another good, and a little less technical explanation here, but it is still a little rough if you aren't an economist. So I took a shot at an even more "general audience friendly" version below._

A very common practice in economics (and most other scientific disciplines) is to collect experimental data on two (or more) variables and to try to figure out if the variables are related to each other. A huge amount of statistical research is dedicated to this relatively simple-sounding problem. Lars Hansen won the Nobel Prize for his research on this problem because:

  1. **Economists (and scientists) hate assumptions they can't justify with data and want to use the fewest number possible. **The recent [Rogoff and Reinhart controversy](http://www.newyorker.com/online/blogs/johncassidy/2013/04/the-rogoff-and-reinhart-controversy-a-summing-up.html) illustrates this idea. They wrote a paper that suggested public debt was bad for growth. But when they estimated the relationship between variables they made assumptions (chose weights) that have been questioned widely - suggesting that public debt might not be so bad after all. But not before a bunch of politicians used this result to justify austerity measures which had a huge impact on the global economy.
  2. **Economists (and mathematicians) love to figure out the "one true idea" that encompasses many ideas.** When you show something about the really general solution, you get all the particular cases for free. This means that all the work you do to show some statistical procedure is good helps not just you in a general sense, but all the specific cases that are examples of the general things you are talking about.

I'm going to use a really silly example to illustrate the idea. Suppose that you collect information on the weight of animals bodies and the weight of their brains. You want to find out how body weight and brain weight are related to each other. You collect the data, they might look something like this:<a href="http://simplystatistics.org/2013/10/14/why-did-lars-peter-hansen-win-the-nobel-prize-generalized-method-of-moments-explained/weights-2/" rel="attachment wp-att-1990"><img class="alignnone size-full wp-image-1990" alt="weights" src="http://simplystatistics.org/wp-content/uploads/2013/10/weights1.png" width="445" height="427" /></a>

So it looks like if you have a bigger body you have a bigger brain (except for poor old Triceratops who is big but has a small brain). Now you want to say something quantitative about this. For example:

> Animals that are 1 kilogram larger have a brain that is on average k kilograms larger.

How do you figure that out? Well one problem is that you don't have infinite money so you only collected information on a few animals. But you don't want to say something just about the animals you measured - you want to change the course of science forever and say something about the relationship between the two variables _for all animals_.

The best way to do this is to make some assumptions about what the measurements of brain and body weight look like if you could collect all of the measurements. It turns out if you assume that you know the complete shape of the distribution in this way, it becomes pretty straightforward (with a little math) to estimate the relationship between brain and body weight using something called [maximum likelihood estimation](http://en.wikipedia.org/wiki/Maximum_likelihood). This is probably the most common way that economists or scientists relate one variable to another ([the inventor](http://en.wikipedia.org/wiki/Ronald_Fisher) of this approach is still waiting for his Nobel).

The problem is you assumed a lot to get your answer. For example, here are the data from just the brains that we have collected. It is pretty hard to guess exactly what shape the data from the whole world would look like.

<a href="http://simplystatistics.org/2013/10/14/why-did-lars-peter-hansen-win-the-nobel-prize-generalized-method-of-moments-explained/brains/" rel="attachment wp-att-1995"><img class="alignnone size-full wp-image-1995" alt="brains" src="http://simplystatistics.org/wp-content/uploads/2013/10/brains.png" width="445" height="427" /></a>

This presents the next problem: how do we know that we have the "right one"?

We don't.

One way to get around this problem is to use a very old idea called the  [method of moments](http://en.wikipedia.org/wiki/Method_of_moments_(statistics)). Suppose we believe the equation:

<p style="text-align: center;">
  <em>Average<strong> in World</strong> Body Weight = k * Average <strong>in World</strong> Brain Weight</em>
</p>

<p style="text-align: left;">
  In other words, if we take any animal in the world on average it's brain weights 5 kilos then its body will on average be (k * 5) kilos. The relationship is only "on average" because there are a bunch of variables we didn't measure and they may affect the relationship between brain and body weight. You can see it in the scatterplot because the two values don't lie on the same line.
</p>

<p style="text-align: left;">
  One way to estimate k is to just replace the numbers you wish you knew with the numbers you have in your population:
</p>

_Average **in Data you Have** Body Weight = k * Average i**n Data you Have** Brain Weight_

Since you have the data the only thing you don't know in the equation is k, so you can solve the equation and get an estimate. The nice thing here is we don't have to say much about the shape of the data we expect for body weight or brain weight. _We just have to believe this one equation_.  The key insight here is that you don't have to know the whole shape of the data, just one part of it (the average).  An important point to remember is that you are still making some assumptions here (that the average is a good thing to estimate, for example) but they are definitely fewer assumptions than you make if you go all the way and specify the whole shape, or distribution, of the data.

This is a pretty oversimplified version of the problem that Hansen solved. In reality when you make assumptions about the way the world works you often get more equations like the one above than variables you want to estimate. Solving all of those equations is now complicated because the answers from different equations  might contradict each other (the technical word is [overdetermined](http://en.wikipedia.org/wiki/Overdetermination)).

Hansen showed that in this case you can take the equations and multiply them by a set of weights. You put more weight on equations you are more sure about, then add them up. If you choose the weights well, you avoid the problem of having too many equations for two few variables. This is the thing he won the prize for - the **generalized method of moments**.

This is all a big deal because the variables that economists measure frequently aren't very pretty. One common way they aren't pretty is that they are often measured over time, with complex relationships between values at different time points. That means it is hard to come up with realistic assumptions about what the data may look like.

By proposing an approach that doesn't require as many assumptions Hansen satisfied criteria (1) for things economists like. And, if you squint just right at the equations he proposed, you can see they actually are a general form of a bunch of other estimation techniques like [maximum likelihood estimation](http://en.wikipedia.org/wiki/Maximum_likelihood) and [instrumental variables](http://en.wikipedia.org/wiki/Instrumental_variable), which made it easier to prove theoretical results and satisfied criteria (2) for things economists like.

_ \----_

_Disclaimer: This post was written for a general audience and may cause nerd-rage in those who see (important) details I may have skimmed over. _

_Disclaimer #2: I'm not an economist. So I can't talk about economics. T__here are reasons gmm is useful economically that I didn't even talk about here._
