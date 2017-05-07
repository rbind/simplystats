---
id: 2433
title: 'edge.org asks famous scientists what scientific concept to throw out &#038; they say statistics'
date: 2014-01-16T10:10:00+00:00
author: Jeff Leek
al2fb_facebook_link_id:
  - 136171103105421_596346273754566
al2fb_facebook_link_time:
  - 2014-01-16T15:10:05+00:00
al2fb_facebook_link_picture:
  - post=http://simplystatistics.org/?al2fb_image=1
dsq_thread_id:
  - 2130288126
categories:
  - Uncategorized
slug: "edge-org-asks-famous-scientists-what-scientific-concept-to-throw-out-they-say-statistics"
---
I don't think I've ever been forwarded one link on the web more than I have been forwarded the edge.org post on ["What scientific idea is ready for retirement?"](http://www.edge.org/responses/what-scientific-idea-is-ready-for-retirement). Here are a few of the comments with my responses. I'm going to keep them brief because I think the edge.org crowd pushes people to say outrageous things, so it isn't even clear they mean what they say.

I think the whole conceit of the question is a little silly. If you are going to retire a major scientific idea you better have a replacement or at least a guess at what we could do next. The question totally ignores the key question of: "Suppose we actually did what you suggested, what would we do instead?"

**On getting rid of big clinical trials**

> It is a commonly held but erroneous belief that a larger study is always more rigorous or definitive than a smaller one, and a randomized controlled trial is always the gold standard . However, there is a growing awareness that size does not always matter and a randomized controlled trial may introduce its own biases. We need more creative experimental designs.

**My response: **[Yes clinical trials work](http://simplystatistics.org/2013/07/15/yes-clinical-trials-work/). Yes bigger trials and randomized trials are more definitive. There is currently no good alternative for generating causal statements that doesn't require quite severe assumptions. The "creative experimental designs" has serious potential to be abused by folks who say things like "Well my friend Susie totally said that diet worked for her...". The author says we should throw out RCT with all the benefits they have provided because it is hard to get women to adhere to a pretty serious behavioral intervention over an 8 year period. If anything, this makes us consider what is a reasonable intervention, not the randomized trial part.

**On bailing on statistical independence assumptions**

> It is time for science to retire the fiction of statistical independence.....So the overwhelming common practice is simply to assume that sampled events are independent. An easy justification for this is that almost everyone else does it and it's in the textbooks. This assumption has to be one of the most widespread instances of groupthink in all of science.

**My response: **There are a huge number of statistical methods for dealing with non-independent data. Statisticians have been working on this for decades with [blocking](http://en.wikipedia.org/wiki/Blocking_(stage)), [stratification](http://en.wikipedia.org/wiki/Stratified_sampling), [random effects](http://en.wikipedia.org/wiki/Random_effects_model), [deep learning](http://en.wikipedia.org/wiki/Deep_learning), [multilevel models](http://en.wikipedia.org/wiki/Multilevel_model), [GEE](http://en.wikipedia.org/wiki/Generalized_estimating_equation), [Garch models](http://en.wikipedia.org/wiki/Autoregressive_conditional_heteroskedasticity), etc. etc., etc. It's a fact that [statistical independence is a fiction, but sometimes it is a useful one](http://en.wikiquote.org/wiki/George_E._P._Box).

**On bailing on the p-value (or any other standardized statistical procedure)**

> Not for a minute should anyone think that this procedure has much to do with statistics proper... A 2011 paper in_Nature Neuroscience_ presented an analysis of neuroscience articles in _Science, Nature, Nature Neuroscience, Neuron_ and _The Journal of Neuroscience_ showed that although 78 did as they should, 79 used the incorrect procedure.

**My response: **P-values on their own and P-values en-masse are both annoying and not very helpful. But we need a way to tell whether those effect sizes you observed are going to replicate or not. P-values are probably not the best thing for measuring that ([maybe you should try to estimate it directly?](http://www.biomedcentral.com/1471-2105/14/360)). But any procedure you scale up to 100,000's of thousands of users is going to cause all sorts of problems. If you give people more dimensions to call their result "real" or "significant" you aren't going to reduce false positives. [At scale we need fewer researcher degrees of freedom not more](http://simplystatistics.org/2012/08/27/a-deterministic-statistical-machine/).

**On science not being self-correcting**

> The pace of scientific production has quickened, and self-correction has suffered. Findings that might correct old results are considered less interesting than results from more original research questions. Potential corrections are also more contested. As the competition for space in prestigious journals has become increasingly frenzied, doing and publishing studies that would confirm the rapidly accumulating new discoveries, or would correct them, became a losing proposition. ublic registration of the design and analysis plan of a study before it is begun. Clinical trials researchers have done this for decades, and in 2013 researchers in other areas rapidly followed suit. Registration includes the details of the data analyses that will be conducted, which eliminates the former practice of presenting the inevitable fluctuations of multifaceted data as robust results. Reviewers assessing the associated manuscripts end up focusing more on the soundness of the study's registered design rather than disproportionately favoring the findings. This helps reduce the disadvantage that confirmatory studies usually have relative to fishing expeditions. Indeed, a few journals have begun accepting articles from well-designed studies even before the results come in.

Wait, I thought there was a big rise in retraction rates that has everyone freaking out. Isn't there a website just dedicated to [outing and shaming people who retract stuff](http://retractionwatch.com/)?  I think registry of study designs for confirmatory research is a great idea. But I wonder what the effect would be on reducing the [opportunity for scientific mistakes that turn into big ideas](http://www.acs.org/content/acs/en/education/whatischemistry/landmarks/flemingpenicillin.html). This person needs to read the [ROC curves of science](http://simplystatistics.org/2013/08/01/the-roc-curves-of-science/). Any basic research system that doesn't allow for a lot of failure is never going to discover anything interesting.

**Big effects are due to multiple small effects**

> So, do big effects tend to have big explanations, or many explanations? There is probably no single, simple and uniformly correct answer to this question. (It's a hopeless tree!) But, we can use a simple model to help make an educated guess.

The author simulates 200 variables each drawn from a N(0,i) for i=1...5. The author finds that most of the largest values come from the N(0,5) not the N(0,1). This says nothing about simple or complex phenomena. It says a lot about how a N(0,5) is more variable than a N(0,1). This does not address the issue of whether hypotheses are correct or not.

**Bonus round: On abandoning evolution**

> Intelligent design and other Creationist critiques have been easily shrugged off and the facts of evolution well established in the laboratory, fossil record, DNA record and computer simulations. If evolutionary biologists are really Seekers of the Truth, they need to focus more on finding the mathematical regularities of biology, following in the giant footsteps of Sewall Wright, JBS Haldane, Ronald  Fisher and so on.

Among many other things, this person needs a course in statistics. The people he is talking about focused on quantifying uncertainty about biology, not certainty or mathematical regularity.

**One I actually agree with: putting an end to the idea that Big Data solves all problems**

> No, I don't literally mean that we should stop believing in, or collecting, Big Data. But we should stop pretending that Big Data is magic.

That guy must be reading our blog. [The key word in data science is science](http://simplystatistics.org/2013/12/12/the-key-word-in-data-science-is-not-data-it-is-science/), after all.

**On focusing on the variance rather than the mean**

> Our focus on averages should be retired. Or, if not retired, we should give averages an extended vacation. During this vacation, we should catch up on another sort of difference between groups that has gotten short shrift: we should focus on comparing the difference in variance (which captures the spread or range of measured values) between groups.

I actually like most of this article, but the format for the edge.org pieces killed it. The author says we should stop caring about the mean or make it secondary. I completely agree we should consider the variance - the examples he points out are great. But we should also always keep in mind the first moment before we move on to the second, so not "retire" just "add to".

&nbsp;

** No one asked me but here is what I'd throw out**

  * Sweeping generalizations without careful theory, experimentation, and good data
  * Oversimplifying questions that don't ask for potential solutions that deal with the complexity of the real world.
  * Sensationalism by scientists about science
  * Sensationalism by journalists about science
  * Absolutist claims about uncertain data
