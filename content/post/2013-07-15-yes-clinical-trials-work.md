---
id: 1495
title: Yes, Clinical Trials Work
date: 2013-07-15T11:20:06+00:00
author: Rafael Irizarry
al2fb_facebook_link_id:
  - 136171103105421_517271764995351
al2fb_facebook_link_time:
  - 2013-07-15T15:20:16+00:00
al2fb_facebook_link_picture:
  - post=http://simplystatistics.org/?al2fb_image=1
dsq_thread_id:
  - 1502171687
categories:
  - Uncategorized
slug: "yes-clinical-trials-work"
---
This saturday the New York Times published an opinion pieces wondering "<a style="font-size: 16px;" href="http://www.nytimes.com/2013/07/14/opinion/sunday/do-clinical-trials-work.html?pagewanted=all&_r=0">do clinical trials work?</a>". The answer, of course, is: absolutely. For those that don't know the history, randomized control trials (RCTs) are one of the reasons why life spans skyrocketed in the 20th century. Before RCTs wishful thinking and arrogance lead numerous well-meaning scientist and doctors to incorrectly believe their treatments worked. They are so successful that they have been adopted with much fanfare in far flung arenas like poverty alleviation (see e.g.,this discussion by <a style="font-size: 16px;" href="http://www.effectivephilanthropy.org/blog/2011/06/esther-duflo-explains-why-she-believes-randomized-controlled-trials-are-so-vital/">Esther Duflo</a>); where wishful thinking also lead many to incorrectly believe their interventions helped.

The first chapter of[ this book](http://www.amazon.com/Statistics-4th-Edition-David-Freedman/dp/0393929728) contains several examples and [this is a really nice introduction](http://clinicaltrials.gov/ct2/about-studies/learn) to clinical studies. A very common problem was that the developers of the treatment would create treatment groups that were healthier to start with. Randomization takes care of this. To understand the importance of controls I quote the opinion piece to demonstrate a common mistake we humans make: "Some patients did do better on the drug, and indeed, doctors and patients insist that some who take Avastin significantly beat the average." The problem is that the fact that Avastin did not do better on average means that the exact same statement can be made about the control group! It also means that some patient did worse than average too. The use of a control points to the possibility that Avastin has nothing to do with the observed improvements.

The opinion piece is very critical of current clinical trials work and complains about the "dismal success rate for drug development". But what is the author comparing too? Dismal compared to what? We are talking about developing complicated compounds that must be both safe and efficacious in often critically ill populations. It would be surprising if our success rate was incredibly high.  Or is the author comparing the current state of affairs to the pre-clinical-trials days when procedures such as <a style="font-size: 16px;" href="http://en.wikipedia.org/wiki/Bloodletting">bloodletting</a> were popular.

A better question might be, "how can we make clinical trials more efficient?" To answer this question there is definitely a lively and ongoing research area. In some cases they can definitely be better by adapting to new developments such as biomarkers and the advent of personalized medicine. This is why there are dozens of statisticians working in this area.

The article says that

> "[p]art of the novelty lies in a statistical technique called Bayesian analysis that lets doctors quickly glean information about which therapies are working best. "

As <a style="font-size: 16px;" href="http://simplystatistics.org/2013/07/14/sunday-datastatistics-link-roundup-7142013/">Jeff pointed out</a> this a pretty major oversimplification of all of the hard work that it takes to maintain scientific integrity and patient safety when studying new compounds. The fact that the analysis is Bayesian is ancillary to other issues like [adaptive trials](http://www.trialsjournal.com/content/13/1/145) (as Julian [pointed out in the comments)](http://simplystatistics.org/2013/07/14/sunday-datastatistics-link-roundup-7142013/#comment-962395470), [dynamic treatment regimes](http://en.wikipedia.org/wiki/Dynamic_treatment_regime), or even more established ideas [like group sequential trials](http://en.wikipedia.org/wiki/Sequential_analysis). The basic principle underlying these ideas is the same: _can we run a trial more efficiently while achieving reasonable estimates of effect sizes and uncertainties? _You could imagine doing this by focusing on subpopulations that seem to work well for subpopulations with specific biomarkers, or by stopping trials early if drugs are strongly (in)effective, or by picking optimal paths through multiple treatments. That the statistical methodology is Bayesian or Frequentist has little to do with the ways that clinical trials are adapting to be more efficient.

This is a wide open area and deserves a much more informed conversation. I'm providing here a list of resources that would be a good place to start:

  1. [An introduction to clinical trials](http://www.clinicaltrials.gov/ct2/info/resources)
  2. [Michael Rosenblum's adaptive trial design page. ](http://people.csail.mit.edu/mrosenblum/Teaching/adaptive_designs_2010.html)
  3. [Clinicaltrials.gov](http://clinicaltrials.gov/) - registry of clinical trials
  4. [Test, learn adapt](https://www.gov.uk/government/uploads/system/uploads/attachment_data/file/62529/TLA-1906126.pdf) - a white paper on using clinical trials for public policy
  5. [Alltrials](http://www.alltrials.net/) - an initiative to make all clinical trial data public
  6. [ASCO clinical trials resources](http://www.asco.org/advocacy-practice/clinical-trial-resources) - on clinical trials ethics and standards
  7. [Don Berry's paper on adaptive design](http://jco.ascopubs.org/content/29/6/606).
  8. [Fundamentals of clinical trials](http://www.amazon.com/dp/1441915850) - a good general book (via David H.)
  9. [Clinical trials, a methodological perspective](http://www.amazon.com/Clinical-Trials-Methodologic-Perspective-Probability/dp/0471727814) - a more regulatory take (via David H.)

_This post is by Rafa and Jeff. _
