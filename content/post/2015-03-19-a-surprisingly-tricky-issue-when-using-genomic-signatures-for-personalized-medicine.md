---
id: 3946
title: A surprisingly tricky issue when using genomic signatures for personalized medicine
date: 2015-03-19T13:06:32+00:00
author: Jeff Leek
al2fb_facebook_link_id:
  - 136171103105421_783775878344937
al2fb_facebook_link_time:
  - 2015-03-19T17:06:39+00:00
al2fb_facebook_link_picture:
  - post=http://simplystatistics.org/wp-content/uploads/2015/03/Screen-Shot-2015-03-19-at-12.58.03-PM-300x227.png
pe_theme_meta:
  - 'O:8:"stdClass":2:{s:7:"gallery";O:8:"stdClass":3:{s:2:"id";s:2:"-1";s:5:"width";s:0:"";s:6:"height";s:0:"";}s:5:"video";O:8:"stdClass":1:{s:2:"id";s:2:"-1";}}'
dsq_thread_id:
  - 3609457811
categories:
  - Uncategorized
slug: "a-surprisingly-tricky-issue-when-using-genomic-signatures-for-personalized-medicine"
---
My student Prasad Patil has a really nice paper that [just came out in Bioinformatics](http://bioinformatics.oxfordjournals.org/content/early/2015/03/18/bioinformatics.btv157.full.pdf?keytype=ref&ijkey=loVpUJfJxG2QjoE) ([preprint](http://biorxiv.org/content/early/2014/06/06/005983) in case paywalled). The paper is about a surprisingly tricky normalization issue with genomic signatures. Genomic signatures are basically statistical/machine learning functions applied to the measurements for a set of genes to predict how long patients will survive, or how they will respond to therapy. The issue is that usually when building and applying these signatures, people normalize across samples in the training and testing set.

An example of this normalization is to mean-center the measurements for each gene in the testing/application stage, then apply the prediction rule. The problem is that if you use a different set of samples when calculating the mean you can get a totally different prediction function. The basic problem is illustrated in this graphic.

&nbsp;

[<img class="aligncenter wp-image-3947 size-medium" src="http://simplystatistics.org/wp-content/uploads/2015/03/Screen-Shot-2015-03-19-at-12.58.03-PM-300x227.png" alt="Screen Shot 2015-03-19 at 12.58.03 PM" width="300" height="227" srcset="http://simplystatistics.org/wp-content/uploads/2015/03/Screen-Shot-2015-03-19-at-12.58.03-PM-300x227.png 300w, http://simplystatistics.org/wp-content/uploads/2015/03/Screen-Shot-2015-03-19-at-12.58.03-PM-260x197.png 260w" sizes="(max-width: 300px) 100vw, 300px" />](http://simplystatistics.org/wp-content/uploads/2015/03/Screen-Shot-2015-03-19-at-12.58.03-PM.png)

&nbsp;

This seems like a pretty esoteric statistical issue, but it turns out that this one simple normalization problem can dramatically change the results of the predictions. In particular, we show that the predictions for the same patient, with the exact same data, can change dramatically if you just change the subpopulations of patients within the testing set. In this plot, Prasad made predictions for the exact same set of patients two times when the patient population varied in ER status composition. As many as 30% of the predictions were different for the same patient with the same data if you just varied who they were being predicted with.

[<img class="aligncenter wp-image-3948 size-full" src="http://simplystatistics.org/wp-content/uploads/2015/03/Screen-Shot-2015-03-19-at-1.02.25-PM.png" alt="Screen Shot 2015-03-19 at 1.02.25 PM" width="494" height="277" srcset="http://simplystatistics.org/wp-content/uploads/2015/03/Screen-Shot-2015-03-19-at-1.02.25-PM-300x168.png 300w, http://simplystatistics.org/wp-content/uploads/2015/03/Screen-Shot-2015-03-19-at-1.02.25-PM.png 494w" sizes="(max-width: 494px) 100vw, 494px" />](http://simplystatistics.org/wp-content/uploads/2015/03/Screen-Shot-2015-03-19-at-1.02.25-PM.png)

&nbsp;

This paper highlights how tricky statistical issues can slow down the process of translating ostensibly really useful genomic signatures into clinical practice and lends even more weight to the idea that precision medicine is a statistical field.
