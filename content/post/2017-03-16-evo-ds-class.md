---
title: The levels of data science class
author: Jeff Leek
comments: true
slug: "evo-ds-class"
date: 2017-03-16
---

In a recent post, Nathan Yau [points to a comment](http://flowingdata.com/2013/03/12/data-hackathon-challenges-and-why-questions-are-important/) by Jake Porway about data science hackathons. They both say that for data science/visualization projects to be successful you have to start with an important question, not with a pile of data. This is the [problem forward not solution backward](http://simplystatistics.org/2013/05/29/what-statistics-should-do-about-big-data-problem-forward-not-solution-backward/) approach to data science and big data. This is the approach also advocated in the really nice piece on teaching data science by [Stephanie and Rafa](https://arxiv.org/abs/1612.07140)

I have adopted a similar approach in the data science class here at Hopkins, largely inspired by Dan Meyer's [patient problem solving for middle school math class](https://www.ted.com/talks/dan_meyer_math_curriculum_makeover/transcript). So instead of giving students a full problem description I give them project suggestions like: 

* __Option 1__: Develop a prediction algorithm for identifying and classifying users that are trolling or being mean on Twitter. If you want an idea of what I’m talking about just look at the responses to any famous person’s tweets.
* __Option 2__:  Analyze the traffic fatality data to identify any geographic, time varying, or other characteristics that are associated with traffic fatalities: https://www.transportation.gov/fastlane/2015-traffic-fatalities-data-has-just-been-released-call-action-download-and-analyze.
* __Option 3__: Develop a model for predicting life expectancy in Baltimore down to single block resolution with estimates of uncertainty. You may need to develop an approach for “downsampling” since the outcome data you’ll be able to find is likely aggregated at the neighborhood level (http://health.baltimorecity.gov/node/231).
* __Option 4__: Develop a statistical model for inferring the variables you need to calculate the Gail score (http://www.cancer.gov/bcrisktool/) for a woman based on her Facebook profile. Develop a model for the Gail score prediction from Facebook and its uncertainty. You should include estimates of uncertainty in the predicted score due to your inferred variables.
* __Option 5__: Potentially fun but super hard project. develop an algorithm for self-driving car using the training data: http://research.comma.ai/. Build a model for predicting at every moment what direction the car should be going, whether it should be signalling, and what speed it should be going. You might consider starting with a small subsample of the (big) training set.

Each of these projects shares the characteristic that there is an interesting question - but the data may or may not be available. If it is available it may or may not have to be processed/cleaned/organized. Moreover, with the data in hand you may need to think about how it was collected or go out and collect some more data. This kind of problem is inspired by this quote from Dan's talk - he was talking about math but it could easily have been data science: 

> Ask yourselves, what problem have you solved, ever, that was worth solving, where you knew knew all of the given information in advance? Where you didn’t have a surplus of information and have to filter it out, or you didn’t have insufficient information and have to go
find some?

I realize though that this is advanced data science. So I was thinking about the levels of data science course and how you would build up a curriculum. I came up with the following courses/levels and would be interested in what others thought. 

* __Level 0: Background__: Basic computing, some calculus with a focus on optimization, basic linear algebra. 
* __Level 1: Data science thinking__: How to define a question, how to turn a question into a statement about data, how to identify data sets that may be applicable, experimental design, critical thinking about data sets. 
* __Level 2: Data science communication__: Teaching students how to write about data science, how to express models qualitatively and in mathematical notation, explaining how to interpret results of algorithms/models. Explaining how to make figures. 
* __Level 3: Data science tools__: Learning the basic tools of R, loading data of various types, reading data, plotting data. 
* __Level 4: Real data__: Manipulating different file formats, working with "messy" data, trying to organize multiple data sets into one data set. 
* __Level 5: Worked examples__: Use real data examples, but work them through from start to finish as case studies, don't make them easy clean data sets, but have a clear path from the beginning of the problem to the end. 
* __Level 6: Just the question__: Give students a question where you have done a little research to know that it is posisble to get at least some data, but aren't 100% sure it is the right data or that the problem can be perfectly solved. Part of the learning process here is knowing how to define success or failure and when to keep going or when to quit. 
* __Level 7: The student is the scientist__: Have the students come up with their own questions and answer them using data. 


I think that a lot of the thought right now in biostatistics has been on level 3 and 4 courses. These are courses where we have students work with real data sets and learn about tools. To be self-sufficient as a data scientist it is clear you need to be able to work with real world data. 
But what Jake/Nathan are referring to is level 5 or level 6 - cases where you have a question but the data needs a ton of work and may not even be good enough without collecting new information. Jake and Nathan have perfectly identified the ability to translate murkey questions into data answers as the most valuable data skill. If I had to predict the future of data courses I would see them trending in that direction.

