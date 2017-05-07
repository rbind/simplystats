---
id: 1799
title: 'Implementing Evidence-based Data Analysis: Treading a New Path for Reproducible Research (Part 3)'
date: 2013-09-05T16:30:47+00:00
author: Roger Peng
al2fb_facebook_link_id:
  - 136171103105421_538407589548435
al2fb_facebook_link_time:
  - 2013-09-05T20:30:53+00:00
al2fb_facebook_link_picture:
  - post=http://simplystatistics.org/wp-content/uploads/2013/09/dsmpic-1024x608.png
dsq_thread_id:
  - 1719388958
categories:
  - Uncategorized
slug: "implementing-evidence-based-data-analysis-treading-a-new-path-for-reproducible-research-part-3"
---
[Last week](http://simplystatistics.org/2013/08/28/evidence-based-data-analysis-treading-a-new-path-for-reproducible-research-part-2/) I talked about how we might be able to improve data analyses by moving towards "evidence-based" data analysis and to use data analytic techniques that are proven to be useful based on statistical research rather. My feeling was this approach attacks the most "upstream" aspect of data analysis before problems have the chance to filter down into things like publications, or even worse, clinical decision-making.

In this third (and final!) post on this topic I wanted to describe a little how we could implement evidence-based data analytic pipelines. Depending on your favorite  software system you could imagine a number of ways to do this. If the pipeline were implemented in R, you could imagine it as an R package. The precise platform is not critical at this point; I would imagine most complex pipelines would involve multiple different software systems tied together.

Below is a rough diagram of how I think the various pieces of an evidence-based data analysis pipeline would fit together.

[<img class="alignright size-large wp-image-1800" alt="dsmpic" src="http://simplystatistics.org/wp-content/uploads/2013/09/dsmpic-1024x608.png" width="640" height="380" srcset="http://simplystatistics.org/wp-content/uploads/2013/09/dsmpic-300x178.png 300w, http://simplystatistics.org/wp-content/uploads/2013/09/dsmpic-1024x608.png 1024w" sizes="(max-width: 640px) 100vw, 640px" />](http://simplystatistics.org/wp-content/uploads/2013/09/dsmpic.png)There are a few key elements of this diagram that I'd like to stress:

  1. <span style="line-height: 16px;"> <strong>Inputs are minimal</strong>. You don't want to allow for a lot of inputs or arguments that can be fiddled with. This reduces the number of degrees of freedom and hopefully reduces the amount of hacking. Basically, you want to be able to input the data and perhaps some metadata.</span>
  2. **Analysis comes in stages**. There are multiple stages in any analysis, not just the part where you fit a model. Everything is important and every stage should use the best available method.
  3. **The stuff in the red box does not involve manual intervention**. The point is to not allow tweaking, fudging, and fiddling. Once the data goes in, we just wait for something to come out the other end.
  4. **Methods should be benchmarked**. For each stage of the analysis, there is a set of methods that are applied. These methods should, at a minimum, be benchmarked via a standard group of datasets. That way, if another method comes a long, we have an objective way to evaluate whether the new method is better than the older methods. New methods that improve on the benchmarks can replace the existing methods in the pipeline.
  5. **Output includes a human-readable report**. This report summarizes what the analysis was and what the results were (including results of any sensitivity analysis). The material in this report could be included in the "Methods" section of a paper and perhaps in the "Results" or "Supplementary Materials". The goal would be to allow someone who was not intimately familiar with the all of the methods used in the pipeline to be able to walk away with a report that he/she could understand and interpret. At a minimum, this person could take the report and share it with their local statistician for help with interpretation.
  6. **There is a defined set of output parameters**. Each analysis pipeline should, in a sense, have an "API" so that we know what outputs to expect (not the exact values, of course, but what kinds of values). For example, if a pipeline fits a regression model at the end the regression parameters are the key objects of interest, then the output could be defined as a vector of regression parameters. There are two reasons to have this: (1) the outputs, if the pipeline is deterministic, could be used for regression testing in case the pipeline is modified; and (2) the outputs could serve as inputs into another pipeline or algorithm.

Clearly, one pipeline is not enough. We need many of them for different problems. So what do we do with all of them?

I think we could organize them in a central location (kind of a specialized GitHub) where people could search for, download, create, and contribute to existing data analysis pipelines. An analogy (but not exactly a model) is the [Cochrane Collaboration](http://www.cochrane.org) which serves as a repository for evidence-based medicine. There are already a number of initiatives along these lines, such as the [Galaxy Project](http://galaxyproject.org) for bioinformatics. I don't know whether it'd be ideal to have everything in one place or have a number of sub-projects for specialized areas.

Each pipeline would have a leader (or "friendly dictator") who would organize the contributions and determine which components would go where. This could obviously be contentious, more some in some areas than in others, but I don't think any more contentious than your average open source project (check the archives of the Linus Kernel or Git mailing lists and you'll see what I mean).

So, to summarize, I think we need to organize lots of evidence-based data analysis pipelines and make them widely available. If I were writing this 5 or 6 years ago, I'd be complaining about a lack of infrastructure out there to support this. But nowadays, I think we have pretty much everything we need in terms of infrastructure. So what are we waiting for?
