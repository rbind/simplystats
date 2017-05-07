---
id: 1409
title: Does fraud depend on my philosophy?
date: 2013-06-24T10:00:30+00:00
author: Roger Peng
al2fb_facebook_exclude:
  - 
al2fb_facebook_exclude_video:
  - 
al2fb_facebook_link_id:
  - 136171103105421_509436159112245
al2fb_facebook_link_time:
  - 2013-06-24T14:00:38+00:00
al2fb_facebook_link_picture:
  - post=http://simplystatistics.org/?al2fb_image=1
dsq_thread_id:
  - 1430565076
categories:
  - Uncategorized
slug: "does-fraud-depend-on-my-philosophy"
---
Ever since my [last post on replication and fraud](http://simplystatistics.org/2013/05/17/when-does-replication-reveal-fraud/) I've been doing some more thinking about why people consider some things "scientific fraud". (First of all, let me just say that I was a bit surprised by the discussion in the comments for that post. Some people apparently thought I was asking about the actual probability that the study was a fraud. This was not the case. I just wanted people to think about how they would react when confronted with the scenario.)

I often find that when I talk to people about the topic of scientific fraud, especially statisticians, there is a sense that much work that goes on out there is fraudulent, but the precise argument for why is difficult to pin down.

Consider the following three cases:

  1. I conduct a randomized clinical trial comparing a new treatment and a control and their effect on outcome Y1. I also collect data on outcomes Y2, Y3, ... Y10. After conducting the trial I see that there isn't a significant difference for Y1 so I test the other 9 outcomes and find a significant effect (defined as p-value equal to 0.04) for Y7. I then publish a paper about outcome Y7 and state that it's significant with p=0.04. I make no mention of the other outcomes.
  2. I conduct the same clinical trial with the 10 different outcomes and look at the difference between the treatment groups for all outcomes. I notice that the largest standardized effect size is for Y7 with a standardized effect of 3, suggesting the treatment is highly effective in this trial. I publish a paper about outcome Y7 and state that the standardized effect size was 3 for comparing treatment vs. control. I note that a difference of 3 is highly significant, but I make no mention of _statistical_ significance or p-values. I also make no mention of the other outcomes.
  3. I conduct the same clinical trial with the 10 outcomes. Now I look at all 10 outcomes and calculate the posterior probability that the effect is greater than zero (favoring the new treatment), given a pre-specified diffuse prior on the effect (assume it's the same prior for each effect). Of the 10 outcomes I see that Y7 has the largest posterior probability of 0.98. I publish a paper about Y7 stating that my posterior probability for a positive effect is 0.98. I make no mention of the other outcomes.

Which one of these cases constitutes scientific fraud?

  1. I think most people would object to Case 1. This is the classic multiple testing scenario where the end result is that the stated p-value is not correct. Rather than a p-value of 0.04 the real p-value is more like 0.4. A simple Bonferroni correction fixes this but obviously would have resulted in not finding any significant effects based on a 0.05 threshold. The real problem is that in Case 1 you are clearly trying to make an inference about future studies. You're saying that if there's truly no difference, then in 100 other studies just like this one, you'd expect only 4 to detect a difference under the same criteria that you used. But it's incorrect to say this and perhaps fraudulent (or negligent) depending on your underlying intent. In this case a relevant detail that is missing is the number of other outcomes that were tested.
  2. Case 2 differs from case 1 only in that no p-values are used but rather the measure of significance is the standardized effect size. Therefore, no probability statements are made and no inference is made about future studies. Although the information about the other outcomes is similarly omitted in this case as in case 1, it's difficult for me to identify what is wrong with this paper.
  3. Case 3 takes a Bayesian angle and is more or less like case 2 in my opinion. Here, probability is used as a measure of belief about a parameter but no explicit inferential statements are made (i.e. there is no reference to some population of other studies). In this case I just state my belief about whether an effect/parameter is greater than 0. Although I also omit the other 9 outcomes in the paper, revealing that information would not have changed anything about my posterior probability.

In each of these three scenarios, the underlying data were generated in the exact same way (let's assume for the moment that the trial itself was conducted with complete integrity).  In each of the three scenarios, 10 outcomes were examined and outcome Y7 was in some sense the most interesting.

Of course, the analyses and the interpretation of the data were _not_ the same in each scenario. Case 1 makes an explicit inference whereas Cases 2 and 3 essentially do not. However, I would argue the _evidence_ about the new treatment compared to the control treatment in each scenario was identical.

I don't believe that the investigator in Case 1 should be allowed to engage in such shenanigans with p-values, but should he/she be pilloried simply because the p-value was the chosen metric of significance? I guess the answer would be "yes" for many of you, but keep in mind that the investigator in Case 1 still generated the same evidence as the others. Should the investigators in Case 2 and Case 3 be thrown in the slammer? If so, on what basis?

My feeling is not that people should be allowed to do whatever they please, but we need a better way to separate the "stuff" from the stuff. This is both a methodological and a communications issue. For example, Case 3 may not be fraud but I'm not necessarily interested in what the investigator's opinion about a parameter is. I want to know what the data say about that parameter (or treatment difference in this case). Is it fraud to make any inferences in the first place (as in Case 1)? I mean, how could you possible know that your inference is "correct"? If "all models are wrong, but some are useful", does that mean that everyone is committing fraud?
