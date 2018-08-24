---
title: Constructing a Data Analysis
author: Roger Peng
date: '2018-08-24'
slug: constructing-a-data-analysis
---

This week Hilary Parker and I have started our "Book Club" on [Not So Standard Deviations](http://nssdeviations.com/63-book-club-part-1) where we will be discussing Nigel Cross's book *Design Thinking: Understanding How Designers Think and Work*. We will be talking about how the work of designers parallels the work of data scientists and how many of the principles developed in design port over so well to data analysis. While data visualization has always taken cues from design, I think much broader aspects of data analysis could benefit from the work studying design. At any rate, I think this is a topic that should be discussed more amongst statisticians and data analysts.

One of the first revelations I've had recently is realizing that data analyses are not naturally occurring phenomena. You will not run into a data analysis while walking out in the woods. Data analyses must be created and constructed by people. 

One way to think about a data analysis is to think of it as a product to be designed. Data analysis is not a theoretical exercise. The goal is not to reveal something new about the world or to discover truth (although knowledge and truth may be important by-products). The goal of data analysis is to produce something useful. Useful to the scientist, useful to the product manager, useful to the business executive, or useful to the policy-maker. In that sense, data analysis is a fairly down-to-Earth activity.

Producing a useful product requires careful consideration of who will be using it. Good data analysis can be useful to just about anyone. The fact that many different kinds of people make use of data analysis is not exactly news, but what is new is the tremendous availability of data in general. 

If we consider a data analysis as something to be designed, this provides for us a rough road map for how to proceed.

## Questioning the Question

A favorite quotation from John Tukey, legendary statistician and data analyst at Princeton, is

> Far better an approximate answer to the right question, which is often vague, than the exact answer to the wrong question, which can always be made precise.

What does these words mean in the context of data analysis? In data analysis, we often start with a dataset or a question. But good data analysts do not solve the problem that is handed to them. The reason is not necessarily arrogance. often the problem as initially stated is only a first attempt. And that’s okay. 

A good data analyst recognizes that the problem itself requires examination. For example, someone might ask “Is air pollution bad for your health?” That’s a great question, and a critical one for public policy, but it’s difficult to map to a specific data analysis. There are many different types of air pollution and there are many health outcomes we might be worried about. Prioritizing and refining the original problem is a key initial step for any data analysis. In my experience, this process usually leads to a question that is more meaningful and whose answer could lead to clear action.

The first job of the data analyst is to *discover the real underlying problem*. The fact that the problem we end up with may not be the problem we started with is not anyone’s fault in particular. It’s just the nature of things. Often, scientific collaborators will come to my office essentially just to talk. They come in with a clear question, but as I probe and ask questions--“What kinds of data are available?”; “What action might result in answering this question?”; “What resources are available to do this analysis?”; “Is it possible to collect new data?”--the question can shift and evolve. Good collaborators are not offended by this process, but rather appreciate it as it hones their thinking. 

The bad collaborator comes in with the goal of handing off a question and waiting for the solution to appear. I have seen my fair share of these and it almost never works except perhaps with the most trivial problems. The process of designing a good data analysis cannot be modularized where we cleanly move from question, to data, to analysis, and to results, with each person involved doing their job and not talking to anyone else. One may wish it were so, because it would be much simpler this way, but wishing doesn’t make it so. This initial discussion of figuring out the right problem is an important part of designing a data analysis. But if one has a thorough discussion, we’re not done questioning the question yet.

Sometimes a problem does not become clear until we’ve attempted to solve it. A data analyst’s job is to propose solutions to a problem in order to explore the problem space. For example, in the above air pollution example, we might first express interest in looking at [particulate matter air pollution](https://www.epa.gov/pm-pollution). But when we look at the available data we see that there are too many missing values to do a useful analysis. So we might switch to looking at ozone pollution instead, which is equally important from a health perspective. 

At this point it is important that you not get too far into the problem where a lot of time or resources have to be invested. Making that initial attempt to look at particulate matter probably didn’t involve more than downloading a file from a web site, but it allowed us to explore the boundary of what might be possible. Sometimes the proposed solution “just works”, but more often it raises new questions and forces the analyst to rethink the underlying problem. Initial solution attempts should be “sketches”, or rough models, to see if things will work. The preliminary data obtained by these sketches can be valuable for prioritizing the possible solutions and converging on the ultimate approach.

This initial process of questioning the question can feel frustrating to some, particularly for those who have come to the data analyst to get something done. Often to the collaborator, it feels like the analyst is questioning their own knowledge of the topic and is re-litigating old issues that have previously been resolved. The data analyst should be sensitive to these concerns and explain why such a discussion needs to be had. The analyst should also understand that the collaborator *is* an expert in their field and probably does know what they’re talking about. A better approach for the analyst might be to frame this process as a way for the analyst to learn more about the subject matter at hand, rather than simply challenging long-standing assumptions or beliefs. This has the co-benefit of actually being true, since the analyst is likely not an expert in the data before them. By asking simple questions in an attempt to learn the subject matter, often collaborators will be forced to re-visit some of their own ideas and to refine their thinking about the topic.


## Engineering the Solution

Once we have refined the question we are asking and have carefully defined the scope of the problem we are solving, then we can proceed to engineer the solution. This will similarly be an iterative process, but we will be iterating over different things. At this point we will need a reasonably precise specification of the problem so that tools and methodologies can be mapped to various aspects of the problem. In addition, a workflow will need to be developed that will allow all of the interested parties to participate in the analysis and to play their proper role. 

The analyst will need to *setup the workflow for the analysis* and adapt it to the various needs and capabilities of the collaborators. Every project will likely have a different workflow, especially if every project has a different set of collaborators involved. This is not just a comment about the tools involved for managing the workflow, but more generally about how information is exchanged and relayed to different people. Sometimes the analyst is a “central hub” through which all information is passed and sometimes it’s more of a “free for all” where everyone talks to everyone else. There’s no one right approach but it’s important that everyone understands what approach is being used.

The analyst is also responsible for selecting the methodologies for obtaining, wrangling, and summarizing the data. One might need to setup databases to store the data or retrieve it. Statistical methodologies might be a *t*-test for a two group comparison or a regression model to look at multivariate relationships. The selection of these tools and methodologies will be guided in part by the specification of the problem as well as the resources available and the audience who will receive the analysis. Identifying the optimal methodological approach, given the constraints put on the problem, is the unique job of the analyst. The analyst may need to delegate certain tasks based on the expertise available on the team. 


## Wrangling the Team

Any interesting or complex data analysis will likely involve people from different disciplines. In academia, you might be working with a biologist, an engineer, a computer scientist, and a physician at the same time. In business, you might need to interact with finance, marketing, manufacturing, and data engineering in a given analysis. A difficult part of an analyst’s job is managing all of these people’s interests simultaneously while integrating them into the final analysis.

The challenge facing the analyst is that each discipline is likely to think that their interests take priority over everyone else’s. Furthermore, collaborators are likely to think that the problems relevant to their discipline are the most important problems to address. However, the analyst cannot accept that every discipline is “tied for first place”; priorities must be set and a reasonable assessment must made regarding which problems should addressed first, second, and so on. This is a delicate operation on the part of the analyst and doing it successfully requires open communication and good relationships with the collaborators. 

The fight for priority is also why it can be so difficult for a data analysis to be modularized. If an analysis is passed from person to person, then each person is inclined to take their specific disciplinary perspective on the problem and ignore the others. This is a naturally occurring phenomenon and it is the analyst’s job to prevent it from happening, lest the analysis be watered down to be incoherent or too tightly focused on one aspect. Ultimately, the analyst must take responsibility to see the “big picture” of the analysis, weigh each collaborator’s views, and choose a path that is acceptable to everyone. 

It’s not an easy job.
