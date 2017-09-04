---
title: Deep Dive - Y. Ogata's Residual Analysis for Point Processes
author: Roger Peng
date: '2017-09-04'
slug: deep-dive-ogata
---

For a long time now---actually ever since we started the blog---I've wanted to do a series of deep dives into specific papers that I thought were great. Clearly, it's taken a bit longer than I expected, but I figure better late than never. Actually, that's become a bit of a [theme for my work these days](https://twitter.com/rdpeng/status/900699027108282368)! 

One problem I have with much academic writing on the Internet is that I feel like most of it is devoted to (1) promoting one's own work; or (2) identifying weaknesses in others' work. Now, there's absolutely nothing wrong with either activity---both are essential to the functioning of science. But I think there's room for more activity. In particular, I think putting up examples of good work, and *explaining why they are good*, is an important part of producing more good work in the community. I hope to make this entry the first in a series, but we'll see if I can sustain it. Seeing as this is a statistics/data science blog most of the papers will be statistically oriented. But I may try to throw in a few biomedica/environmental papers if I can.

The first paper I want to write about it is one that had a huge influence on me when I was a grad student, many year ago, doing research on point process models. This is Yosihiko Ogata's paper [Statistical models for earthquake occurrences and residual analysis for point processes](http://amstat.tandfonline.com/doi/abs/10.1080/01621459.1988.10478560), originally published in the *Journal of the American Statistical Association* in 1988 (there is a [pdf here](http://bemlar.ism.ac.jp/zhuang/Refs/Refs/ogata1988.pdf)). I haven't picked up this paper in quite some time as I no longer do research in point process models, but it remains remarkable in my mind. So let's get into it.

## A Road Map for Data Analysis

One immediately important aspect of this paper is that it presents a road map for how to apply point process models to real data, using a formal likelihood-based inference framework. This may sound unremarkable, but in the point process area, there was a lot of focus on (1) theoretical properties of various estimators; and (2) ad hoc fitting of models to data via 2nd-order methods. A lot of the methodologies in point process modeling were translated from time series, which involved a lot of 2nd order correlation methods. Likelihood methods were far less common, in part because they involved substantial computation. For people who are interested in applying point process models to data to make scientific inferences, I think this is still a great paper to read. In fact, I think it's a great paper to read if you're interested in data analysis at all, for any kind of model. 

## Scientific Theory

Ogata's paper is focused on a theory of earthquakes that posits that there are main shocks followed by aftershocks. After a long decay in aftershock occurrences, there is a period of "quiescence", after which there are foreshocks, followed by another main shock. The problem is, of course, that nature is not kind enough to label all these shocks as "main shock", "aftershock" and "foreshock". We need a model to help us infer which is which. The primary goal lying in the background is predicting the next main shock.

Ogata reviews some of the fundmental theory for earthquakes. There's the famous Gutenberg-Richter law (equation 2) which explains the distribution of earthquake magnitudes, and the modified Omori law (equation 1) which explains the frequency of aftershocks. Given these two laws, Ogata puts them together in an "epidemic-type" conditional intensity model (equation 10). This model can be thought of as describing the instantaneous rate at which earthquakes occur at any given time. These kinds of models would later be described as epidemic-type aftershock sequence, or ETAS, models. 

The bottom line here is that the ultimate model presented in equation 17 of th paper is rooted in formally hypothesized theories of how earthquakes work along with interpretable parameters. These theories may or may not be correct, but they are presented and modeled in a manner where we can determine whether evidence in the data favor them or not. In other words, we have a good chance of knowing whether the theory/model fits the data or not. This aspect is key---what's important is not whether your model is correct or not, but whether you *know* if your model is correct or not. Not every field is so lucky to have parsimoniously specified physical models to go on. But the truth is, if the models are incorrect, or do not fit the data, then the fact that they are parsimonious is not that helpful. Nevertheless, it's worth trying to develop a model that we can understand, and which will teach us something about the underlying phenomena, in this case how earthquakes occur.

## The Data

Before getting into how to fit the model to data, Ogata presents the data---literally. This may seem quaint in today's big data era, but Figure 1 and Table 1 show all the data. Table 1 takes 2 pages just to print out (there was not supplementary material back then). But there's something very visceral and satisfying about behing able to flip through the data like that. I feel like I notice details that I never would have noticed in a single plot or a table of summary statistics. The dataset is 483 earthquakes with magnitude 6 or more from 1885--1980. 

