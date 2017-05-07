---
id: 935
title: "Why I disagree with Andrew Gelman's critique of my paper about the rate of false discoveries in the medical literature"
date: 2013-01-24T14:55:17+00:00
author: Jeff Leek
al2fb_facebook_link_id:
  - 136171103105421_450828674972994
al2fb_facebook_link_time:
  - 2013-01-24T19:55:21+00:00
al2fb_facebook_link_picture:
  - post=http://simplystatistics.org/wp-content/uploads/2013/01/all-significant-300x228.jpg
dsq_thread_id:
  - 1044857889
categories:
  - Uncategorized
tags:
  - blog fight
  - gelman
  - Ioannidis
  - rate of false positives
  - swfdr
slug: "why-i-disagree-with-andrew-gelmans-critique-of-my-paper-about-the-rate-of-false-discoveries-in-the-medical-literature"
---
With a colleague, I wrote a paper titled, ["Empirical estimates suggest most published medical research is true"](http://arxiv.org/abs/1301.3718)  which we quietly posted to ArXiv a few days ago. I posted to the ArXiv in the interest of open science and because we didn't want to delay the dissemination of our approach during the long review process. I didn't email anyone about the paper or talk to anyone about it, except my friends here locally.

I underestimated the internet. Yesterday, the paper was covered in [this piece](http://www.technologyreview.com/view/510126/the-statistical-puzzle-over-how-much-biomedical-research-is-wrong/) on the MIT Tech review. That exposure was enough for the paper to appear in a few different outlets. I'm totally comfortable with the paper, but was not anticipating all of the attention so quickly.

In particular, I was a little surprised to see it appear on Andrew Gelman's blog with the disheartening title, ["I don’t believe the paper, “Empirical estimates suggest most published medical research is true.” That is, most published medical research may well be true, but I’m not at all convinced by the analysis being used to support this claim."](http://andrewgelman.com/2013/01/i-dont-believe-the-paper-empirical-estimates-suggest-most-published-medical-research-is-true-that-is-the-claim-may-very-well-be-true-but-im-not-at-all-convinced-by-the-analysis-being-used/) I responded briefly this morning to his post, but then had to run off to teach class. After thinking about it a little more, I realized I have some objections to his critique.

His main criticisms of our paper are: (1) with type I/type II errors instead of type S versus type M errors (paragraph 2), (2) that we didn't look at replication, we performed inference (paragraph 4), (3) that there is p-value hacking going on (paragraph 4), and (4) he thinks that our model does not apply because p-value hacking my change the assumptions underlying this model in genomics.

I will handle each of these individually:

(1) This is primarily semantics. Andrew is concerned with interesting/uninteresting with his Type S and Type M Errors. We are concerned with true/false positives as defined by type I and type II errors (and a null hypothesis). You might believe that the null is never true - but then by the standards of the original paper all published research is true. Or you might say that a non-null result might have an effect size too small to be interesting - but the framework being used here is hypothesis testing and we have stated how we defined a true positive in that framework explicitly.  We define the error rate by the rate of classifying thing as null when they should be classified as alternative and vice versa. We then estimate the false discovery rate, under the framework used to calculate those p-values. So this is not a criticism of our work with evidence, rather it is a stated difference of opinion about the philosophy of statistics not supported by conclusive data.

(2) Gelman says he originally thought we would follow up specific p-values to see if the results replicated and makes that a critique of our paper. That would definitely be another approach to the problem. Instead, we chose to perform statistical inference using justified and widely used statistical techniques. Others have taken the replication route, but of course that approach too would be fraught with difficulty - are the exact conditions replicable (e.g. for a clinical trial), can we sample from the same population (if it has changed or is hard to sample), and what do we mean by replicates (would two p-values less than 0.05 be convincing?). This again is not a criticism of our approach, but a statement of another, different analysis Gelman was wishing to see.

(3)-(4) Gelman states, "You don’t have to be Uri Simonsohn to know that there’s a lot of p-hacking going on." Indeed Uri Samuelson [wrote a paper](http://pss.sagepub.com/content/22/11/1359.full.pdf+html) where he talks about the potential for p-value hacking. He does not collect data from real experiments/analyses, but uses simulations, theoretical arguments, and prospective experiments designed to show specific problems. While these arguments are useful and informative, it gives no indication of the extent of p-value hacking in the medical literature. So this argument is made on the basis of a supposition by Gelman that this happens broadly, rather than on data.

My objection to his criticism is that his critiques are based primarily on philosophy (1), a wish that we had done the study a different way (2), and assumptions about the way science works with only anecdotal evidence (3-4).

One thing you could very reasonably argue is how sensitive our approach is to violations of our assumptions (which Gelman implied with criticisms 3-4). To address this,  my co-author and I have now performed a simulation analysis. In the first simulation, we considered a case where every p-value less than 0.05 was reported and the p-values were uniformly distributed, just as our assumptions would state. We then plot our estimates of the swfdr versus the truth. Here our estimator works pretty well.

&nbsp;

<a href="http://simplystatistics.org/2013/01/24/why-i-disagree-with-andrew-gelmans-critique-of-my-paper-about-the-rate-of-false-discoveries-in-the-medical-literature/all-significant/" rel="attachment wp-att-940"><a href="http://simplystatistics.org/?attachment_id=942" rel="attachment wp-att-942"><img class="alignnone size-medium wp-image-942" alt="all-significant" src="http://simplystatistics.org/wp-content/uploads/2013/01/all-significant-300x228.jpg" width="300" height="228" srcset="http://simplystatistics.org/wp-content/uploads/2013/01/all-significant-300x228.jpg 300w, http://simplystatistics.org/wp-content/uploads/2013/01/all-significant-1024x779.jpg 1024w, http://simplystatistics.org/wp-content/uploads/2013/01/all-significant.jpg 1266w" sizes="(max-width: 300px) 100vw, 300px" /></a></a>

We also simulate a pretty serious p-value hacking scenario where people report only the minimum p-value they observe out of 20 p-values. Here our assumption of uniformity is strongly violated. But we still get pretty accurate estimates of the swfdr for the range of values (14%) we report in our paper.

<a href="http://simplystatistics.org/2013/01/24/why-i-disagree-with-andrew-gelmans-critique-of-my-paper-about-the-rate-of-false-discoveries-in-the-medical-literature/only-min-2/" rel="attachment wp-att-944"><img class="alignnone size-medium wp-image-944" alt="only-min" src="http://simplystatistics.org/wp-content/uploads/2013/01/only-min-300x228.jpg" width="300" height="228" srcset="http://simplystatistics.org/wp-content/uploads/2013/01/only-min-300x228.jpg 300w, http://simplystatistics.org/wp-content/uploads/2013/01/only-min-1024x779.jpg 1024w, http://simplystatistics.org/wp-content/uploads/2013/01/only-min.jpg 1266w" sizes="(max-width: 300px) 100vw, 300px" /></a>

Since I recognize this is only a couple of simulations, I have also put the code up on Github with the rest of our code for the paper so other people can test it out.

Whether you are convinced by Gelman, or convinced by my response, I agree with him that it is pretty unlikely that "most published research is false" so I'm glad our paper is at least bringing that important point up. I also hope that by introducing a new estimator of the science-wise fdr we inspire more methodological development and that philosophical criticisms won't prevent people from looking at the data in new ways.

&nbsp;

&nbsp;

** **
