---
title: 'Some roadblocks to the broad adoption of machine learning and AI '
author: ''
date: '2017-11-27'
slug: some-roadblocks-to-the-broad-adoption-of-machine-learning-and-ai
categories: []
tags: []
---

I read two blog posts on AI over the Thanksgiving break. One was a nice post discussing the challenges for AI in medicine by [Luke Oakden-Rayder](https://lukeoakdenrayner.wordpress.com/2016/11/27/do-computers-already-outperform-doctors/) and the other was about the need for increased focus on basic research in AI motivated by AlphaGo by [Tim Harford](http://timharford.com/2017/11/what-alphago-zero-teaches-us-about-whats-going-wrong-with-innovation/). 

I've had a lot of interactions with people lately who want to take advantage of machine learning/AI in their research or business. Despite the excitement around AI and the exciting results we see from sophisticated research teams almost daily - the actual extent and application of AI is much smaller. In fact, most AI usually ends up [being humans in the end](https://twitter.com/hmason/status/934046836284850176).

While the promise of AI/ML has never been clearer, there are still only a handful of organizations that are using the technology in a major way. Sometimes even apparent success stories [turn out to be problematic](https://www.statnews.com/2017/09/05/watson-ibm-cancer/).

I was thinking about the lifecycle of developing an AI application. I have defined this type of application previously as having [three parts](https://simplystatistics.org/2017/01/19/what-is-artificial-intelligence/): (i) an interface to humans, (ii) a data set, and (iii) an algorithm for turning the data into interactions. I started thinking about the extension of this idea to the development of an AI application and all the steps involved. Then I started thinking about potential barriers. 

![](https://user-images.githubusercontent.com/1571674/33272622-b2b5687e-d358-11e7-87c7-df633e853e09.png)


To develop an AI application you need a few things: 

0. A group of people who are willing to let you have their data. 
1. A technology for data capture from people (this could be as simple as a website, or an Echo, or as complex as a robot). 
2. A data storage mechanism for collecting the raw data from this input (this could just be a database)
3. A set of algorithms and scripts for organizing the data for analysis. 
4. A definition of the problem you'd like to solve in quantitative terms - usually generated through exploratory analysis. 
5. An algorithm trained on a [massive data set](https://simplystatistics.org/2017/05/31/deeplearning-vs-leekasso/) or at minimum trained with a [good prior or expert knowledge](https://beamandrew.github.io/deeplearning/2017/06/04/deep_learning_works.html).
6. A way to structure the responses and provide feedback either to the original users of your application or to other users (researchers or executives at a company for example).
7. The pipeline to take those formatted responses and return them to the user in a way that they can take advantage of. 

I think that a lot of attention is focused on step 6 and how costly talent is for [designing AI algorithms](https://www.nytimes.com/2017/10/22/technology/artificial-intelligence-experts-salaries.html?_r=0). I think for the big players where a lot of the other steps have been solved this is for sure the limiting factor and it is no wonder that the talent war is fierce. 

But I think that for 95% of organizations - whether they be researchers, businesses, or individuals the problem isn't in developing the algorithm. A random forest can be fit with one line of R code and while it won't be as accurate as an expertly trained neural network on a gigantic training data set, it will be really useful. 

So I think that most of the roadblocks to the democratization of AI are actually in the other steps and in particular the "glue" between the steps. For example: 

* __Getting access to people's data (Step 0)__ - It is very hard, even for researchers, to get access to health information if you aren't DeepMind and Google. It can take years to deal with the bureaucracy of getting access to even simple data sets. 
* __Having the infrastructure to capture data (Step 1)__ if you aren't a major player you might not even be capturing complete data from people visiting your website, let alone sensors, images, text, and everything else you would want to do to perform AI. 
* __Storing data centrally (Step 2)__ In almost all of the organizations I've talked to data are scattered and managed across multiple systems and with different protocols. Just knowing where and what the data are can be a multi-month process. 
* __Tidying the data (Step 3)__ There is an entire industry of data scientists built to tackle this problem, but if you can't find the data or if the data isn't stored centrally (Step 2), then this can be delayed. Even if it isn't, there is rarely a standardized data tidying pipeline even in places that only have one data type - so that makes it hard to do the next step. 
* __Defining a question AI can answer (Step 4)__ I would venture to say this is maybe one of the biggest bottlenecks. To create an AI system as they currently exist a human needs to (i) define a concrete scientific/business problem, (ii) create a quantitative definition of that model, and (iii) define an objective function to optimize. This process can take a huge amount of expert/knowledgeable work. 
* __Fitting the algorithm (Step 5)__ While I think there are some commodity technologies that work well here - streamlining the process from modeling to implementation is probably where a lot of AI applications could use work. This can take a while to just get the model set up even after you know exactly what you want to fit. 
* __Making the model output mean something to humans (Step 6)__ Even in the cases where we ideally want the computer to do everything (self driving cars) we'd still like to summarize the choices the AI might make so humans can decide if they are ethical and how to regulate those decisions. But there is still a whole field of AI that is interpretable that needs to be developed and disseminated. So even places that have models built often struggle to communicate the results in a way that they can be used. 
* __Automating the use of AI models (Step 7)__ Even if you get past all those other hurdles and have a working, interpretable AI model, you need humans to use it. Whether that is a doctor using the output of a radiology scan to make diagnostic/treatment decisions, or a car that can actually drive, the last step of actually making the model useful is still a major barrier to many projects. 


I think a lot of these barriers come down to the fact that for the most part we don't have strict standards for data capture/tidying/organization/use that are used across organizations. We also don't have the "glue" steps between each of these components automated. So while I think that the algorithms for AI will continue to develop rapidly in accuracy and range, for organizations to keep up they will need a lot more than just a way to fit the latest model. The reason that I think some organizations are leaping so far ahead is that they already have spent a huge amount of time thinking about all the Steps but the model fitting, so now they can focus their time/energy/resources on making algorithms do things we didn't imagine were possible. 



