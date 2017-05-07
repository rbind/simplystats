---
id: 2551
title: Oh no, the Leekasso....
date: 2014-03-12T09:38:31+00:00
author: Jeff Leek
al2fb_facebook_link_id:
  - 136171103105421_10201773819846815
al2fb_facebook_link_time:
  - 2014-03-12T13:38:39+00:00
al2fb_facebook_link_picture:
  - post=http://simplystatistics.org/wp-content/uploads/2014/01/LeekassoLasso-300x300.png
dsq_thread_id:
  - 2414114796
categories:
  - Uncategorized
slug: "oh-no-the-leekasso"
---
An astute reader (Niels Hansen, who is visiting our department today) caught a bug in [my code](https://github.com/jtleek/leekasso) on Github for the Leekasso. I had:

_lm1 = lm(y ~ leekX)_
  
_predict.lm(lm1,as.data.frame(<wbr />leekX2))_

Unfortunately, this meant that I was getting predictions for the training set on the test set. Since I set up the test/training sets the same, this meant that I was actually getting training set error rates for the Leekasso. Neils Hansen noticed the bug and reran the fixed code with this term instead:

_lm1 = lm(y ~ ., data = as.data.frame(leekX))_
  
_predict.lm(lm1,as.data.frame(<wbr />leekX2))_

He created a heatmap subtracting the average accuracy of the Leekasso/Lasso and showed they are essentially equivalent.

<a href="http://simplystatistics.org/2014/03/12/oh-no-the-leekasso/leekassolasso/" rel="attachment wp-att-2553"><img alt="LeekassoLasso" src="http://simplystatistics.org/wp-content/uploads/2014/01/LeekassoLasso-300x300.png" width="300" height="300" /></a>

This is a bummer, the Leekasso isn't a world crushing algorithm. On the other hand, I'm happy that just choosing the top 10 is still competitive with the optimized lasso on average. More importantly, although I hate being wrong, I appreciate people taking the time to look through my code.

Just out of curiosity I'm taking a survey. Do you think I should publish this top10 predictor thing as a paper? Or do you think it is too trivial?
