---
title: The Role of Theory in Data Analysis
author: Roger Peng
date: '2018-12-11'
slug: the-role-of-theory-in-data-analysis
---


In data analysis, we make use of a lot of theory, whether we like to admit it or not. In a traditional statistical training, things like the central limit theorem and the law of large numbers (and their many variations) are deeply baked into our heads. I probably use the central limit theorem everyday in my work, sometimes for the better, and sometimes for the worse. Even if I’m not directly applying a Normal approximation, knowledge of the central limit theorem will often guide my thinking and help me to decide what to do in a given data analytic situation.

Theorems like the central limit theorem or the law of large numbers ultimately tell us something about the world around us by serving as models. When we say "Let X1, X2, ... be random variables", we’re usually thinking of X1 and X2 as abstract representations of real world phenomena. They might be people, or time points in a time series, or cars on the road. What’s nice about the theory here is that with a single statement (and a critical set of assumptions), we can make general statements about the world, regardless of whether we’re talking about people or cars. In this sense, statistical theory is analogous to scientific theory, which also tries to make general statements about the world. Statistical theory also contains statements about the tools we use, to help us understand their behavior and their properties. Most of this theory is a combination of well-understood mathematical transformations (derivatives, integrals, approximations) and models of the physical world. 


## Other Theories

There are other kinds of theory and often their role is not to make general statements about the natural world. Rather, their goal is to provide quasi-general summaries of what is commonly done, or what might be typical. So instead of making statements along the lines of "X is true", the aim is to make statements like "X is most common". Often, those statements can be made because there is a written record of what was done in the past and the practitioners in the area have a collective memory of what works and what doesn’t. 

### On War

In his book *On War*, Carl von Clauswitz writes at length about the role of theory in warfare. What’s the point of discussing war in the abstract when the reality of war is complicated and highly dependent on the facts on the ground? He sees theory in warfare as a form of training, “a compression of the past transmitting experience, while making minimal claims about the future." 

Clauswitz did not envision theory as commanding a general to do something, but rather as an efficient summary of what had worked (or not worked) before. The only alternative to having a theory in this case would be for each general to re-learn the material from scratch. In the practice of warfare, such an approach could easily lead to death. The language of Clauswitz is reminiscent of John Tukey. In his 1962 paper *The Future of Data Analysis*, Tukey writes that theory should "guide, not command” the practice of data analysis.


### On Music

Another area that contains a significant amount of theory is music. As I’m a bit more familiar with this area than with warfare, I will draw out a few more examples here. Music theory is largely a descriptive practice that attempts to draw out underlying patterns that appear in various forms and instances of music. Out of music theory we get things like "Sonata Form", which says that a piece of music has an exposition, a development, and a recapitulation. This form is very common in western classical music and has strong ties to written work. 

We also get tonal harmonic analysis, which provides a language for describing the harmonic transitions in a piece of music. For example, most western music has a "key signature", which can be thought of as the primary or "tonic" chord (C-major, for example). All other chords in the scale revolve around that primary chord. These chords are usually referred to using Roman numerals, so the primary or tonic chord is denoted with Roman numeral I. In most pieces of music, the commonly used chords are the tonic (the I chord), the dominant (the V chord), and the sub-dominant (the IV chord). The harmonic pattern of I-IV-V chords is instantly recognizable in many forms of western music written across centuries. We can find chorales written by Johann Sebastian Bach that follow similar harmonic patterns as songs written by The Beatles. In this way, the tonal theory of harmony allows us to draw connections between very disparate pieces of music.

One thing that the tonal theory of harmony does *not* give us is a recipe for what to do when creating new music. Simply knowing the theory does not make one a great composer. It’s tempting to think that the theory of harmony is formulated in a manner that tells us what sounds good and what doesn’t (and sometimes it is taught this way), but this is misleading. A rote application of the theory will lead to something that is passable, but likely not very inspiring, as you will essentially end up with a reformulation of what has been done before. Part of what makes music great is that it is new and different from what came before. 

Arnold Schoenberg, in his textbook *Harmonielehre*, argued strongly against the idea that there were certain forms of music that inherently "sounded good" versus those that "sounded bad". His thinking was not that the theory of music tells us what sounds good versus bad but rather tells us what is commonly done versus not commonly done. One could infer that things that are commonly done are therefore good, but that would be an individual judgment and not an inherent aspect of the theory. 

