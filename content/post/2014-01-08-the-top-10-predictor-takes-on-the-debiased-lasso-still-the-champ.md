---
id: 2409
title: 'The top 10 predictor takes on the debiased Lasso - still the champ!'
date: 2014-01-08T10:39:30+00:00
author: Jeff Leek
al2fb_facebook_link_id:
  - 136171103105421_592870377435489
al2fb_facebook_link_time:
  - 2014-01-08T15:39:37+00:00
al2fb_facebook_link_picture:
  - post=http://simplystatistics.org/wp-content/uploads/2014/01/accuracy-plot1-300x100.png
dsq_thread_id:
  - 2100290279
categories:
  - Uncategorized
slug: "the-top-10-predictor-takes-on-the-debiased-lasso-still-the-champ"
---
After reposting on the comparison between the lasso and the always top 10 predictor (leekasso) I got some feedback that the problem could be I wasn't debiasing the Lasso (thanks Tim T. on Twitter!). The idea behind debiasing (as I understand it) is to use the Lasso to do feature selection and then fit model without shrinkage to "debias" the coefficients. The debiased model is then used for prediction. [Noah Simon](http://faculty.washington.edu/nrsimon/), who knows approximately infinitely more about this than I do, kindly provided some code for fitting a debiased Lasso. He is not responsible for any mistakes/silliness in the simulation, he was just nice enough to provide some debiased Lasso code. He mentions a similar idea appears in the [relaxo package](http://cran.r-project.org/web/packages/relaxo/relaxo.pdf) if you set <span class='MathJax_Preview'><img src='http://simplystatistics.org/wp-content/plugins/latex/cache/tex_0b92f8c2972983f15725fd66e4a72066.gif' style='vertical-align: middle; border: none; ' class='tex' alt="\phi=0" /></span>.

I used the [same simulation set up ](http://simplystatistics.org/2014/01/04/repost-prediction-the-lasso-vs-just-using-the-top-10-predictors/)as before and tried out the Leekasso, the Lasso and the Debiased Lasso. Here are the accuracy results (more red = higher accuracy):

<p style="text-align: center;">
  <a href="http://simplystatistics.org/2014/01/08/the-top-10-predictor-takes-on-the-debiased-lasso-still-the-champ/accuracy-plot-2/" rel="attachment wp-att-2412"><img class="size-medium wp-image-2412 aligncenter" alt="accuracy-plot" src="http://simplystatistics.org/wp-content/uploads/2014/01/accuracy-plot1-300x100.png" width="300" height="100" srcset="http://simplystatistics.org/wp-content/uploads/2014/01/accuracy-plot1-300x100.png 300w, http://simplystatistics.org/wp-content/uploads/2014/01/accuracy-plot1-1024x341.png 1024w" sizes="(max-width: 300px) 100vw, 300px" /></a>
</p>

<p style="text-align: left;">
  The results suggest the debiased Lasso still doesn't work well under this design. Keep in mind as I mentioned in my previous post that the Lasso may perform better under a different causal model.
</p>

<p style="text-align: left;">
  <strong>Update: </strong> <a href="https://github.com/jtleek/leekasso">Code available here on Github</a> if you want to play around.
</p>
