---
id: 1246
title: Reproducibility and reciprocity
date: 2013-04-30T09:58:47+00:00
author: Roger Peng
al2fb_facebook_link_id:
  - 136171103105421_488747744514420
al2fb_facebook_link_time:
  - 2013-04-30T13:58:52+00:00
al2fb_facebook_link_picture:
  - post=http://simplystatistics.org/?al2fb_image=1
dsq_thread_id:
  - 1248082681
categories:
  - Uncategorized
slug: "reproducibility-and-reciprocity"
---
One element about the entire discussion about reproducible research that I haven't seen talked about very much is the potential for the lack of reciprocity. I think even if scientists were not concerned about the possibility of getting scooped by others by making their data/code available this issue would be sufficient to give people pause about making their work reproducible.

What do I mean by reciprocity? Consider the following (made up) scenario:

  1. I conduct a study (say, a randomized controlled trial, for concreteness) that I register at clinicaltrials.gov beforehand and specify details about the study like the design, purpose, and primary and secondary outcomes.
  2. I rigorously conduct the study, ensuring safety and privacy of subjects, collect the data, and analyze the data.
  3. I publish the results for the primary and secondary outcomes in the peer-reviewed literature where I describe how the study was conducted and the statistical methods that were used. For the sake of concreteness, let's say the results were "significant" by whatever definition of significant you care to use and that the paper was highly influential.
  4. Along with publishing the paper I make the analytic dataset and computer code available so that others can look at what I did and, if they want, reproduce the result.

So far so good right? It seems this would be a great result for any study. Now consider the following possible scenarios:

  1. Someone obtains the data and the code from the web site where it is hosted, analyzes it, and then publishes a note claiming that the intervention negatively affected a different outcome not described in the original study (i.e. not one of the primary or secondary outcomes).
  2. A second person obtains the data, analyzes it, and then publishes a note on the web claiming that the intervention was ineffective for the primary outcome in a the subset of participants that were male.
  3. A third person obtains the data, analyzes the data, and then publishes a note on the web saying that the study is flawed and that the original results of the paper are incorrect. No code, data, or details of their methods are given.

Now, how should one react to the follow-up note claiming the study was flawed? It's easy to imagine a spectrum of possible responses ranging from accusations of fraud to staunch defenses of the original study. Because the original study was influential, there is likely to be a kerfuffle either way.

But what's the problem with the three follow-up scenarios described? The one thing that they have in common is that none of the three responding people were subjected to the same standards to which the original investigator (me) was subjected. I was required to register my trial and state the outcomes in advance. In an ideal world you might argue I should have stated my hypotheses in advance too. That's fine, but the point is that the people analyzing the data subsequently were not required to do any of this. Why should they be held to a lower standard of scrutiny?

The first person analyzed a different outcome that was not a primary or secondary outcome. How many outcomes did they test before the came to that one negatively significant one? The second person examined a subset of the participants. Was the study designed (or powered) to look at this subset? Probably not. The third person claims fraud, but does not provide any details of what they did.

I think it's easy to take care of the third person--just require that they make their work reproducible too. That way we can all see what they did and verify that there was in fact fraud. But the first two people are a little more difficult. If there are no barriers to obtaining the data, then they can just get the data and run a bunch of analyses. If the results don't go their way, they can just move on and no one would be the wiser. If they did, they can try to publish something.

What I think a good reproducibility policy should have is a type of "viral" clause. For example, the GNU General Public License (GPL) is an open source software license that requires, among other things, that anyone who writes their own software, but links to or integrates software covered under the GPL, must publish their software under the GPL too. This "viral" requirement ensures that people cannot make use of the efforts of the open source community without also giving back to that community. There have been numerous heated discussions in the software community regarding the pros and cons of such a clause, with (large) commercial software developers often coming down against it. Open source developers have largely beens skeptical of the arguments of large commercial developers, claiming that those companies simply want to "steal" open source software and/or maintain their dominance.

I think it is important that if we are going to make reproducibility the norm in science, that we have analogous "viral" clauses to ensure that everyone is held to the same standard. This is particularly important in policy-relevant or in politically sensitive subject areas where there are often parties involved who have essentially no interest (and are in fact paid to have no interest) in holding themselves to the same standard of scientific conduct.

Richard Stallman was right to assume that without the [copyleft clause](http://en.wikipedia.org/wiki/Copyleft) in the GPL that large commercial interests would simply usurp the work of the free software community and essentially crush it before it got started. Reproducibility needs its own version of copyleft or else scientists will be left to defend themselves against unscrupulous individuals who are not held to the same standard.
