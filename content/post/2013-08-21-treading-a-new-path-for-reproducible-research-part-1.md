---
id: 1697
title: 'Treading a New Path for Reproducible Research: Part 1'
date: 2013-08-21T14:34:04+00:00
author: Roger Peng
al2fb_facebook_link_id:
  - 136171103105421_532788890110305
al2fb_facebook_link_time:
  - 2013-08-21T18:34:12+00:00
al2fb_facebook_link_picture:
  - post=http://simplystatistics.org/wp-content/uploads/2013/08/rrpipeline-1024x463.png
dsq_thread_id:
  - 1624846805
categories:
  - Uncategorized
slug: "treading-a-new-path-for-reproducible-research-part-1"
---
<p dir="ltr">
  Discussions about reproducibility in scientific research have been on the rise lately, including <a href="http://simplystatistics.org/2013/07/09/repost-preventing-errors-through-reproducibility/">on</a> <a href="http://simplystatistics.org/2013/04/30/reproducibility-and-reciprocity/">this</a> <a href="http://simplystatistics.org/2011/12/02/reproducible-research-in-computational-science/">blog</a>. There are many underlying trends that have produced this increased interest in reproducibility: larger and larger studies being harder to replicate independently, cheaper data collection technologies/methods producing larger datasets, cheaper computing power allowing for more sophisticated analyses (even for small datasets), and the rise of general computational science (for every “X” we now have “Computational X”).
</p>

For those that haven’t been following, here’s a brief review of what I mean when I say “reproducibility”. For the most part in science, we focus on what I and some others call “replication”. The purpose of replication is to address the validity of a scientific claim. If I conduct a study and conclude that “X is related to Y”, then others may be encouraged to replicate my study--with independent investigators, data collection, instruments, methods, and analysis--in order to determine whether my claim of “X is related to Y” is in fact true. If many scientists replicate the study and come to the same conclusion, then there’s evidence in favor of the claim’s validity. If other scientists cannot replicate the same finding, then one might conclude that the original claim was false. In either case, this is how science has always worked and how it will continue to work.

<p dir="ltr">
  Reproducibility, on the other hand, focuses on the validity of the data analysis. In the past, when datasets were small and the analyses were fairly straightforward, the idea of being able to reproduce a data analysis was perhaps not that interesting. But now, with computational science, where data analyses can be extraodinarily complicated, there’s great interest in whether certain data analyses can in fact be reproduced. By this I mean is it possible to take someone’s dataset and come to the same numerical/graphical/whatever output that they came to. While this seems theoretically trivial, in practice it’s very complicated because a given data analysis, which typically will involve a long pipeline of analytic operations, may be difficult to keep track of without proper organization, training, or software.
</p>

**What Problem Does Reproducibility Solve?**

<p dir="ltr">
  In my opinion, reproducibility cannot really address the validity of a scientific claim as well as replication. Of course, if a given analysis is not reproducible, that may call into question any conclusions drawn from the analysis. However, if an analysis is reproducible, that says practically nothing about the validity of the conclusion or of the analysis itself.
</p>

<p dir="ltr">
  In fact, there are numerous examples in the literature of analyses that were reproducible but just wrong. Perhaps the most nefarious recent example is the <a href="http://simplystatistics.org/2012/02/27/the-duke-saga-starter-set/">Potti scandal at Duke</a>. Given the amount of effort (somewhere close to 2000 hours) Keith Baggerly and his colleagues had to put into figuring out what Potti and others did, I think it’s reasonable to say that their work was not reproducible. But in the end, Baggerly was able to reproduce some of the results--this was how he was able to figure out that the analysis were incorrect. If the Potti analysis had not been reproducible from the start, it would have been impossible for Baggerly to come up with the laundry list of errors that they made.
</p>

<p dir="ltr">
  The <a href="http://simplystatistics.org/2013/04/21/nevins-potti-reinhart-rogoff/">Reinhart-Rogoff kerfuffle</a> is another example of analysis that ultimately was reproducible but nevertheless questionable. While Herndon did have to do a little reverse engineering to figure out the original analysis, it was nowhere near the years-long effort of Baggerly and colleagues. However, it was Reinhart-Rogoff’s unconventional weighting scheme (fully reproducible, mind you) that drew all of the attention and strongly influenced the analysis.
