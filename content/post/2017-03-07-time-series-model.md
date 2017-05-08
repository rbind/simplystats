---
title: Model building with time series data
author: Roger Peng
slug: "time-series-model"
date: 2017-03-07
---

A nice post by Alex Smolyanskaya over the [Stitch Fix blog](http://multithreaded.stitchfix.com/blog/2017/02/28/whats-wrong-with-my-time-series/) about some of the unique challenges of model building in a time series context:

> Cross validation is the process of measuring a model’s predictive power by testing it on randomly selected data that was not used for training. However, autocorrelations in time series data mean that data points are not independent from each other across time, so holding out some data points from the training set doesn’t necessarily remove all their associated information. Further, time series models contain autoregressive components to deal with the autocorrelations. These models rely on having equally spaced data points; if we leave out random subsets of the data, the training and testing sets will have holes that destroy the autoregressive components.