Knowledge of music theory is useful if only because it provides an efficient summary of what is expected. You can’t break the rules if you don’t know what the rules are. Creating things that are surprising or unexpected or interesting relies critically on knowing what your audience is expecting to hear. The reason why Schoenberg’s “atonal” style of music sounds so different is because his audiences were expecting music written in the more common tonal style. Sometimes, we can rely on music theory to help us avoid a specific chord progression (e.g. parallel fifths) because that "sounds bad", but what we really mean is that such a pattern is not commonly used and is perhaps unexpected. So if you’re going to do it, feel free, but it should be for a good reason.


### Humans in the Loop

In both examples of theory presented here--warfare and music--the theory only takes you so far, perhaps frustratingly so. Both theories leave room for a substantial human presence and for critical human decision-making. In warfare, Clauswitz acknowledges that there are significant uncertainties that every general encounters and that the role of any theory should be to "educate the mind of the future commander...not to accompany him to the battlefield." 

Similarly in music, theory provides an efficient way to summarize the useful aspects of what has come before in a manner that can be fit into something like a semester-long course. It also provides a language for describing characteristics of music and for communicating similarities and differences across musical pieces. But when it comes to the creation of new music, theory can only provide the foundation; the composer must ultimately build the house.


## What Does a Theory of Data Analysis Look Like?

If asked to make generally true statements about data analysis, I think most practitioners would struggle. Data analysis relies critically on the details. How could one make a statement that was true for all data analyses when the details differ so much between analyses? And yet, often one person is capable of analyzing data from vastly different domains. Two people who do data analysis in different areas can still have things to talk about related to their work. What are the things that transfer across domains? 

One obvious candidate is the methods themselves. A linear regression in biology is the same linear regression in economics. If I am an economist, I may not know much about biology but I could still explain the concepts of linear regression. Similarly, a scatterplot is the same no matter what field it is applied to, even if the things being plotted are different. So the bread and butter of statistics, the study of methods of data analysis, is important. Yet, in my experience, people with solid training in a wide array of statistical methods can still be poor data analysts. In that case, what are they missing?

At this point, many would argue that what is missing is the "experience of doing data analysis". In other words, data analysis is learned through doing it. Okay, fine, but what exactly is it that we are learning? It’s worth spending a little time asking this question and considering possible answers because any theory of data analysis would include the answers to this question.


### General Statements

The closest thing to a general statement about data analysis that I can come up with is **a successful data analysis is reproducible**. (Note that I do not believe the converse is true.) The concept of reproducibility, whereby code and data accompany a data analysis so that others can re-create the results, has developed over more than 20 years and has only grown in importance. With the increase in computational power and data collection technology, it is essentially impossible to rely on written representations of data analysis. The only way to truly know what has happened to produce a result is to look at the code and perhaps run it yourself. 

