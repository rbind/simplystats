---
id: 3216
title: If you like A/B testing here are some other Biostatistics ideas you may like
date: 2014-08-06T10:35:59+00:00
author: Jeff Leek
al2fb_facebook_link_id:
  - 136171103105421_682148041841055
al2fb_facebook_link_time:
  - 2014-08-06T14:36:04+00:00
al2fb_facebook_link_picture:
  - post=http://simplystatistics.org/?al2fb_image=1
dsq_thread_id:
  - 2905371646
categories:
  - Uncategorized
slug: "if-you-like-ab-testing-here-are-some-other-biostatistics-ideas-you-may-like"
---
Web companies are using A/B testing and experimentation regularly now to determine which features to push for advertising or improving user experience. A/B testing is a form of [randomized controlled trial](http://en.wikipedia.org/wiki/Randomized_controlled_trial) that was originally employed in psychology but first adopted on a massive scale in Biostatistics. Since then a large amount of work on trials and trial design has been performed in the Biostatistics community. Some of these ideas may be useful in the same context within web companies, probably a lot of them are already being used and I just haven't seen published examples. Here are some examples:

  1. [Sequential study designs](http://en.wikipedia.org/wiki/Sequential_analysis). Here the sample size isn't fixed in advance (an issue that I imagine is pretty hard to do with web experiments) but as the experiment goes on, the data are evaluated and a stopping rule that controls appropriate error rates is used. Here are a couple of  good (if a bit dated) review on sequential designs[ [1]](http://smm.sagepub.com/content/9/5/497.full.pdf) [[2]](http://www.ncbi.nlm.nih.gov/pubmed/18663761).
  2. [Adaptive study designs](http://en.wikipedia.org/wiki/Randomized_controlled_trial#Adaptive). These are study designs that use covariates or responses to adapt the treatment assignments of people over time. With careful design and analysis choices, you can still control the relevant error rates. Here are a couple of reviews on adaptive trial designs [[1]](http://www.ncbi.nlm.nih.gov/pmc/articles/PMC2422839/) [[2]](http://www.trialsjournal.com/content/13/1/145)
  3. [Noninferiority trials](http://en.wikipedia.org/wiki/Randomized_controlled_trial#By_hypothesis_.28superiority_vs._noninferiority_vs._equivalence.29) These are trials designed to show that one treatment is at least as good as the standard of care. They are often implemented when a good placebo group is not available, often for ethical reasons. In light of the [ethical concerns for human subjects research at tech companies](http://simplystatistics.org/2014/08/05/do-we-need-institutional-review-boards-for-human-subjects-research-conducted-by-big-web-companies/)  this could be a useful trial design. Here is a systematic review for noninferiority trials [[1]](http://www.ncbi.nlm.nih.gov/pubmed/22317762)

It is also probably useful to read about [proportional hazards models](http://en.wikipedia.org/wiki/Proportional_hazards_model) and [time varying coefficients](http://www.annualreviews.org/doi/pdf/10.1146/annurev.publhealth.20.1.145). Obviously these are just a few ideas that might be useful, but talking to a Biostatistician who works on clinical trials (not me!) would be a great way to get more information.
