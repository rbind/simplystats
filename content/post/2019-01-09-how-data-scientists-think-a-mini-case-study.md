---
title: How Data Scientists Think - A Mini Case Study
author: Roger Peng
date: '2019-01-09'
slug: how-data-scientists-think-a-mini-case-study
---

In episode 71 of [Not So Standard Deviations](http://nssdeviations.com/), Hilary Parker and I inaugurated our first “Data Science Design Challenge” segment where we discussed how we would solve a given problem using data science. The idea with calling it a “design challenge” was to contrast it with common “hackathon” type models where you are presented with an already-collected dataset and then challenged to find something interesting in the data. Here, we wanted to start with a problem and then talk about how data might be collected and analyzed to address the problem. While both approaches might result in the same end-product, they address the various problems you encounter in a data analysis in a different order.

In this post, I want to break down our discussion of the challenge and highlight some of the issues that were discussed in framing the problem and in designing the data collection and analysis. I’ll end with some thoughts about generalizing this approach to other problems.

You can [download an MP3 of this segment of the episode](https://www.dropbox.com/s/yajgbr25dbh20i0/NSSD%20Episode%2071%20Design%20Challenge.mp3?dl=0) (it is about 45 minutes long) or you can [read the transcript of the segment](https://drive.google.com/open?id=11dEhj-eoh8w13dS-mWvDMv7NKWXZcXMr). If you’d prefer to stream the segment you can [start listening here](https://overcast.fm/+FMBuKdMEI/00:30).

## The Brief

The general goal was to learn more about the time it takes for each of us to commute to work. Hilary lives in San Francisco and I live in Baltimore, so the characteristics of our commutes are very different. She walks and takes public transit; I drive most days. We also wanted to discuss how we might collect data on our commute times in a systematic, but not intrusive, manner. When we originally discussed having this segment, this vague description was about the level of specification that we started with, so an initial major task was to 

1. Develop a better understanding of what question each of us was trying to answer;
2. Frame the problem in a manner that could be translated into a data collection task; and
3. Sketch out a feasible statistical analysis.

## Framing the Problem

Hilary and I go through a few rounds of discussion on the topic of how to think about this problem and the questions that we’re trying to answer. Early in the discussion Hilary mentions that this problem was “pressing on my mind” and that she took a particular interest in seeing the data and acting on it. Her intense interest in the problem potentially drove part of her creativity in developing solutions.

Hilary initially mentions that the goal is to understand the variation in commute times (i.e. estimate the variance), but then quickly shifts to the problem of estimating average commute times for the two different commute methods that she uses.

> HILARY: you...maybe only have one commute method and you want to understand the variance of that. So...what range of times does it usually take for me to get to work, or...I have two alternatives for my commute methods. So it might be like how long does it take me in this way versus that way? And for me the motivation is that I want to make sure I know when to leave so that I make it to meetings on time....

In her mind, the question being answered by this data collection is, “When should I leave home to get to meetings on time?” At this point she mentions two possible ways to think about addressing this question.

1. Estimate the variability of commute times and leave the house accordingly; or
2. Compare two different commute methods and then *choose* a method on any given day.

Right off the bat, Hilary notes that she doesn’t actually do this commute as often as she’d thought. Between working from home, taking care of chores in the morning, making stops on the way, and walking/talking with friends, a lot of variation can be introduced in to the data. 

I mention that “going to work” and “going home”, while both can be thought of as commutes, are not the same thing and that we might be interested in one more than the other. Hilary agrees that they are different problems but they are both potentially of interest.

### Question/Intervention Duality

At this point I mention that my commuting is also affected by various other factors and that on different days of the week, I have a different commute pattern. On days where I drop my son off at school, I have less control over when I leave compared to days when I drive straight to work. Here, we realize a fundamental issue, which is that different days of the week indicate somewhat different interventions to take: 

* On days where I drive straight to work, the question is “When should I leave to arrive on time for the first meeting?”
* On days where I drop my son off at school, the question is “When is the earliest time that I can schedule the first meeting of the day?”

In the former situation I have control over, and could potentially intervene on, when I leave the house, whereas in the latter situation I have control over when I schedule the first meeting. While these are distinct questions with different implications, at this point they may both require collecting travel time data in the same manner.

Earlier in this section I mention that on days when I drop my son off at school it can take 45 minutes to get to work. Hilary challenges this observation and mentions that “Baltimore is not that big”. She makes use of her knowledge of Baltimore geography to suggest that this is unexpected. However, I mention that the need to use local roads exclusively for this particular commute route makes it indeed take longer than one might expect.


## Designing the Data Collection System

In discussing the design of her data collection system, Hilary first mentions that a podcast listener had emailed in and mentioned his use of Google Maps to predict travel times based on phone location data. While this seemed like a reasonable idea, it ultimately was not the direction she took.

> HILARY: At first I was thinking about that because I have location history on and I look at it a lot, but there’s also a fair degree of uncertainty there. Like sometimes it just puts me in these really weird spots or...I lose GPS signal when I go underground and also I do not know how to get data in an API sense from that. So I knew it would be manual data. In order to analyze the data, I would have to go back and be like let me go and collect the data from this measurement device. So I was trying to figure out what I could use instead. 

Then she describes how she can use Wi-Fi connections (and dis-connections) to serve as surrogates for leaving and arriving.

> And at some point I realized that two things that reliably happen every time I do a commute is that my phone disconnects from my home Wi-Fi. And then it reconnects to my work Wi-Fi. And so I spent some time trying to figure out if I could log that information, like if there’s an app that logged that, and there is not. But, there is a program called If This, Then That, or an app. And so with that you can say “when my phone disconnects from Wi-Fi do something”, and you can set it to a specific Wi-Fi. So that was exciting.

Other problems that needed solving were:

* *Where to store the data*. Hilary mentions that a colleague was using [Airtable](https://airtable.com) (a kind of cloud-based spreadsheet/database) and decided to give it a try.
* *Indicating commute method*. Hilary created a system where she could send a text message containing a keyword about her commute method to a service that would then log the information to the table collecting the travel time data.
* *Multiple Wi-Fi connects*. Because her phone was constantly connecting and disconnecting from Wi-Fi at work, she had to define the “first connection to Wi-Fi at work” as meaning that she had arrived at work.
* *Sensing a Wi-Fi disconnect*. Hilary’s phone had to be “awake” in order to sense a Wi-Fi disconnect, which was generally the case, but not always. There was no way to force her phone to always be awake, but she knew that the system would send her a push notification when it had been triggered. Therefore, she would at least know that if she didn’t receive a push notification, then something had gone wrong.

Hilary mentions that much of the up front effort is important in order to avoid messy data manipulations later on. 

> HILARY: I think I’ll end up---I did not do the analysis yet but I’ll end up having to scrub the data. So I was trying to avoid manual data scrubbing, but I think I’m going to have to do it anyway.

Ultimately, it is impossible to avoid all data manipulation problems.


## Specifying the Data

What exactly are the data that we will be collecting? What are the covariates that we need to help us understand and model the commute times? Obvious candidates are

* The start time for the commute (date/time format, but see below)
* The end time for the commute (date/time)
* Indicator of whether we are going to work or going home (categorical)
* Commute method (categorical)

Hilary notes that from the start/end times we can get things like day of the week and time of day (e.g. via the [lubridate](https://cran.r-project.org/web/packages/lubridate/index.html) package). She also notes that her system doesn’t exactly produce date/time data, but rather a text sentence that includes the date/time embedded within. Thankfully, that can be systematically dealt with using simple string processing functions.

A question arises about whether a separate variable should be created to capture “special circumstances” while commuting. In the data analysis, we may want to exclude days where we know something special happened to make the commute much longer than we might have expected (e.g. we happened to see a friend along the way or we decided to stop at Walgreens). The question here is

> Are these special circumstances part of the natural variation in the commute time that we want to capture, or are they “one-time events” that are in some sense predictable?

A more statistical way of asking the question might be, do these special circumstances represent [*fixed or random variation*](https://simplystatistics.org/2018/07/23/partitioning-the-variation-in-data/)? If they are random and essentially uncontrollable events, then we would want to include that in the random portion of any model. However, if they are predictable (and perhaps controllable) events, then we might want to think of them as another covariate. 

While Hilary believes that she ultimately *does* have control over whether these time-consuming detours occur or not, she decides to model them as essentially random variation and that these events should be lumped in with the natural variation in the data.


## Specifying the Treatment

At this point in the discussion there is a question regarding what *effect* we are trying to learn about. The issue is that sometimes changes to a commute have to be made on the fly to respond to unexpected events. For example, if the public transportation system breaks down, you might have to go on foot.

> ROGER: Well it becomes like a compliance situation, right? Like you can say, do you want to know how long does it take when you take MUNI or how long does it take when you intend to take MUNI?

In this section I mention that it’s like a “compliance problem”. In clinical trials, for example when testing a new drug versus a placebo, it is possible to have a situation where people in the treatment group of the study are given the new drug but do not actually take it. Maybe the drug has side effects or is inconvenient to take. Whatever the reason, they are not complying with the protocol of the study, which states that everyone in the treatment group takes the new drug. The question then is whether you want to use the data from the clinical trial to understand the actual effect of the drug or if you want to understand the effect of telling someone to take the drug. The latter effect is often referred to as the *intention to treat* effect while the former is sometimes called the *complier average effect*. Both are valid effects to estimate and have different implications in terms of next steps.

In the context of Hilary’s problem, we want to estimate the average commute time for each commute method. However, what happens if Muni experiences some failure that requires altering the commute method? The potential “compliance issue” here is whether Muni works properly or not. If it does not, then Hilary may take some alternate route to work, even though she *intended* to take Muni. Whether Muni works properly or not is a kind of “post-treatment variable” because it’s not under the direct control of Hilary and its outcome is only known *after* she decides on which commute method she is going to take (i.e. the “treatment”). Now a choice must be made: Do we estimate the average commute time when taking Muni or the average commute time when she *intends* to take Muni, even if she has to divert to an alternate route?

Hilary and I both seem to agree that the intention to treat effect is the one we want to estimate in the commute time problem. The reason is that the estimation of this effect has direct implications for the thing that we have control over: choosing which commute method to use. While it might be interesting from a scientific perspective to know the average commute time when taking Muni, regardless of whether we intended to take it or now, we have no control over the operation of Muni on any given day.


## Starting from the End

I ask Hilary, suppose we have the data, what might we do with it? Specifically, suppose that we estimate for a given commute method that the average time is 20 minutes and the standard deviation is 5 minutes. What “intervention” would that lead us to take? What might we do differently from before when we had no systematically collected data?

Hilary answers by saying that we can designate a time to leave work based on the mean and standard deviation. For example, if we have to be at work at 9am we might leave at 8:35am (mean + 1 standard deviation) to ensure we’ll be arrive at 9am most of the time. In her answer, Hilary raises an important, but perhaps uncomfortable, consideration:

> HILARY: I think in a completely crass world for example, I would choose different cutoffs based on the importance of a meeting. And I think people do this. So if you have a super important meeting, this is like a career-making meeting, you leave like an hour early.... And so, there you’re like “I am going to do three standard deviations above the mean” so...it’s very unlikely that I’ll show up outside of the time I predicted. But then if it’s like a touch-base with someone where you have a really strong relationship and they know that you value their time, then maybe you only do like one standard deviation.

Later I mention one implication for statistical modeling:

> Roger: Well and I feel like...the discussion of the distribution is interesting because it might come down to like, what do you think the tail of the distribution looks like? So what’s the worst case? Because if you want to minimize the worst case scenario, then you really, really need to know like what that tail looks like.

Thinking about what the data will ultimately be used for raises two important statistical considerations:

* We should think about the extremes/tails of the distribution and develop cutoffs that determine what time we should leave for work.
* The cutoffs at the tail of the distribution might be dependent on the “importance” of the first meeting of the day, suggesting the existence of a cost function that quantifies the importance of arriving on time.

Hilary raises a hard truth, which is that not everyone gets the same consideration when it comes to showing up on time. For an important meeting, we might allow for “three standard deviations” more than the mean travel time to ensure some margin of safety for arriving on time. However, for a more routine meeting, we might just provide for one standard deviation of travel time and let natural variation take its course for better or for worse.


## Statistical Modeling Considerations

I mention that thinking about our imaginary data in terms of “mean” and “standard deviation” implies that the data have a distribution that is akin to a Normal distribution. However, given that the data will consist of travel times, which are always positive, a Normal distribution (which allows positive and negative numbers) may not be the most appropriate. Alternatives are the Gamma or the log-Normal distribution which are strictly positive. I mention that the log-Normal distribution allows for some fairly extreme events, to which Hilary responds that such behavior may in fact be appropriate for these data due to the near-catastrophic nature of Muni failures (San Francisco residents can feel free to chime in here).

From the previous discussion on what we might do with this data, it’s clear that the right tail of the distribution will be important in this analysis. We want to know what the “worst case scenario” might be in terms of total commute time. However, by its very nature, extreme data are rare, and so there will be very few data points that can be used to inform the shape of the distribution in this area (as opposed to the middle of the distribution where we will have many observations). Therefore, it’s likely that our choice of model (Gamma, log-Normal, etc.) will have a big influence on the predictions that we make about commute times in the future.

## Study Design Considerations

Towards the end I ask Hilary how much data is needed for this project? However, before asking I should have discussed the nature of the study itself:

* Is it a fixed study designed to answer a specific question (i.e. what is the mean commute time?) within some bound of uncertainty? Or
* Is it an ongoing study where data will be continuously collected and actions will be continuously adapted as new data are collected

Hilary suggests that it is the latter and that she will simply collect data and make decisions as she goes. However, it’s clear that the time frame is not “forever” because the method of data collection is not zero cost. Therefore, at some point the costs of collecting data will likely be too great in light of any perceived benefit.


## Discussion

What have we learned from all of this? Most likely, the problem of estimating commute times is *not* relevant to everybody. But I think there are aspects of the process described above that illustrate how the data analytic process works before data collection begins (yes, data analysis includes parts where there are no data). These aspects can be lifted from this particular example and generalized to other data analyses. In this section I will discuss some of these aspects and describe why they may be relevant to other analyses.


### Personal Interest and Knowledge 

Hilary makes clear that she is very personally interested in this problem and in developing a solution. She wants to apply any knowledge learned from the data to her everyday life. In addition, she used her knowledge of Baltimore geography (from having lived there previously) to challenge my “mental data analysis”. 

Taking a strong personal interest in a problem is not always an option, but it can be very useful. Part of the reason is that it can allow you to see the “whole problem” and all of its facets without much additional effort. An uninterested person can certainly learn all the facets of a problem, but it will seem more laborious. If you are genuinely interested in the subject of a problem, then you will be highly motivated to learn everything about that problem, which will likely benefit you in the data analysis. To the extent that data analysis is a *systems problem* with many interacting parts, it helps to learn as much as possible about the system. Being *interested* in knowing how the system works is a key advantage you can bring to any problem.

In my own teaching, I have found that students who are keenly interested in the problems they’re working on often do well in the data analysis. Partly, this is because they are more willing to dig into the nitty gritty of the data and modeling and to uncover small details that others may not find. Also, students with a strong interest often have strong expectations about what the data should show. If the data turn out to be different from what they are expecting, that surprise is often an important experience, sometimes even delightful. Students with a more distant relationship with the topic or the data can never be surprised because they have little in the way of expectations.


### Problem Framing

From the discussion it seems clear that we are interested in both the characteristics of different commute methods and the variability associated with individual commute methods. Statistically, these are two separate problems that can be addressed through data collection and analysis. As part of trying to frame the problem, we iterate through a few different scenarios and questions.

One concept that we return to periodically in the discussion is the idea that every question has associated with it a potential intervention. So when I ask “What is the variability in my commute time”, a potential intervention is changing the time when I leave home. Another potential intervention is rescheduling my first meeting of the day. Thinking about questions in terms of their potential interventions can be very useful in prioritizing which questions are most interesting to ask. If the potential intervention associated with a question is something you do not have any control over, then maybe that question is not so interesting for you to ask. For example, if you do not control your own schedule at work, then “rescheduling the first meeting of the day” is not an option for you. However, you may still be able to control when you leave home.

With the question “How long does it take to commute by Muni?” one might characterize the potential intervention as “Taking Muni to work or not”. However, if Muni breaks down, then that is out of your control and you simply cannot take that choice. A more useful question then is “How long does it take to commute when I *choose* to take Muni?” This difference may seem subtle, but it does imply a different analysis and is associated with a potential intervention that is completely controllable. I may not be able to take Muni everyday, but I can definitely *choose* to take it everyday.

The last point I want to make here is related to the concept of taking a personal interest in a problem. If a data analysis problem can be framed in such a manner that it becomes more personally interesting, then perhaps that’s the route that should be taken, if at all possible. Often, we think that there is "one true way" to approach a problem or ask a question. But usually, there are a variety of different approaches and you should try to take the one that seems most interesting *you*.


### Fixed and Random Variation

Deciding what is fixed variation and what is random is important at the design stage because it can have implications for data collection, data analysis, and the usefulness of the results. Sometimes this discussion can get very abstract, resulting in questions like "What is the meaning of ‘random’?”. It’s important not to get too bogged down in philosophical discussions (although the occasional one is fine). But it’s nevertheless useful to have such a discussion so that you can properly model the data later. 

Classifying everything as "random" is a common crutch that people use because it gives you an excuse to not really collect much data. This is a cheap way to do things, but it also leads to data with a lot of variability, possibility to the point of not even being useful. For example, if we only collect data on commute times, and ignored the fact that we have multiple commute methods, then we might see a bimodal distribution in the commute time data. But that mysterious bi-modality could be explained by the different commute methods, a *fixed* effect that is easily controlled. Taking the extra effort to track the commute method (for example, via Hilary’s text message approach) along with the commute time could dramatically reduce the residual variance in the data, making for more precise predictions.

That said, capturing every variable is often not feasible and so choices have to made. In this example, Hilary decided not to track whether she wandered into Walgreens or not because that event did have a random flavor to it. Practically speaking, it would be better to account for the fact that there may be an occasional random excursion into Walgreens rather than to attempt to control it every single time. This choice also simplifies the data collection system.  


### Sketch Models

When considering what to do with the data once we had it, it turned out that mitigating the worst case scenario was a key consideration. This translated directly into a statistical model that potentially had heavy tails. At this point, it wasn’t clear what that distribution would be, and it isn’t clear whether the data would be able to accurately inform the shape of the tail’s distribution.  That said, with this statistical model in mind we can keep an eye on the data as they come in and see how they shape up. Further, although we didn’t got through the exercise, it could be useful to estimate how many observations you might need in order to get a decent estimate of any model parameters. Such an exercise cannot really be done if you don’t have a specific model in mind.

In general, having a specific statistical model in mind is useful because it gives you a sense of *what to expect*. If the data come in and look substantially different from the distribution that you originally considered, then that should lead you to ask *why do the data look different*? Asking such a question may lead to interesting new details or uncover aspects of the data that hadn’t been considered before. For example, I originally thought the data could be modeled with a Gamma distribution. However, if the data came in and there were many long delays in Hilary’s commute, then her log-Normal distribution might seem more sensible. Her choice of that distribution from the beginning was informed by her knowledge of public transport in San Francisco, about which I know nothing.

## Summary

I have spoken with people who argue that are little in the way of generalizable concepts in data analysis because every data analysis is uniquely different from every other. However, I think this experience of observing myself talk with Hilary about this small example suggests to me that there are some general concepts. Things like gauging your personal interest in the problem could be useful in managing potential resources dedicated to an analysis, and I think considering fixed and random variation is important aspect of any data analytic design or analysis. Finally, developing a sketch (statistical) model before the data are in hand can be useful for setting expectations and for setting a benchmark for when to be surprised or skeptical. 

One problem with learning data analysis is that we rarely, as students, get to observe the thought process that occurs at the early stages. In part, that is why I think many call for more experiential learning in data analysis, because the only way to see the process is to do the process. But I think we could invest more time and effort into recording some of these processes, even in somewhat artificial situations like this one,  in order to abstract out any generalizable concepts and advice. Such summaries and abstractions could serve as useful data analysis texts, allowing people to grasp the general concepts of analysis while using the time dedicated to experiential learning for studying the unique details of their problem.
