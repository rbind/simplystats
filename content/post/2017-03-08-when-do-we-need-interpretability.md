---
title: When do we need interpretability?
author: roger
slug: "when-do-we-need-interpretability"
date: 2017-03-08
---

I just saw a link to an [interesting article](https://arxiv.org/abs/1702.08608) by Finale Doshi-Velez and Been Kim titled "Towards A Rigorous Science of Interpretable Machine Learning". From the abstract:

> Unfortunately, there is little consensus on what interpretability in machine learning is and how to evaluate it for benchmarking. Current interpretability evaluation typically falls into two categories. The first evaluates interpretability in the context of an application: if the system is useful in either a practical application or a simplified version of it, then it must be somehow interpretable. The second evaluates interpretability via a quantifiable proxy: a researcher might first claim that some model class—e.g. sparse linear models, rule lists, gradient boosted trees—are interpretable and then present algorithms to optimize within that class.

The paper raises a good point, which is that we don't really have a definition of "interpretability". We just know it when we see it. For the most part, there's been some agreement that parametric models are "more interpretable" than other models, but that's a relativey fuzzy statement.

I've long heard that complex machine learning models that lack any real interpretability are okay because there are many situations where we don't care "how things work". When Netflix is recommending my next movie based on my movie history and perhaps other data, the only thing that matters is that the recommendation is something I like. In other words, the [user experience defines the value](http://simplystatistics.org/2017/01/23/ux-value/) to me. However, in other applications, such as when we're assessing the relationship between air pollution and lung cancer, a more interpretable model may be required. 

I think the dichotomization between these two kinds of scenarios will eventually go away for a few reasons:

1. For some applications, lack of interpretability is fine...until it's not. In other words, what happens when things go wrong? Interpretability can help us to decipher why things went wrong and how things can be *modified* to be fixed. In order to move the levers of a machine to fix it, we need to know exactly where the levers are. Yet another way to say this is that it's possible to quickly jump from one situation (interpretability not needed) to another situation (what the heck just happened?) very quickly. 
2.  I think interpretability will become the new [reproducible research](http://simplystatistics.org/2014/06/06/the-real-reason-reproducible-research-is-important/), transmogrified to the machine learning and AI world. In the scientific world, reproducibility took some time to catch on (and has not quite caught on completely), but it is not so controversial now and many people in many fields accept the notion that all studies should at least be reproducible (if [not necessarily correct](http://www.pnas.org/content/112/6/1645.full)). There was a time when people differentiated between cases that needed reproducibility (big data, computational work), and cases where it wasn't needed. But that differentiation is slowly going away. I believe interpretability in machine learning and statistical modeling wil go the same way as reproducibility in science.

Ultimately, I think it's the success of machine learning that brings the requirement of interpretability on to the scene. Because machine learning has become ubiquitous, we as a society begin to develop expectations for what it is supposed to do. Thus, the [value of the machine learning begins to be defined externally](http://simplystatistics.org/2017/01/23/ux-value/). It will no longer be good enough to simply provide a great user experience. 
