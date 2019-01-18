---
title: The Tentpoles of Data Science
author: Roger Peng
date: '2019-01-18'
slug: the-tentpoles-of-data-science
---

What makes for a good data scientist? This is a question I asked [a long time ago](https://simplystatistics.org/2012/05/07/how-do-you-know-if-someone-is-great-at-data-analysis/) and am still trying to figure out the answer. Seven years ago, I wrote:

> I was thinking about the people who I think are really good at data analysis and it occurred to me that they were all people I knew. So I started thinking about people that I don’t know (and there are many) but are equally good at data analysis. This turned out to be much harder than I thought. And I’m sure it’s not because they don’t exist, it’s just because I think good data analysis chops are hard to evaluate from afar using the standard methods by which we evaluate people.

Now that time has passed and I’ve had an opportunity to see what’s going on in the world of data science, what I think about good data scientists, and what seems to make for good data analysis, I have a few more ideas on what makes for a good data scientist. In particular, I think there are broadly five “tentpoles” for a good data scientist. Each tentpole represents a major area of activity that will to some extent be applied in any given data analysis.

When I ask myself the question “What is data science?” I tend to think of the following five components. Data science is

* the application of **design thinking** to data problems;
* the creation and management of **workflows** for transforming and processing data;
* the negotiation of **human relationships** to identify context, allocate resources, and characterize audiences for data analysis products;
* the application of **statistical methods** to quantify evidence; and
* the transformation of data analytic information into coherent **narratives and stories**

My contention is that if you are a good data scientist, then you are good at all five of the tentpoles of data science. Conversely, if you are good at all five tentpoles, then you’ll likely be a good data scientist.


## Design Thinking

Listeners of [my podcast](http://www.nssdeviations.com) know that Hilary Parker and I are fans of design thinking. Having recently spent eight episodes discussing Nigel Cross’s book [*Design Thinking*](https://www.amazon.com/Design-Thinking-Understanding-Designers-Think/dp/1847886361), it’s clear I think this is a major component of good data analysis. 

The main focus here is developing a proper framing of a problem and homing in on the most appropriate question to ask. Many good data scientists are distinguished by their ability to think of a problem in a new way. Figuring out the best way to ask a question requires knowledge and consideration of the audience and what it is they need. I think it’s also important to frame the problem in a way that is personally interesting (if possible) so that you, as the analyst, are encouraged to look at the data analysis as a systems problem. This requires digging into all the details and looking into areas that others who are less interested might overlook. Finally, alternating between [divergent and convergent thinking](https://simplystatistics.org/2018/09/14/divergent-and-convergent-phases-of-data-analysis/) is useful for exploring the problem space via potential solutions (rough sketches), but also synthesizing many ideas and bringing oneself to focus on a specific question.

Another important area that design thinking touches is the solicitation of *domain knowledge*. [Many would argue](https://simplystatistics.org/2018/11/01/the-role-of-academia-in-data-science-education/) that having domain knowledge is a key part of developing a good data science solution. But I don’t think being a good data scientist is *about* having specific knowledge of biology, web site traffic, environmental health, or clothing styles. Rather, if you want to have an impact in any of those areas, it’s important to be able to *solicit* the relevant information---including domain knowledge---for solving the problem at hand. I don’t have a PhD in environmental health sciences, and my knowledge of that area is not at the level of someone who does. But I believe that over my career, I have solicited the relevant information from experts and have learned the key facts that are needed to conduct data science research in this area.


## Workflows

Over the past 15 years or so, there has been a growing discussion of the importance of good workflows in the data analysis community. At this point, I’d say a critical job of a data scientist is to develop and manage the workflows for a given data problem. Most likely, it is the data scientist who will be in a position to observe how the data flows through a team or across different pieces of software, and so the data scientist will know how best to manage these transitions. If a data science problem is a *systems problem*, then the workflow indicates how different pieces of the system talk to each other. While the tools of data analytic workflow management are constantly changing, the importance of the idea persists and staying up-to-date with the best tools is a key part of the job. 

In the scientific arena the end goal of good workflow management is often reproducibility of the scientific analysis. But good workflow can also be critical for collaboration, team management, and producing *good* science (as opposed to merely reproducible science). Having a good workflow can also facilitate sharing of data or results, whether it’s with another team at the company or with the public more generally, as in the case of scientific results. Finally, being able to understand and communicate how a given result has been generated through the workflow can be of great importance when problems occur and need to be debugged.


## Human Relationships

In previous posts I’ve discussed the importance of [context](https://simplystatistics.org/2018/05/24/context-compatibility-in-data-analysis/), [resources](https://simplystatistics.org/2018/06/18/the-role-of-resources-in-data-analysis/), and [audience](https://simplystatistics.org/2018/04/17/what-is-a-successful-data-analysis/) for producing a successful data analysis. Being able to grasp all of these things typically involves having [good relationships](https://simplystatistics.org/2018/04/30/relationships-in-data-analysis/) with other people, either within a data science team or outside it. In my experience, poor relationships can often lead to poor work.

It’s a rare situation where a data scientist works completely alone, accountable to no one, only presenting to themselves. Usually, resources must be obtained to do the analysis in the first place and the audience (i.e. users, customers, viewers, scientists) must be characterized to understand how a problem should be framed or a question should be asked. All of this will require having relationships with people who can provide the resources or the information that a data scientist needs. 

Failures in data analysis can often be traced back to a breakdown in human relationships and in communication between team members. As the [Duke Saga](https://simplystatistics.org/2018/04/23/what-can-we-learn-from-data-analysis-failures/) showed us, dramatic failures do not occur because someone didn’t know what a *p*-value was or how to fit a linear regression. In that particular case, knowledgeable people reviewed the analysis, identified exactly all the serious the problems, raised the issues with the right people, and...were ignored. There is no statistical method that I know of that can prevent disaster from occurring under this circumstance. Unfortunately, for outside observers, it’s usually impossible to see this process happening, and so we tend to attribute failures to the parts that we *can* see.


## Statistical Methods

Applying statistical methods is obviously essential to the job of a data scientist. In particular, knowing what methods are most appropriate for different situations and different kinds of data, and which methods are best-suited to answer different kinds of questions. Proper application of statistical methods is clearly important to doing *good* data analysis, but it’s also important for data scientists to know what methods can be reasonably applied given the constraint on resources. If an analysis must be done by tomorrow, one cannot apply a method that requires two days to complete. However, if the method that requires two days is the *only* appropriate method, then additional time or resources must be negotiated (thus necessitating good relationships with others). 

I don’t think much more needs to be said here as I think most assume that knowledge of statistical methods is critical to being a good data scientist. That said, one important aspect that falls into this category is the *implementation* of statistical methods, which can be more or less complex depending on the size of the data. Sophisticated computational algorithms and methods may need to be applied or developed from scratch if a problem is too big to work on off-the-shelf software. In such cases, a good data scientist will need to know how to implement these methods so that the problem can be solved. While it is sometimes necessary to collaborate with an expert in this area who can implement a complex algorithm, this creates a new layer of communication and another relationship that must be properly managed.


## Narratives and Stories

Even the simplest of analyses can produce an overwhelming amount of results and being able to distill that information into a coherent narrative or story is critical to the success of an analysis. If a great analysis is done, but no one can understand it, did it really happen? Narratives and stories serve as *dimension reduction for results* and allow an audience to navigate a specified path through the sea of information. 

Data scientists have to prioritize what is important and what is not and present things that are relevant to the audience. Part of building a good narrative is choosing the right presentation materials to tell the story, whether they be plots, tables, charts, or text. There is rarely an optimal choice that serves all situations because what works best will be highly audience- and context-dependent. Data scientists need to be able to “read the room”, so to speak, and make the appropriate choices. Many times, when I’ve seen critiques of data analyses, it’s not the analysis that is being criticized but rather the choice of narrative. If the data scientist chooses to emphasize one aspect but the audience thinks another aspect is more important, the analysis will seem "wrong" even though the application of the methods to the data is correct.

A hallmark of good communication about a data analysis is providing a way for the audience to [reason about](https://simplystatistics.org/2017/11/16/reasoning-about-data/) [the data](https://simplystatistics.org/2017/11/20/follow-up-on-reasoning-about-data/) and to understand how the data are tied to the result. This is a *data analysis* after all, and we should be able to see for ourselves how the data inform the conclusion. As an audience member in this situation, I’m not as interested in just trusting the presenter and their conclusions.


## Describing a Good Data Scientist

When thinking of some of the best data scientists I’ve known over the years, I think they are all good at the five tentpoles I’ve described above. However, what about the converse? If you met someone who demonstrated that they were good at these five tentpoles, would you think they were a good data scientist? I think the answer is yes, and to get a sense of this, one need look no further than a typical job advertisement for a data science position. 

I recently saw this [job ad](https://fertiglab.com/opportunities) from my Johns Hopkins colleague Elana Fertig. She works in the area of computational biology and her work involves analyzing large quantities of data to draw connections between people’s genes and cancer (if I may make a gross oversimplification). She is looking for a postdoctoral fellow to join her lab and the requirements listed for the position are typical of many ads of this type:

* PhD in computational biology, biostatistics, biomedical engineering, applied mathematics, or a related field. 
* Proficiency in programming with R/Bioconductor and/or python for genomics analysis. 
* Experience with high-performance computing clusters and LINUX scripting.
* Techniques for reproducible research and version control, including but not limited to experience generating knitr reports, GitHub repositories, and R package development.
* Problem-solving skills and independence.
* The ability to work as part of a multidisciplinary team.
* Excellent written and verbal communication skills.

This is a job where complex **statistical methods** will be applied to large biological datasets. As a result, knowledge of the methods or the biology will be useful, and knowing how to implement these methods on a large scale (i.e. via cluster computing) will be important. Knowing techniques for reproducible research requires knowledge of the proper **workflows** and how to manage them throughout an analysis. Problem-solving skills is practically synonymous with **design thinking**; working as part of a multidisciplinary team requires negotiating **human relationships**; and developing **narratives and stories** requires excellent written and verbal communication skills.


## Summary

A good data scientist can be hard to find, and part of the reason is because being a good data scientist requires mastering skills in a wide range of areas. However, these five tentpoles are not haphazardly chosen; rather they reflect the interwoven set of skills that are needed to solve complex data problems. Focusing on being good at these five tentpoles means sacrificing time spent studying other things. To the extent that we can coalesce around the idea of convincing people to do exactly that, data science will become a distinct field with its own identity and vision. 
