---
id: 2063
title: 'Blog posts that impact real science - software review and GTEX'
date: 2013-10-22T11:53:56+00:00
author: Jeff Leek
al2fb_facebook_link_id:
  - 136171103105421_559496830772844
al2fb_facebook_link_time:
  - 2013-10-22T15:54:01+00:00
al2fb_facebook_link_picture:
  - post=http://simplystatistics.org/?al2fb_image=1
dsq_thread_id:
  - 1887292085
categories:
  - Uncategorized
slug: "blog-posts-that-impact-real-science-software-review-and-gtex"
---
There was a flurry of activity on social media yesterday surrounding a blog post by [Lior Pachter](http://liorpachter.wordpress.com/2013/10/21/gtex/). He was speaking about the [GTEX project](http://commonfund.nih.gov/GTEx/) - a large NIH funded project that has the goal of understanding expression variation within and among human beings. The project has measured gene expression in multiple tissues of over 900 individuals.

In the post, the author claims that the GTEX project is "throwing away" 90% of its data. The basis for this claim is a simulation study using the parameters from one of the author's papers. The claim of 90% is based on the fact that  increasing the number of mRNA fragments leads to increasing correlation in abundance measurements in the simulation study. In order to get the same Spearman correlation as other methodologies have at 10M fragments, the software being used by GTEX needs 100M fragments.

This post and the associated furor raises three issues:

  1. The power and advantage of blog posts and social media as a form of academic communication.
  2. The importance of using published software.
  3. Extreme critiques deserve as much scrutiny as extreme claims.

The first point is obvious; the post was rapidly disseminated and elicited responses from the leaders of the GTEX project. Interestingly, I think the authors got an early view of the  criticisms they would face from reviewers through the blog post. The short term criticism is probably not fun to deal with but it might save them time later.

I think the criticism about using software that has not been fully vetted through the publication/peer review process is an important one. For such a large scale project, you'd like to see the primary analysis being done with "community approved" software.  The reason is that we just don't know if it is better or worse because no one published a study on the software.  It would be interesting to see how the [bottom up approach](http://simplystatistics.org/2012/09/07/top-down-versus-bottom-up-science-data-analysis/) would have faired here. The good news for GTEX here is that for future papers they will either get out a more comprehensive comparison or they will switch software - either of which will improve their work.

Regarding point 2, Pachter did a "back of the envelope" calculation that suggested the Flux software wasn't performing well. These back of the envelope calculations are very important - [if you can't solve the easy case, how can you expect to solve the hard case.](http://simplystatistics.org/2013/03/06/the-importance-of-simulating-the-extremes/) Lost in all of the publicity about the 90% number is that Pachter's blog post hasn't been vetted, either. Here are a few questions that immediately jumped to my mind when reading the blog post:

  1. Why use Spearman correlation as the important measure of agreement?
  2. What is the correlation between replicates?
  3. What parameters did he use for the Flux calculation?
  4. Where is his code so we can see if there were any bugs (I'm sure he is willing to share, but I don't see a link)?
  5. That 90% number seems very high, I wonder if varying the simulation approach/parameter settings/etc. would show it isn't quite that bad
  6. Throwing away 90% of you data might not matter if you get the right answer to the question you care about at the end. Can we evaluate something closer to what we care about? A list of DE genes/transcripts, for example?

Whenever a scientist sees a claim as huge as "throwing away 90% of the data" they should be skeptical. This is particularly true in genomics, where huge effects are often due to bugs or artifacts. So in general, it is important that we apply the same level of scrutiny to extreme critiques as we do to extreme claims.

My guess is ultimately, the 90% number may end up being an overestimate of how bad the problem is. On the other hand, I think it was hugely useful for Pachter to point out the potential issue and give GTEX the chance to respond. If nothing else, it points out (1) the danger of using  unpublished methods when good published alternatives exist and (2) that science moves faster in the era of blog posts and social media.

_Disclaimers: I work on RNA-seq analysis although I'm not an author on any of the methods being considered. I have spoken at a GTEX meeting, but am not involved in the analysis of the data. Most importantly, I have not analyzed any data and am in no position to make claims about any of the software in question. I'm just making observations about the sociology of this interaction._
