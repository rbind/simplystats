---
id: 3329
title: An economic model for peer review
date: 2014-10-06T10:00:36+00:00
author: Jeff Leek
al2fb_facebook_exclude:
  - 
al2fb_facebook_exclude_video:
  - 
al2fb_facebook_link_id:
  - 136171103105421_707763982612794
al2fb_facebook_link_time:
  - 2014-10-06T14:00:43+00:00
al2fb_facebook_link_picture:
  - 'post=http://www.plosone.org/article/fetchObject.action?uri=info:doi/10.1371/journal.pone.0026895.g005&amp;representation=PNG_M'
dsq_thread_id:
  - 3088550779
categories:
  - Uncategorized
slug: "an-economic-model-for-peer-review"
---
I saw this tweet the other day:

<blockquote class="twitter-tweet" width="550">
  <p>
    Has anyone applied game theory to the issue of anonymous peer review in academia?
  </p>
  
  <p>
    &mdash; Mick Watson (@BioMickWatson) <a href="https://twitter.com/BioMickWatson/status/517715981104590848">October 2, 2014</a>
  </p>
</blockquote>



It reminded me that a few years ago [I had a paper that went through the peer review wringer](http://simplystatistics.org/2012/07/11/my-worst-recent-experience-with-peer-review/). It drove me completely bananas. One thing that drove me so crazy about the process was how long the referees waited before reviewing and how terrible the reviews were after that long wait. So I started thinking about the "economics of peer review". Basically, what is the incentive for scientists to contribute to the system.

To get a handle on this idea, I designed a "peer review game" where there are a fixed number of players N. The players play the game for a fixed period of time. During that time, they can submit papers or they can review papers. For each person, their final score at the end of the time is <span class='MathJax_Preview'><img src='http://simplystatistics.org/wp-content/plugins/latex/cache/tex_499ac624b20f322a6a85792cf12b0c13.gif' style='vertical-align: middle; border: none; ' class='tex' alt="S_i = \sum {\rm Submitted \; Papers \; Accepted}" /></span>.

Based on this model, under closed peer review, there is one Nash equilibrium under the strategy that **no one reviews any papers**. Basically, no one can hope to improve their score by reviewing, they can only hope to improve their score by submitting more papers (sound familiar?). Under open peer review, there are more potential equilibria, based on the relative amount of goodwill you earn from your fellow reviewers by submitting good reviews.

We then built a model system for testing out our theory. The system involved having groups of students play a "peer review game" where they submitted solutions to SAT problems like:

<img class="aligncenter" src="http://www.plosone.org/article/fetchObject.action?uri=info:doi/10.1371/journal.pone.0026895.g005&representation=PNG_M" alt="" width="390" height="335" />

Each solution was then randomly assigned to another player to review. Those players could (a) review it and reject it, (b) review it and accept it, or (c) not review it. The person with the most points at the end of the time (one hour) won.

We found some cool things:

  1. In closed review, reviewing gave no benefit.
  2. In open review, reviewing gave a small positive benefit.
  3. Both systems gave comparable accuracy
  4. All peer review increased the overall accuracy of responses

[The paper is here](http://www.plosone.org/article/info:doi/10.1371/journal.pone.0026895) and all of the [data and code are here](http://www.biostat.jhsph.edu/~jleek/peerreview/).