Figures 2 and 3 show more summaries of the data. Figure 3 in particular suggests a reasonable adherence to the Gutenberg-Richter law of magnitudes (i.e. straight line on a log-plot indicating an exponential distribution). Figures 4, 5, and 6 are designed to show whether the earthquake process is purely random (Poisson) or exhibits some clustering behavior. Suffice it to say that all plots show that there is a lot of clustering (non-Poisson). Under the Poisson assumption, FIgure 4 should be a straight line, FIgure 5 would follow the solid line, and Figure 6 would just be a horizontal scatter (without the little spike up near zero). 

This section is short, but Ogata let's the data do some talking. He couples the literal presentation of the data with some summary statistics, some of which are highly specific to point process data. But ultimately, he takes a light touch to the summarization and tries to present as many angles as feasible/useful to the reader. This is one of my favorite aspects of this paper---the careful curation of how the data are presented so that you might best assess how the data eventually do or do not fit the hypothesized models.

## The Modeling

Section 3.2 shows the log-likelihood of the model and how we can compare models using AIC. There's nothing super novel here, except that maximizing the likelihood must have been a pain in the butt at the time.

## Residual Analysis

Secion 3.3 is the heart and soul of this paper, in my view. Ogata explains that while AIC can be useful for comparing a set of models, it's not useful for determining whether there is a better model *outside* that set. Here, we need the point process equivalent of residual analysis for regression models. The problem is that at the time there really wasn't a settled understanding of what residual analysis was for point process models (or even what constituted a "residual"). 

Ogata uses a theoretical result of Papangelou that says that you can shift the time points of the earthquake occurrences in a 1-to-1 manner dictated by the model so that the rescaled time points follow a Poisson process with rate 1. A Poisson process with constant rate 1 is the "white noise" of point process modeling. So, in other words, if your model captures the main features of the data, then the rescaled time points, which we will call the *residuals*, should essentially be noise. The nice thing about this approach is that there are already a bunch of tests designed to determine if a point process is Poisson or not. So we can apply that battery of tests to the residuals to see if we are missing anything. Furthermore, if we detect anything unusual in the residuals, we can easily map them back to the original data to see what was going on.

Figures 9-15 look at the residuals carefully and most indicate that the residuals look Poisson. However, Figure 13(a) suggests a violation of the variance assumption, so Figure 15(3a) is used to diagnose that problem. It seems there was an unusual "swarm" of earthquakes in 1938---when these are removed, the residuals appear Poisson. Of course, the model will need to be re-examined in light of its inability to model this "swarm", but the point is that these residual methods allowed us to easily identify this "outlying" group of earthquakes.

In this section, Ogata develops an entirely new tool for assessing point process models and shows how it can be used to identify interesting aspects of the data that are not capture by existing theories or models, even after evaluating a set of models with AIC. The thoughtful treatment of residuals and the visualization of how they do or do not adhere to the Poisson assumption is important for allowing the reader to evaluate for themselves the adequacy of the model. 

## Summary

The remainder of the paper is an assessment of the theory of "quiescence", which I will skip as this entry is long enough. In summary, I think this is a great applied statistics and data analysis paper. Some of the things that stand out to me are

* There is a strong reliance on the theory of earthquakes, and Ogata constantly references those theories in each section as he evaluates the data. In other words, the point of the analysis is to develop **evidence for or against the theory**. Note that there's very little emphasis on formal hypothesis testing. Nevertheless, Ogata puts the reader in a position where they can judge for themselves how well the models fit the data.
* Ogata goes through great lengths to present the data, plainly yet informatively. This is not a data dump. I think the reason he can present the data in this informative manner is again because he is guided by the theory and therefore has a prioritization of what is or is not important to show.
* In a way, Ogata buries the lede in this paper. He waits until Section 3.3 to introduce the idea of residual analysis for point process models, which in reality was a totally new applied statistics method. He could have written an entire paper about that approach. But ultimately, I think in his mind this paper was about earthquakes and earthquake models. Statisticians routinely have to decide whether a paper is about the method or the application---there is not right or wrong answer. Regardless, Ogata didn't let the novelty of the method get in the way of answering the primary question.











