---
title: How to create an AI startup - convince some humans to be your training set
author: Jeff Leek
comments: true
slug: "humans-as-training-set"
date: 2016-03-30
---

The latest trend in data science is [artificial intelligence](https://en.wikipedia.org/wiki/Artificial_intelligence). It has been all over the news for tackling a bunch of interesting questions. For example: 

* [AlphaGo](https://deepmind.com/alpha-go.html) [beat](http://www.techrepublic.com/article/how-googles-deepmind-beat-the-game-of-go-which-is-even-more-complex-than-chess/) one of the top Go players in the world in what has been called a major advance for the field. 
* Microsoft created a chatbot [Tay](http://techcrunch.com/2016/03/23/microsofts-new-ai-powered-bot-tay-answers-your-tweets-and-chats-on-groupme-and-kik/) that ultimately [went very very wrong](http://www.bbc.com/news/technology-35902104).
* Google and a number of others are working on [self driving cars](https://www.google.com/selfdrivingcar/).
* Facebook is creating an artificial intellgence based [virtual assistant called M](http://www.engadget.com/2015/08/26/facebook-messenger-m-assistant/)

Almost all of these applications are based (at some level) on using variations on [neural networks and deep learning](http://neuralnetworksanddeeplearning.com/). These models are used like any other statistical or machine learning model. They involve a prediction function that is based on a set of parameters. Using a training data set, you estimate the parameters. Then when you get a new set of data, you push it through the prediction function using those estimated parameters and make your predictions. 

So why does deep learning do so well on problems like voice recognition, image recognition, and other complicated tasks? The main reason is that these models involve hundreds of thousands or millions of parameters, that allow the model to capture even very subtle structure in large scale data sets. This type of model can be fit now because (a) we have huge training sets (think all the pictures on Facebook or all voice recordings of people using Siri) and (b) we have fast computers that allow us to estimate the parameters. 

Almost all of the high-profile examples of "artificial intelligence" we are hearing about involve this type of process. This means that the machine is "learning" from examples of how humans behave. The algorithm itself is a way to estimate subtle structure from collections of human behavior. 

The result is that the typical trajectory for an AI business is. 

1. Get a large collection of humans to perform some repetitive but possibly complicated behavior (play thousands of games of Go, or answer requests from people on Facebook messenger, or label pictures and videos, or drive cars.)
2. Record all of the actions the humans perform to create a training set. 
3. Feed these data into a statistical model with a huge number of parameters - made possible by having a huge training set collected from the humans in steps 1 and 2. 
4. Apply the algorithm to perform the repetitive task and cut the humans out of the process. 

The question is how do you get the humans to perform the task for you? One option is to collect data from humans who are using your product (think Facebook image tagging). The other, more recent phenomenon, is to farm the task out to a large number of contractors (think [gig economy](http://www.theguardian.com/commentisfree/2015/jul/26/will-we-get-by-gig-economy) jobs like driving for Uber, or responding to queries on Facebook). 

The interesting thing about the latter case is that in the short term it produces a market for gigs for humans. But in the long term, by performing those tasks, the humans are putting themselves out of a job. This played out in a relatively public way just recently with a service called [GoButler](http://www.fastcompany.com/3058060/this-is-what-it-feels-like-when-a-robot-takes-your-job) that used its employees to train a model and then replaced them with that model. 


It will be interesting to see how many areas of employment this type of approach takes over. It is also interesting to think about how much value each task you perform for a company like that is worth to the training set. It will also be interesting if there is a legal claim for the gig workers at these companies to make that their labor helped "create the value" at the companies that replace them. 
