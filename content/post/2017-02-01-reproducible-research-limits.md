---
title: Reproducible Research Needs Some Limiting Principles
author: roger
slug: "reproducible-research-limits"
date: 2017-02-01
---

Over the past 10 years thinking and writing about reproducible research, I've come to the conclusion that much of the discussion is incomplete. While I think we as a scientific community have come a long way in changing people's thinking about data and code and making them available to others, there are some key sticking points that keep coming up that are preventing further progress in the area.

When I used to write about reproducibility, I felt that the primary challenge/roadblock was a lack of tooling. Much has changed in just the last five years though, and many new tools have been developed to make life a lot easier. Packages like knitr (for R), markdown, and iPython notebooks, have made writing reproducible data analysis documents a lot easier. Web sites like GitHub and many others have made distributing analyses a lot simpler because now everyone effectively has a free web site (this was NOT true in 2005).

Even still, our basic definition of reproducibility is incomplete. Most people would say that a data analysis is reproducible if the analytic data and metadata are available and the code that did the analysis is available. Furthermore, it would be preferable to have some documentation to go along with both. But there are some key issues that need to be resolved to complete this general definition.

## Reproducible for Whom?

In discussions about reproducibility with others, the topic of **who** should be able to reproduce the analysis only occasionally comes up. There's a general sense, especially amongst academics, that **anyone** should be able to reproduce any analysis if they wanted to. 

There is an analogy with free software here in the sense that free software can be free for some people and not for others. This made more sense in the days before the Internet when distribution was much more costly. The idea here was that I could write software for a client and give them the source code for that software (as they would surely demand). The software is free for them but not for anyone else. But free software ultimately only matters when it comes to distribution. Once I distribute a piece of software, that's when all the restrictions come into play. However, if I only distribute it to a few people, I only need to guarantee that those few people have those freedoms. 

Richard Stallman once said that something like 90% of software was free software because almost all software being written was custom software for individual clients (I have no idea where he got this number). Even if the number is wrong, the point still stands that if I write software for a single person, it can be free for that person even if no one in the world has access to the software.

Of course, now with the Internet, everything pretty much gets distributed to everyone because there's nothing stopping someone from taking a piece of free software and posting it on a web site. But the idea still holds: Free software only needs to be free for the people who receive it.

That said, the analogy is not perfect. Software and research are not the same thing. They key difference is that you can't call something research unless is generally available and disseminated.  If Pfizer comes up with the cure for cancer and never tells anyone about it, it's not research. If I discover that there's a 9th planet and only tell my neighbor about it, it's not research. Many companies might call those activities research (particularly from an tax/accounting point of view) but since society doesn't get to learn about them, it's not research.

If research is by definition disseminated to all, then it should therefore be reproducible by all. However, there are at least two circumstances in which we do not even pretend to believe this is possible.

1. **Imbalance of resources**: If I conduct a data analysis that requires the [world's largest supercomputer](https://www.top500.org/lists/2016/06/), I can make all the code and data available that I want--few people will be able to actually reproduce it. That's an extreme case, but even if I were to make use of a [dramatically smaller computing cluster](https://jhpce.jhu.edu) it's unlikely that anyone would be able to recreate those resources. So I can distribute something that's reproducible in theory but not in reality by most people.
2. **Protected data**: Numerous analyses in the biomedical sciences make use of protected health information that cannot easily be disseminated. Privacy is an important issue, in part, because in many cases it allows us to collect the data in the first place. However, most would agree we cannot simply post that data for all to see in the name of reproducibility. First, it is against the law, and second it would likely deter anyone from agreeing to participate in any study in the future.

We can pretend that we can make data analyses reproducible for all, but in reality it's not possible. So perhaps it would make sense for us to consider whether a limiting principle should be applied. The danger of not considering it is that one may take things to the extreme---if it can't be made reproducible for all, then why bother trying? A partial solution is needed here.


## For How Long?

Another question that needs to be resolved for reproducibility to be a widely implemented and sustainable phenomenon is for how long should something be reproducible? Ultimately, this is a question about time and resources because ensuring that data and code can be made available and can run on current platforms *in perpetuity* requires substantial time and money. In the academic community, where projects are often funded off of grants or contracts with finite lifespans, often the money is long gone even though the data and code must be maintained. The question then is who pays for the maintainence and the upkeep of the data and code?

I've never heard a satisfactory answer to this question. If the answer is that data analyses should be reproducible forever, then we need to consider a different funding model. This position would require a perpetual funds model, essentially an endowment, for each project that is disseminated and claims to be reproducible. The endowment would pay for things like servers for hosting the code and data and perhaps engineers to adapt and adjust the code as the surrounding environment changes. While there are a number of [repositories](http://dataverse.org) that have developed scalable operating models, it's not clear to me that the funding model is completely sustainable. 

If we look at how scientific publications are sustained, we see that it's largely private enterprise that shoulders the burden. Journals house most of the publications out there and they charge a fee for access (some for profit, some not for profit). Whether the reader pays or the author pays is not relevant, the point is that a decision has been made about *who* pays.

The author-pays model is interesting though. Here, an author pays a publication charge of ~$2,000, and the reader never pays anything for access (in perpetuity, presumably). The $2,000 payment by the author is like a one-time capital expense for maintaining that one publication forever (a mini-endowment, in a sense). It works for authors because grant/contract supported research often budget for one-time publication charges. There's no need for continued payments after a grant/contract has expired.

The publication system is quite a bit simpler because almost all publications are the same size and require the same resources for access---basically a web site that can serve up PDF files and people to maintain it. For data analyses, one could see things potentially getting out of control. For a large analysis with terabytes of data, what would the one-time up-front fee be to house the data and pay for anyone to access it for free forever? 

Using Amazon's [monthly cost estimator](http://calculator.s3.amazonaws.com/index.html) we can get a rough sense of what the pure data storage might cost. Suppose we have a 10GB dataset that we want to store and we anticipate that it might be downloaded 10 times per month. This would cost about $7.65 per month, or $91.80 per year. If we assume Amazon raises their prices about 3% per year and a discount rate of 5%, the total cost for the storage is $4,590. If we tack on 20% for other costs, that brings us to $5,508. This is perhaps not unreasonable, and the scenario would certainly include most people. For comparison a 1 TB dataset downloaded once a year, using the same formula gives us a one-time cost of about $40,000. This is real money when it comes to fixed research budgets and would likely require some discussion of trade-offs.


## Summary

Reproducibility is a necessity in science, but it's high time that we start considering the practical implications of actually doing the job. There are still holdouts when it comes to the basic idea of reproducibiltiy, but they are fewer and farther between. If we do not seriously consider the details of how to implement reproducibility, perhaps by introducing some limiting principles, we may never be able to achieve any sort of widespread adoption.
