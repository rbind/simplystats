---
title: Creativity in Data Analysis
author: Roger Peng
date: '2018-06-26'
slug: creativity
---

I’ve often heard that there is a need for data analysts to be *creative* in their work. But why? Where and how exactly is that creativity exercised? 

On one extreme, it could be thought that a data analyst should be easily replaced by a machine. For various types of data and for various types of questions, there should be a deterministic approach to analysis that does not change. Presumably, this could be coded up into a computer program and the data could be fed into the program every time, with a result presented at the end. For starters, this would eliminate the notorious [researcher degrees of freedom](http://journals.sagepub.com/doi/abs/10.1177/0956797611417632) problem. If there were substantial [institutional knowledge](https://simplystatistics.org/2018/06/15/people-vs-institutions-in-data-analysis/) of data analysis, this might indeed be possible. How is it that every data analysis is so different that a human being is needed to craft a solution? 

Well, it's *not* true that every analysis is different. Many power calculations, for example, are identical or very similar, and can be automated to some degree. However, exactly how those power calculations are used or interpreted can vary quite a bit from project to project. Even the very same calculation for the same study design can be interpreted differently in different projects, depending on the context. The same is true for other kinds of analyses like regression modeling or machine learning.

Creativity is needed because of the *constraints* placed on the analysis by [context](https://simplystatistics.org/2018/05/24/context-compatibility-in-data-analysis/), [resources](https://simplystatistics.org/2018/06/18/the-role-of-resources-in-data-analysis/), and the [audience](https://simplystatistics.org/2018/04/17/what-is-a-successful-data-analysis/), all things that we might think of as being "outside" the data. The context around which the data are created, the resources (time, money, technology) available to do the analysis, and the audience to which the results will be presented, all play a key role in determining the strategy that an analyst develops to analyze the data. The analyst will often have to employ some amount of creativity in order to execute a strategy that produces useful output.


## The Role of Context

The context of a problem has great influence over how we frame a question, how we translate it into a data problem, and how we go about collecting data. The context also allows us to answer questions regarding *why* the data appear to be the way they do. The same number for the same type of measurement can have different interpretations based on the context. 

### Missing Data

Missing data are present in almost every dataset and the most important question a data analyst can ask when confronted with missing data is "Why are the data missing?" It's important to develop some understanding of the mechanism behind what makes the data missing in order to develop an appropriate strategy for dealing with missing data (i.e. doing nothing, imputation, etc.) But the data themselves often provide little information about this mechanism; often the mechanism is coded outside the data, possibly not even written down but stored in the minds of people who originally collected the data. 

Take a two-arm clinical trial with an experimental treatment and a placebo. Sometimes with experimental treatments, there are side effects and people will drop out of the trial (or even die) because they cannot handle the side effects. The result is more missing data in the experimental arm of the trial than in the placebo arm. Now the data themselves will reveal a differential in the rate of missing data between the arms as it will be clear that the treatment arm has a higher rate. But the data will not reveal the exact reason why they dropped out. Depending on the nature of the trial and the question being asked, there might be a few different ways to handle this problem. Imputation may be feasible or perhaps some sort of matching scheme. The exact choice of how to proceed will depend on what external data are available, how much data are missing, and how the results will be used, among many other factors.

Another example might be in the analysis of outdoor particulate matter air pollution data. Monitors run by the US EPA typically take measurements once every six days. The reason is that it is expensive to process the filters for PM data and so the 1-in-6 day schedule is a designed compromise to balance cost with quantity of data. Of course, this means that in the data records 5 out of every 6 days is "missing", even though the missingness was introduced deliberately. Again, the data don't say why they are missing. One could easily imagine a scenario where the monitor doesn't record data when the values of PM are very high or very low, a kind of informative missingness. But in this case, the missing data can be ignored and typically doesn't have a large impact on subsequent modeling. In fact, imputation can be detrimental here because it does not provide much benefit but can greatly increase uncertainty.

In both cases, the data analyst's job is to assess the situation, look at the data, obtain information about the context and why the data are missing (from a subject matter expert), and then decide on an appropriate path forward. Even with these two scenarios, there is no generic path forward.


## The Role of the Audience

The audience is another key factor that primarily influences *how* we analyze the data and present the results. One useful approach is to think about what final products need to be produced and then work backwards from there to produce the result. For example, if the “audience” is another algorithm or procedure, then the exact nature of the output may not be important as along as it can be appropriately fed into the next part of the pipeline. A priority will be placed on making sure the output is machine readable. In addition, interpretability may not weigh that heavily because no human being will be looking at the output of this part. However, if a person *will* be looking at the results, then you may want to focus on a modeling approach that lets that person [reason about the data](https://simplystatistics.org/2017/11/16/reasoning-about-data/) and understand how the data inform the results. 

In one extreme case, if the audience is another data analyst, you may want to do a relatively “light” analysis (maybe just some preprocessing) but then prepare the data in such a way that it can be easily distributed to others to do their own analysis. This could be in the form of an R package or a CSV file or something else. Other analysts may not care about your fancy visualizations or models; they'd rather have the data for themselves and make their own results.

A data analyst must make a reasonable assessment of the audience's needs, background, and preferences for receiving data analytic results. This may require some creative guessing. If the audience is available to the analyst, the analyst should ask questions about how best to present results. Otherwise, reasonable assumptions must be made or contingencies (e.g. backup slides, appendices) can be prepared for the presentation itself.


## Resources and Tools

The data analyst will likely have to work under a set of [resource constraints](https://simplystatistics.org/2018/06/18/the-role-of-resources-in-data-analysis/), placing boundaries on what can be done with the data. The first and foremost constraint is likely to be time. One can only try so many things in the time allotted, or some analyses may take too long to complete. Therefore, compromises may need to be made unless more time and resources can be negotiated. Tooling will be limited in that certain combinations of models and software may not exist and there may not be time to develop new tools from scratch.

A good data analyst must make an estimate of the time available and determine whether it is sufficient to complete the analysis. If resources are insufficient, then the analyst must either negotiate for more resources or adapt the analysis to fit the available resources. Creativity will almost certainly be required when there are severe resource constraints, in order to squeeze as much productivity out of what is available.


## Summary

Context, audience, and resources can all place different kinds of constraints on a data analysis, forcing the analyst to employ different kinds of creativity to get the job done. Although I’ve presented each context, audience, and resources separately here, in most analyses all of these factors will play a role simultaneously. The complexity of the constraint environment (and their various interactions) can grow quickly, placing increasing pressure on the analyst to think creatively to produce useful results. 
