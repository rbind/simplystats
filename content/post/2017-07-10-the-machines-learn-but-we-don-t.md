---
title: The Machines Learn But We Don't
author: Roger Peng
date: '2017-07-10'
slug: the-machines-learn-but-we-don-t
categories:
  - AI
tags:
  - ai
---

I was genuinely amazed at this article by George Nott published in Computerworld quoting Peter Norvig on explainable artificial intelligence. From the article:

> Speaking at an event at UNSW in Sydney on Thursday, Norvig – who at NASA developed software that flew on Deep Space 1 – said: “You can ask a human, but, you know, what cognitive psychologists have discovered is that when you ask a human you’re not really getting at the decision process. They make a decision first, and then you ask, and then they generate an explanation and that may not be the true explanation.”

This first part seems reasonable to me. There are entire fields of study (e.g. behavioral economics) that are dedicated to understanding how humans make decisions and how they differ from the explanations that humans give for those decisions.

But then the article continues:

> Just as humans worked to make sense and explain their actions after the fact, a similar method could be adopted in AI, Norvig explained. 
>
> “So we might end up being in the same place with machine learning where we train one system to get an answer and then we train another system to say – given the input of this first system, now it’s your job to generate an explanation.”

As I discussed in [Episode 42 of Not So Standard Deviations](https://soundcloud.com/nssd-podcast/episode-42-one-piece-pjs), there are at least two issues with this reasoning.

First, Norvig suggests that we can take the outputs of a machine learning model and "explain" them using a completely different model from what was used to generate the outputs. We do this for humans because we do not have a good model for understanding how human brain processes work. However, this suggests that a second, perhaps more explainable model exists that can predict the outcome. Why not just use that model instead? What are the tradeoffs here? If the explainable model is interpretable in a useful way and perhaps only takes a small hit in accuracy, why not use it?

Second, even if we accept that we should just treat the machines the same way that we treat the humans, there is a critical difference here. As of today, we have ways to hold humans accountable for their decisions; we don't have general agreement over how to hold the machines accountable. Is it the fault of the companies that sell the machines? The developers that develop the code? The data scientists that built the models? Artificial intelligence reminds me of the tax-dodging multi-national corporation: simultaneously having many homes but also having no home at all.

But there is a last point that is implied by Norvig's comments. It is an admission that the machine learning models teach us nothing at all. From developing these models, we learn nothing about the data or about the processes that generated the data. So while the machines do all the learning, at the end of the data we learn nothing. All we can do is take the output of the machines and start from scratch.


























