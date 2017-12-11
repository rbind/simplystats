---
title: Data Analysis and Engagement - Does Caring Matter?
author: Roger Peng
date: '2017-12-11'
slug: data-analysis-and-engagement-does-caring-matter
---

Sometimes, when you’re recording a podcast, it’s actually difficult to listen. That’s because while you’re recording you’re monitoring the network lag, the sound levels, the show notes, and the outline. On some episodes I’m just barely hanging on by a thread.

While Hilary Parker and I were recording [Episode 50 of Not So Standard Deviations](http://nssdeviations.com/50-existential-crisis-narrowly-averted) we had a discussion about her experience doing A/B testing at Etsy and how one experiment, which involved showing customers their passwords as they typed them, resulted in an *increase* in the number of failed login attempts, which was not what they were expecting. In the episode, we discuss how the problem was discovered and resolved and concluded that part of solving the problem involved a familiarity with how web forms can work.

> **Roger**: It feels like your intuition and experience using the web, and apps, and—it’s all coming together, right?

> **Hilary**: Exactly...which is part of why...it’s so important for data scientists to have genuine interest in the products they’re working on.

The idea here is that in this particular problem, an analyst’s experience with web forms played a significant role in interpreting and analyzing the data from the A/B test. They were then able to make modifications to the test and run it again. One thing that is interesting about this story is that understanding how web forms work has *nothing to do with the data*. It’s what you might think of as “prior knowledge”. In an alternative universe, one could imagine looking at the data, seeing that login failures were increasing, and then just nixing the feature, concluding that the “data had spoken”. 

Hilary’s comment passed me by at the time, but now that I’ve had some time to consider it, I think if it’s true, it has profound implications for the field of data science. Perhaps another way to frame it is to ask the question: *Does the quality of your data analysis depend on how much you care about the problem?* It’s maybe not the best question because I think the answer can be both yes and no, depending on the problem. 

However, I think there are multi-billion dollar unicorn startups whose future depends critically on the answer being “No”. I wrote a little about this [in regards to Palantir](https://simplystatistics.org/2016/05/11/palantir-struggles/). At the time, I wrote that Palantir was bouncing along a spectrum with boring old consulting company on one end and cool highly scalable software company on the other end.  In particular, it appeared that their expertise in some areas wasn’t translating well to other areas:

> it’s clear that Coke didn’t feel comfortable collaborating with Palantir’s personnel. Like any data science collaboration, it’s key that the data scientist have some familiarity with the domain. In many cases, having “deep expertise” in an area can give a collaborator confidence that you will focus on the things that matter to them. But developing that expertise costs money and time and it may prevent you from working with other types of clients where you will necessarily have less expertise. For example, Palantir’s long experience working with the US military and intelligence agencies gave them deep expertise in those areas, but how does that help them with a consumer products company?

If Palantir couldn’t translate their success into multiple areas, how could it justify it’s multi-billion dollar valuation? 

Not having to care about the ins and outs of a given area of data analysis means that there are dramatically fewer costs involved with getting into the area. We don’t need to invest time understanding whatever products may be involved and understanding why other people like them and how other poeple use them. Ultimately, I think the need to care about an area or product when doing data analysis negatively affects the profit potential of that area.



![Does Caring Matter?](/post/2017-12-11-data-analysis-and-engagement-does-caring-matter/CaringProfit.png)

Whether caring matters for data analysis also has implications for how to build a data analytic team. If you need your data analyst to be 100% committed to a product and to be fully invested, it’s difficult to achieve that with contractors or consultants, who are typically working on multiple projects with multiple companies. Some data analysis work is arguable generic, and thus can be done without emotional investment. But separating out the parts that “require caring” and those that don’t is arguably an important part of a data science manager’s job.

 