</p>

<p dir="ltr">
  I think the key question we want to answer when seeing the results of any data analysis is “Can I trust this analysis?” It’s not possible to go into every data analysis and check everything, even if all the data and code were available. In most cases, we want to have a sense that the analysis was done appropriately (if not optimally). I would argue that requiring that analyses be reproducible does not address this key question.
</p>

With reproducibility you get a number of important benefits: transparency, data and code for others to analyze, and an increased rate of transfer of knowledge. These are all very important things. Data sharing in particular may be important independent of the need to reproduce a study if others want to aggregate datasets or do meta-analyses. But reproducibility does not guarantee validity or correctness of the analysis.

**Prevention vs. Medication**

<p dir="ltr">
  One key problem with the notion of reproducibility is the point in the research process at which we can apply it as an intervention. Reproducibility plays a role only in the most downstream aspect of the research process--post-publication. Only after a paper is published (and after any questionable analyses have been conducted) can we check to see if an analysis was reproducible or conducted in error.
</p>

<p dir="ltr">
  <a href="http://simplystatistics.org/wp-content/uploads/2013/08/rrpipeline.png"><img class="alignright size-large wp-image-1705" alt="rrpipeline" src="http://simplystatistics.org/wp-content/uploads/2013/08/rrpipeline-1024x463.png" width="640" height="289" srcset="http://simplystatistics.org/wp-content/uploads/2013/08/rrpipeline-300x135.png 300w, http://simplystatistics.org/wp-content/uploads/2013/08/rrpipeline-1024x463.png 1024w" sizes="(max-width: 640px) 100vw, 640px" /></a>
</p>

<p dir="ltr">
  At this point it may be difficult to correct any mistakes if they are identified. Grad students have graduated, postdocs have left, people have moved on. In the Potti case, letters to the journal editors were ignored. While it may be better to check the research process at the end rather than to never check it, intervening at the post-publication phase is arguably the most expensive place to do it. At this phase of the research process, you are merely “medicating” the problem, to draw an analogy with chronic diseases. But fundamental data analytic damage may have already been done.
</p>

<p dir="ltr">
  This medication aspect of reproducibility reminds me of a famous quotation from R. A. Fisher:
</p>

> To consult the statistician after an experiment is finished is often merely to ask him to conduct a post mortem examination. He can perhaps say what the experiment died of.

<p dir="ltr">
  Reproducibility allows for the statistician to conduct the post mortem of a data analysis. But wouldn’t it have been better to have prevented the analysis from dying in the first place?
</p>

<p dir="ltr">
  <strong>Moving Upstream</strong>
</p>

<p dir="ltr">
  There has already been much discussion of changing the role of reproducibility in the publication/dissemination process. What if a paper had to be deemed reproducible before it was published? The question here is who will reproduce the analysis? We can't trust the authors to do it so we have to get an independent third party. What about peer reviewers? I would argue that this is a pretty big burden to place on a peer reviewer who is already working for free. How about one of the Editors? Well, at the journal <em>Biostatistics</em>, that’s <a href="http://biostatistics.oxfordjournals.org/content/10/3/405.long">exactly what we do</a>. However, our policy is voluntary and only plays a role after a paper has been accepted through the usual peer review process. At any rate, from a business perspective, most journal owners will be reluctant to implement any policy that might reduce the number of submissions to the journal.
</p>

**What Then?**

<p dir="ltr">
  To summarize, I believe reproducibility of computational research is very important, primarily to increase transparency and to improve knowledge sharing. However, I don’t think reproducibility in and of itself addresses the fundamental question of “Can I trust this analysis?”. Furthermore, reproducibility plays a role at the most downstream part of the research process (post-publication) where it is costliest to fix any mistakes that may be discovered. Ultimately, we need to think beyond reproducibility and to consider developing ways to ensure the quality of data analysis from the start.
</p>

<p dir="ltr">
  How can we address the key problem concerning the validity of a data analysis? I’ll talk about what I think we should do in Part 2 of this post.
</p>
