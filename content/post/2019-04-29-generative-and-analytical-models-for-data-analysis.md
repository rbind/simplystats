---
title: Generative and Analytical Models for Data Analysis
author: Roger Peng
date: '2019-04-29'
slug: generative-and-analytical-models-for-data-analysis
---

Describing how a data analysis is created is a topic of keen interest to me and there are a few different ways to think about it. Two different ways of thinking about data analysis are what I call the “generative” approach and the “analytical” approach. Another, more informal, way that I like to think about these approaches is as the “biological” model and the “physician” model. Reading through the literature on the process of data analysis, I’ve noticed that many seem to focus on the former rather than the latter and I think that presents an opportunity for new and interesting work.


## Generative Model

The generative approach to thinking about data analysis focuses on the process by which an analysis is created. Developing an understanding of the decisions that are made to move from step one to step two to step three, etc. can help us recreate or reconstruct a data analysis. While reconstruction may not exactly be the goal of studying data analysis in this manner, having a better understanding of the process can open doors with respect to improving the process.

A key feature of the data analytic process is that it typically takes place inside the data analyst’s head, making it impossible to directly observe. Measurements can be taken by asking analysts what they were thinking at a given time, but that can be subject to a variety of measurement errors, as with any data that depend on a subject’s recall. In some situations, partial information is available, for example if the analyst writes down the thinking process through a series of reports or if a team is involved and there is a record of communication about the process. From this type of information, it is possible to gather a reasonable picture of “how things happen” and to describe the process for generating a data analysis.

This model is useful for understanding the “biological process”, i.e. the underlying mechanisms for how data analyses are created, sometimes referred to as [“statistical thinking”](https://projecteuclid.org/euclid.ss/1009212754). There is no doubt that this process has inherent interest for both teaching purposes and for understanding applied work. But there is a key ingredient that is lacking and I will talk about that more below.


## Analytical Model

A second approach to thinking about data analysis ignores the underlying processes that serve to generate the data analysis and instead looks at the observable outputs of the analysis. Such outputs might be an R markdown document, a PDF report, or even a slide deck (Stephanie Hicks and I refer to this as the [analytic container](https://arxiv.org/abs/1903.07639)). The advantage of this approach is that the analytic outputs are real and can be directly observed. Of course, what an analyst puts into a report or a slide deck typically only represents a fraction of what might have been produced in the course of a full data analysis. However, it’s worth noting that the elements placed in the report are the *cumulative result* of all the decisions made through the course of a data analysis. 

I’ve used music theory as an analogy for data analysis [many times before](https://youtu.be/qFtJaq4TlqE), mostly because...it’s all I know, but also because it really works! When we listen to or examine a piece of music, we have essentially no knowledge of how that music came to be. We can no longer interview Mozart or Beethoven about how they wrote their music. And yet we are still able to do a few important things:

* *Analyze and Theorize*. We can analyze the music that we hear (and their written representation, if available) and talk about how different pieces of music differ from each other or share similarities. We might develop a sense of what is commonly done by a given composer, or across many composers, and evaluate what outputs are more successful or less successful. It’s even possible to draw connections between different kinds of music separated by centuries. None of this requires knowledge of the underlying processes.
* *Give Feedback*. When students are learning to compose music, an essential part of that training is the play the music in front of others. The audience can then give feedback about what worked and what didn’t. Occasionally, someone might ask “What were you thinking?” but for the most part, that isn’t necessary. If something is truly broken, it’s sometimes possible to prescribe some corrective action (e.g. “make this a C chord instead of a D chord”).

There are even two whole podcasts dedicated to analyzing music---[Sticky Notes](https://stickynotespodcast.libsyn.com) and [Switched on Pop](https://www.switchedonpop.com)---and they generally do not interview the artists involved (this would be particularly hard for Sticky Notes). By contrast, the [Song Exploder](http://songexploder.net) podcast takes a more “generative approach” by having the artist talk about the creative process.

I referred to this analytical model for data analysis as the “physician” approach because it mirrors, in a basic sense, the problem that a physician confronts. When a patient arrives, there is a set of symptoms and the patient’s own report/history. Based on that information, the physician has to prescribe a course of action (usually, to collect more data). There is often little detailed understanding of the biological processes underlying a disease, but they physician may have a wealth of personal experience, as well as a literature of clinical trials comparing various treatments from which to draw. In human medicine, knowledge of biological processes is critical for designing new interventions, but may not play as large a role in prescribing specific treatments.

When I see a data analysis, as a teacher, a peer reviewer, or just a colleague down the hall, it is usually my job to give feedback in a timely manner. In such situations there usually isn’t time for extensive interviews about the development process of the analysis, even though that might in fact be useful. Rather, I need to make a judgment based on the observed outputs and perhaps some brief follow-up questions. To the extent that I can provide feedback that I think will improve the quality of the analysis, it is because I have a sense of what makes for a *successful* analysis.


## The Missing Ingredient

Stephanie Hicks and I have discussed what are the elements of a data analysis as well as what might be the [principles](https://arxiv.org/abs/1903.07639) that guide the development of an analysis. In a [new paper](https://arxiv.org/abs/1904.11907), we describe and characterize the *success* of a data analysis, based on a matching of principles between the analyst and the audience. This is something I have touched on previously, both [in this blog](https://simplystatistics.org/2018/04/17/what-is-a-successful-data-analysis/) and on [my podcast with Hilary Parker](http://nssdeviations.com/), but in a generally more hand-wavey fashion. Developing a more formal model, as Stephanie and I have done here, has been useful and has provided some additional insights.

For both the generative model and the analytical model of data analysis, the missing ingredient was a clear definition of what made a data analysis *successful*. The other side of that coin, of course, is knowing when a data analysis has failed. The analytical approach is useful because it allows us to separate the analysis from the analyst and to categorize analyses according to their observed features. But the categorization is “unordered” unless we have some notion of success. Without a definition of success, we are unable to formally criticize analyses and explain our reasoning in a logical manner. 

The generative approach is useful because it reveals potential targets of intervention, especially from a teaching perspective, in order to improve data analysis (just like understanding a biological process). However, without a concrete definition of success, we don’t have a target to strive for and we do not know how to intervene in order to make genuine improvement. In other words, there is no outcome on which we can “train our model” for data analysis.

I mentioned above that there is a lot of focus on developing the generative model for data analysis, but comparatively little work developing the analytical model. Yet, both models are fundamental to improving the quality of data analyses and learning from previous work. I think this presents an important opportunity for statisticians, data scientists, and others to study how we can characterize data analyses based on observed outputs and how we can draw connections between analyses. 
