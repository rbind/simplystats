---
id: 3230
title: Interview with COPSS Award winner Martin Wainwright
date: 2014-08-18T10:00:15+00:00
author: Jeff Leek
al2fb_facebook_link_id:
  - 136171103105421_687117658010760
al2fb_facebook_link_time:
  - 2014-08-18T14:00:23+00:00
al2fb_facebook_link_picture:
  - post=http://simplystatistics.org/wp-content/uploads/2014/08/wainwright.jpg
dsq_thread_id:
  - 2937454447
categories:
  - Uncategorized
slug: "interview-with-copss-award-winner-martin-wainright"
---
_Editor's note: [Martin Wainwright](http://www.cs.berkeley.edu/~wainwrig/) is the winner of the 2014 COPSS Award. This award is the most prestigious award in statistics, sometimes refereed to as the [Nobel Prize in Statistics](http://en.wikipedia.org/wiki/COPSS_Presidents'_Award). Martin received the award for: "<span style="color: #222222;"> For fundamental and groundbreaking contributions to high-dimensional statistics, graphical modeling, machine learning, optimization and algorithms, covering deep and elegant mathematical analysis as well as new methodology with wide-ranging implications for numerous applications." He kindly agreed to be interviewed by Simply Statistics. </span>_

[<img class="alignnone wp-image-3232" src="http://simplystatistics.org/wp-content/uploads/2014/08/wainwright.jpg" alt="wainwright" width="250" height="333" srcset="http://simplystatistics.org/wp-content/uploads/2014/08/wainwright-225x300.jpg 225w, http://simplystatistics.org/wp-content/uploads/2014/08/wainwright-768x1024.jpg 768w, http://simplystatistics.org/wp-content/uploads/2014/08/wainwright.jpg 3000w" sizes="(max-width: 250px) 100vw, 250px" />](http://simplystatistics.org/wp-content/uploads/2014/08/wainwright.jpg)

**SS: How did you find out you had received the COPSS prize?**

It was pretty informal \--- I received an email in February from
  
Raymond Carroll, who chaired the committee. But it had explicit
  
instructions to keep the information private until the award ceremony
  
in August.

**SS: You are in Electrical Engineering & Computer Science (EECS) and**
  
**Statistics at Berkeley: why that mix of departments?**

Just to give a little bit of history, I did my undergraduate degree in
  
math at the University of Waterloo in Canada, and then my Ph.D. in
  
EECS at MIT, before coming to Berkeley to work as a postdoc in
  
Statistics. So when it came time to looking at faculty positions,
  
having a joint position between these two departments made a lot of
  
sense. Berkeley has always been at the forefront of having effective
  
joint appointments of the "Statistics plus X" variety, whether X is
  
EECS, Mathematics, Political Science, Computational Biology and so on.

For me personally, the EECS plus Statistics combination is terrific,
  
as a lot of my interests lie at the boundary between these two areas,
  
whether it is investigating tradeoffs between computational and
  
statistical efficiency, connections between information theory and
  
statistics, and so on. I hope that it is also good for my students!
  
In any case, whether they enter in EECS or Statistics, they graduate
  
with a strong background in both statistical theory and methods, as
  
well as optimization, algorithms and so on. I think that this kind of
  
mix is becoming increasingly relevant to the practice of modern
  
statistics, and one can certainly see that Berkeley consistently
  
produces students, whether from my own group or other people at
  
Berkeley, with this kind of hybrid background.
  
**SS: What do you see as the relationship between statistics and machine**
  
 **learning?**

This is an interesting question, but tricky to answer, as it can
  
really depend on the person. In my own view, statistics is a very
  
broad and encompassing field, and in this context, machine learning
  
can be viewed as a particular subset of it, one especially focused on
  
algorithmic and computational aspects of statistics. But on the other
  
hand, as things stand, machine learning has rather different cultural
  
roots than statistics, certainly strongly influenced by computer
  
science. In general, I think that both groups have lessons to learn
  
from each other. For instance, in my opinion, anyone who wants to do
  
serious machine learning needs to have a solid background in
  
statistics. Statisticians have been thinking about data and
  
inferential issues for a very long time now, and these fundamental
  
issues remain just as important now, even though the application
  
domains and data types may be changing. On the other hand, in certain
  
ways, statistics is still a conservative field, perhaps not as quick
  
to move into new application domains, experiment with new methods and
  
so on, as people in machine learning do. So I think that
  
statisticians can benefit from the playful creativity and unorthodox
  
experimentation that one sees in some machine learning work, as well
  
as the algorithmic and programming expertise that is standard in
  
computer science.

**SS: What sorts of things is your group working on these days?**

I have fairly eclectic interests, so we are working on a range of
  
topics. A number of projects concern the interface between
  
computation and statistics. For instance, we have a recent pre-print
  
(with postdoc Sivaraman Balakrishnan and colleague Bin Yu) that tries
  
to address the gap between statistical and computational guarantees in
  
applications of the expectation-maximization (EM) algorithm for latent
  
variable models. In theory, we know that the global minimizer of the
  
(nonconvex) likelihood has good properties, but the in practice, the
  
EM algorithm only returns local optima. How to resolve this gap
  
between existing theory and actual practice? In this paper, we show
  
that under pretty reasonable conditions\---that hold for various types
  
of latent variable models\---the EM fixed points are as good as the
  
global minima from the statistical perspective. This explains what is
  
observed a lot in practice, namely that when the EM algorithm is given
  
a reasonable initialization, it often returns a very good answer.

There are lots of other interesting questions at this
  
computation/statistics interface. For instance, a lot of modern data
  
sets (e.g., Netflix) are so large that they cannot be stored on a
  
single machine, but must be split up into separate pieces. Any
  
statistical task must then be carried out in a distributed way, with
  
each processor performing local operations on a subset of the data,
  
and then passing messages to other processors that summarize the
  
results of its local computations. This leads to a lot of fascinating
  
questions. What can be said about the statistical performance of such
  
distributed methods for estimation or inference? How many bits do the
  
machines need to exchange in order for the distributed performance to
  
match that of the centralized "oracle method" that has access to all
  
the data at once? We have addressed some of these questions in a
  
recent line of work (with student Yuchen Zhang, former student John
  
Duchi and colleague Micheel Jordan).

So my students and postdocs are keeping me busy, and in addition, I am
  
also busy writing a couple of books, one jointly with Trevor Hastie
  
and Rob Tibshirani at Stanford University on the Lasso and related
  
methods, and a second solo-authored effort, more theoretical in focus,
  
on high-dimensional and non-asymptotic statistics.
  
**SS: What role do you see statistics playing in the relationship**
  
 **between Big Data and Privacy?**

Another very topical question: privacy considerations are certainly
  
becoming more and more relevant as the scale and richness of data
  
collection grows. Witness the recent controversies with the NSA, data
  
manipulation on social media sites, etc. I think that statistics
  
should have a lot to say about data and privacy. There has a long
  
line of statistical work on privacy, dating back at least to Warner's
  
work on survey sampling in the 1960s, but I anticipate seeing more of
  
it over the next years. Privacy constraints bring a lot of
  
interesting statistical questions\---how to design experiments, how to
  
perform inference, how should data be aggregated and what should be
  
released and so on\---and I think that statisticians should be at the
  
forefront of this discussion.

In fact, in some joint work with former student John Duchi and
  
colleague Michael Jordan, we have examined some tradeoffs between
  
privacy constraints and statistical utility. We adopt the framework
  
of local differential privacy that has been put forth in the computer
  
science community, and study how statistical utility (in the form of
  
estimation accuracy) varies as a function of the privacy level.
  
Obviously, preserving privacy means obscuring something, so that
  
estimation accuracy goes down, but what is the quantitative form of
  
this tradeoff? An interesting consequence of our analysis is that in
  
certain settings, it identifies optimal mechanisms for preserving a
  
certain level of privacy in data.

**What advice would you give young statisticians getting into the**
  
 **discipline right now?**

It is certainly an exciting time to be getting into the discipline.
  
For undergraduates thinking of going to graduate school in statistics,
  
I would encourage them to build a strong background in basic
  
mathematics (linear algebra, analysis, probability theory and so on)
  
that are all important for a deep understanding of statistical methods
  
and theory. I would also suggest "getting their hands dirty", that is
  
doing some applied work involving statistical modeling, data analysis
  
and so on. Even for a person who ultimately wants to do more
  
theoretical work, having some exposure to real-world problems is
  
essential. As part of this, I would suggest acquiring some knowledge
  
of algorithms, optimization, and so on, all of which are essential in
  
dealing with large, real-world data sets.