When I wrote my [first paper on reproducibility in 2006](https://academic.oup.com/aje/article/163/9/783/108733) the reaction was hardly one of universal agreement. But today, I think many would see the statement above as true. What has changed? Mostly, data analysts in the field have gained substantially more experience with complex data analyses and have increasingly been bitten by the non-reproducibility of certain analyses. With experience, both good and bad, we can come to an understanding of what works and what doesn’t. Reproducibility works as a mechanism to communicate what was done, it isn’t too burdensome if it’s considered from the beginning of an analysis, and as a by-product it can make data available to others for different uses.

There is no need for a new data analyst to learn about reproducibility “from experience”. We don’t need to lead a junior data analyst down a months-long winding path of non-reproducible analyses until they are finally bitten by non-reproducibility (and therefore “learn their lesson”). We can just *tell* them 

> In the past, we’ve found it useful to make our data analyses reproducible. Here’s a workflow to guide you in your own analyses.

With that one statement, we can “compress” over 20 years of experience.

Another statement I can think of that is applicable to most data analyses is to **discover the data generating mechanism**. When I talk to other data analysts, one of the favorite category of “war stories” to tell is the one where you were bitten by some detail in data collection that went unnoticed. Many data analysts are not involved in the data collection process or the experimental design and so it is important to inquire about he process by which the data came to them. 

For example, one person told me a story of an analysis she did on a laboratory experiment that was ostensibly simple (basically, a t-test). But when she visited the lab one day to see how the experiments were done, she discovered that the experimental units were all processed in one batch and the control units were all processed in a different batch at a different time, thereby confounding any treatment effect with the batch. There’s not much a data analysis can do to rescue that situation and it’s good for the analyst to know that before spending a lot of time considering the right methodology.

I’ve written previously about the [Law & Order principle of data science](https://simplystatistics.org/2018/08/15/the-law-and-order-of-data-science/) where a data analyst must retrace the footsteps of the data to see how they were generated. Such an activity is time-consuming, but I’ve never come across a situation where it was actively detrimental to the analysis. At worst, it’s interesting knowledge to have but it plays no critical role in designing the ultimate analysis.

Most analysts I know have indeed learned “through experience” the dangers of not being informed of the data generating mechanism. But it seems like a waste of time to force new analysts to go through the same experience, as if it were some sort of fraternity hazing ritual. Why not just *tell* them? 



### Theory Principles

At this point, I think a theory of data analysis would look more like music than it would like physics or mathematics. Rather than produce general truths about the natural world, a theory of data analysis would provide useful summaries of what has worked and what hasn’t. A "compression of the past", so to speak. Along those lines, I think a theory of data analysis should reflect the following principles:

* The theory of data analysis is not a theory that instructs us what to do or tells us universal truths. Rather, it is a descriptive or constructive theory that guides analysts without tying their hands.
* A theory should speed up the training of an analyst by summarizing what is commonly done and what has been successful. It should reduce the amount of learning that must be done experientially. 
* The theory should serve the practice of data analysis and make data analysis better in order to justify its existence. This is in contrast to traditional statistical theory, whose existence could be justified by virtue of the fact that it allows us to discover truth about the natural world, not unlike with mathematics or physics. In other words, a theory of data analysis would have relatively little intrinsic value.
* The theory should not be dependent on specific technologies or types of data. It should be reasonably applicable to a wide range of data analyses in many different subject areas. A biologist talking to an economist should be able to understand each other when discussing the theory of data analysis.
* The theory should go far beyond the instruction of different methods of analysis, including aspects of data analysis that don’t strictly involve the data.


## The Scope of Data Analysis

Tukey writes that data analysis should be thought of more as a scientific field, not unlike biochemistry. The key aspect of that comparison is that scientists in any field are comfortable acknowledging that there are things they *don’t know*. However, data analysts often feel that they have to have an answer to every question. I’ve felt this myself--when someone presents a problem to me for which there isn’t an obvious solution, I feel a bit embarrassed, as if there *must* be an answer and I just don’t know it.

The view of data analysis as a scientific field though is a bit too simplistic in that we shouldn’t view solutions to problems as either known or unknown. Often, we can design a solution to a problem even if we are unaware of the “optimal” one. Such a sub-optimal solution will likely be based on intuition, judgment, and our memory of past experience. We may not be happy about the solution, but it might nevertheless be useful. If we are unhappy about the solution developed, we may be inspired to search for the “best” or optimal procedure...or not. Whether such a best solution can be found will depend on whether a realistic optimality criterion can even be specified.

Much of what is written about data analysis (in particular older material) tends to be about activities involving the data. But a distinction needs to be made between what data analysis *is* and what a data analyst *does*. The theory of data analysis will largely focus on what a data analyst *does*, as I think this aspect is potentially more generalizable across disciplines and includes many critically important activities that we don’t often discuss.

I think most would agree that what data analysis *is* includes things that involve the data (like fitting a statistical model). But many things that data analysts *do* include things completely outside the data. For example, refining the question to be answered and consulting with experts is a key aspect of what data analysts do, but typically does not involve the analysis of any data (the data may not even be collected yet). Experimental design is another important job where data analysts need to be involved but often does not involve data (although there is substantial theory surrounding this topic already). [Allocating resources](https://simplystatistics.org/2018/06/18/the-role-of-resources-in-data-analysis/) for a data analysis and [building trust](https://simplystatistics.org/2018/06/04/trustworthy-data-analysis/) with collaborators are also critical things that data analysts *do*.

Because data analysis has become such a critically valuable skill in so many areas of the world, statisticians will have to think harder about what makes for a good data analyst. Further, we need to develop better ways to train analysts to do the right thing. Learning by doing will always be a critical aspect of data analytic training, if only because practice is essential (not unlike with music). But we should make sure we are not wasting time in areas where we have a rich collective experience. In other words, we need a *theory of data analysis* that binds together this collective experience, summarizes what has worked and what hasn’t, compresses the past, and provides useful guidance for the uninitiated. 
