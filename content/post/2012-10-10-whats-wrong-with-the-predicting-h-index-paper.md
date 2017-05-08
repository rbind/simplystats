---
id: 37
title: "What's wrong with the predicting h-index paper."
date: 2012-10-10T13:47:04+00:00
author: Admin
tumblr_simplystatistics_permalink:
  - http://simplystatistics.tumblr.com/post/33297620511/whats-wrong-with-the-predicting-h-index-paper
tumblr_simplystatistics_id:
  - 33297620511
dsq_thread_id:
  - 934559059
categories:
  - Uncategorized
tags:
  - h-index
  - nature
  - review
  - statistcs
slug: "whats-wrong-with-the-predicting-h-index-paper"
---
_Editor&#8217;s Note: I recently posted about <a href="http://simplystatistics.org/post/31990205510/prediction-contest" target="_blank">a paper</a> in Nature that purported to predict the H-index. The authors contacted me to get my criticisms, then responded to those criticisms. They have requested the opportunity to respond publicly, and I think it is a totally reasonable request. Until there is a better comment generating mechanism at the journal level, this seems like as good a forum as any to discuss statistical papers. I will post an extended version of my criticisms here and give them the opportunity to respond publicly in the comments. _

<span>The paper in question is a clearly a clever idea and the kind that would get people fired up. Quantifying researchers output is all the rage and being able to predict this quantity in the future would obviously make a lot of evaluators happy. I think it was, in that sense, a really good idea to chase down these data, since it was clear that if they found anything at all it would be very widely covered in the scientific/popular press. </span>

<div>
  My original post was inspired out of my frustration with Nature, which has a history of publishing somewhat suspect statistical papers, <a href="http://www.ncbi.nlm.nih.gov/pubmed/15457248" target="_blank">such as this one</a>. I posted the prediction contest after reading another paper I consider to be a flawed statistical paper, both for statistical reasons and for scientific reasons. I originally commented on the statistics in my post. The authors, being good sports, contacted me for my criticisms. I sent them the following criticisms, which I think are sufficiently major that a statistical referee or statistical journal would have likely rejected the paper:
</div>

<div>
  <ol>
    <li>
      Lack of reproducibility. The code/data are not made available either through Nature or on your website. This is a critical component of papers based on computation and has led to serious problems before. It is also easily addressable. 
    </li>
    <li>
      No training/test set. You mention cross-validation (and maybe the R^2 is the R^2 using the held out scientists?) but if you use the cross-validation step to optimize the model parameters and to estimate the error rate, you could see some major overfitting. 
    </li>
    <li>
      The R^2 values are pretty low. An R^2 of 0.67 is obviously superior to the h-index alone, but (a) there is concern about overfitting, and (b) even without overfitting, that low of R^2 could lead to substantial variance in predictions. 
    </li>
    <li>
      The prediction error is not reported in the paper (or in the online calculator). How far off could you be at 5 years, at 10? Would the results still be impressive with those errors reported?
    </li>
    <li>
      You use model selection and show only the optimal model (as described in the last paragraph of the supplementary), but no indication of the potential difficulties with this model selection are made in the text. 
    </li>
    <li>
      You use a single regression model without any time variation in the coefficients and without any potential non-linearity. Clearly when predicting several years into the future there will be variation with time and non-linearity. There is also likely heavy variance in the types of individuals/career trajectories, and outliers may be important, etc. 
    </li>
  </ol>
  
  <div>
    They carefully responded to these criticisms and hopefully they will post their responses in the comments. My impression based on their responses is that the statistics were not as flawed as I originally thought, but that the data aren&#8217;t sufficient to form a useful prediction. 
  </div>
  
  <div>
  </div>
  
  <div>
    However, I think the much bigger flaw is the basic scientific premise. The h-index has been identified as having major flaws, biases (including gender bias), and to be a generally poor summary of a scientist&#8217;s contribution. See <a href="http://blogs.nature.com/nautilus/2007/10/the_hindex_has_its_flaws.html" target="_blank">here</a>, the list of criticisms <a href="http://en.wikipedia.org/wiki/H-index" target="_blank">here</a>, and the discussion <a href="http://scholarlykitchen.sspnet.org/2008/06/30/the-h-index-an-objective-mismeasure/" target="_blank">here</a> for starters. The authors of the Nature paper propose a highly inaccurate predictor of this deeply flawed index. While that alone is sufficient to call into question the results in the paper, the authors also make bold claims about their prediction tool: 
  </div>
  
  <blockquote>
    <div>
      Our formula is particularly useful for funding agencies, peer reviewers and hir­ing committees who have to deal with vast 
    </div>
    
    <div>
      numbers of applications and can give each only a cursory examination. Statistical techniques have the advantage of returning 
    </div>
    
    <div>
      results instantaneously and in an unbiased way.
    </div>
  </blockquote>
  
  <div>
    Suggesting that this type of prediction should be used to make important decisions on hiring, promotion, and funding is highly scientifically flawed. Coupled with the online calculator the authors handily provide (which produces no measure of uncertainty) it makes it all too easy for people to miss the real value of scientific publications: the science contained in them. 
  </div>
</div>
