---
id: 4365
title: We need a statistically rigorous and scientifically meaningful definition of replication
date: 2015-10-20T10:05:22+00:00
author: Rafael Irizarry
pe_theme_meta:
  - 'O:8:"stdClass":2:{s:7:"gallery";O:8:"stdClass":3:{s:2:"id";s:2:"-1";s:5:"width";s:0:"";s:6:"height";s:0:"";}s:5:"video";O:8:"stdClass":1:{s:2:"id";s:2:"-1";}}'
al2fb_facebook_exclude:
  - 
al2fb_facebook_exclude_video:
  - 
al2fb_facebook_link_id:
  - 136171103105421_873965342659323
al2fb_facebook_link_time:
  - 2015-10-20T14:05:40+00:00
al2fb_facebook_link_picture:
  - post=http://simplystatistics.org/wp-content/uploads/2015/10/replication.png
dsq_thread_id:
  - 4242580028
categories:
  - Uncategorized
slug: "we-need-a-statistically-rigorous-and-scientifically-meaningful-definition-of-replication"
---
Replication and confirmation are indispensable concepts that help define scientific facts.  However, the way in which we reach scientific consensus on a given finding is rather complex. Although [some press releases try to convince us otherwise](http://simplystatistics.org/2015/06/24/how-public-relations-and-the-media-are-distorting-science/), rarely is one publication enough. In fact, most published results go unnoticed and no attempts to replicate them are made.  These are not debunked either; they simply get discarded to the dustbin of history. The very few results that garner enough attention for others to spend time and energy on them are assessed by an ad-hoc process involving a community of peers. The assessments are usually a combination of deductive reasoning, direct attempts at replication, and indirect checks obtained by attempting to build on the result in question.  This process eventually leads to a result either being accepted by consensus or not. For particularly important cases, an official scientific consensus report may be commissioned by a national academy or an established scientific society. Examples of results that have become part of the scientific consensus in this way include smoking causing lung cancer, HIV causing AIDS, and climate change being caused by humans.  In contrast, the published result that vaccines cause autism has been thoroughly debunked by several follow up studies. In none of these four cases a simple definition of replication was used to confirm or falsify a result. The same is true for most results for which there is consensus. Yet science moves on, and continues to be an incomparable force at improving our quality of life.

Regulatory agencies, such as the FDA, are an exception since they clearly spell out a [definition](http://www.fda.gov/downloads/Drugs/.../Guidances/ucm078749.pdf) of replication. For example, to approve a drug they may require two independent clinical trials, adequately powered, to show statistical significance at some predetermined level. They also require a large enough effect size to justify the cost and potential risks associated with treatment. This is not to say that FDA approval is equivalent to scientific consensus, but they do provide a clearcut definition of replication.

In response to a growing concern over a _[reproducibility crisis](http://www.nature.com/news/reproducibility-1.17552)_, projects such as the [Open Science Collaboration](http://osc.centerforopenscience.org/) have commenced to systematically try to replicate published results. In a [recent post](http://simplystatistics.org/2015/10/01/a-glass-half-full-interpretation-of-the-replicability-of-psychological-science/), Jeff described one of their [recent papers](http://www.sciencemag.org/content/349/6251/aac4716) on estimating the reproducibility of psychological science (they really mean replicability; see note below). This Science paper led to lay press reports with eye-catching headlines such as “only 36% of psychology experiments replicate”. Note that the 36% figure comes from a definition of replication that mimics the definition used by regulatory agencies: results are considered replicated if a p-value < 0.05 was reached in both the original study and the replicated one. Unfortunately, this definition ignores both effect size and statistical power. If power is not controlled, then the expected proportion of correct findings that replicate can be quite small. For example, if I try to replicate the smoking-causes-lung-cancer result with a sample size of 5, there is a good chance it will not replicate. In his post, Jeff notes that for several of the studies that did not replicate, the 95% confidence intervals intersected. So should intersecting confidence intervals be our definition of replication? This too has a flaw since it favors imprecise studies with very large confidence intervals. If effect size is ignored, we may waste our time trying to replicate studies reporting practically meaningless findings. Generally defining replication for published studies is not as easy as for highly controlled clinical trials. However, one clear improvement from what is currently being done is to consider statistical power and effect sizes.

To further illustrate this, let's consider a very concrete example with real life consequences. Imagine a loved one has a disease with high mortality rates and asks for your help in evaluating the scientific evidence on treatments. Four experimental drugs are available all with promising clinical trials resulting in p-values <0.05. However, a replication project redoes the experiments and finds that only the drug A and drug B studies replicate (p<0.05). So which drug do you take? Let's give a bit more information to help you decide. Here are the p-values for both original and replication trials:

<table style="width: 100%;">
  <tr>
    <td>
      Drug
    </td>
    
    <td>
      Original
    </td>
    
    <td>
      Replication
    </td>
    
    <td>
      Replicated
    </td>
  </tr>
  
  <tr>
    <td>
      A
    </td>
    
    <td>
      0.0001
    </td>
    
    <td>
      0.001
    </td>
    
    <td>
      Yes
    </td>
  </tr>
  
  <tr>
    <td>
      B
    </td>
    
    <td>
      <0.000001
    </td>
    
    <td>
      0.03
    </td>
    
    <td>
      Yes
    </td>
  </tr>
  
  <tr>
    <td>
      C
    </td>
    
    <td>
      0.03
    </td>
    
    <td>
      0.06
    </td>
    
    <td>
      No
    </td>
  </tr>
  
  <tr>
    <td>
      D
    </td>
    
    <td>
      <0.000001
    </td>
    
    <td>
      0.10
    </td>
    
    <td>
      No
    </td>
    
    <td>
    </td>
  </tr>
</table>

Which drug would you take now? The information I have provided is based on p-values and therefore is missing a key piece of information: the effect sizes. Below I show the confidence intervals for all four studies (left) and four replication studies (right). Note that except for drug B, all confidence intervals intersect. In light of the figure below, which one would you chose?

[<img class=" wp-image-4368 alignright" src="http://simplystatistics.org/wp-content/uploads/2015/10/replication.png" alt="replication" width="359" height="338" srcset="http://simplystatistics.org/wp-content/uploads/2015/10/replication-300x283.png 300w, http://simplystatistics.org/wp-content/uploads/2015/10/replication-212x200.png 212w, http://simplystatistics.org/wp-content/uploads/2015/10/replication.png 617w" sizes="(max-width: 359px) 100vw, 359px" />](http://simplystatistics.org/wp-content/uploads/2015/10/replication.png)

I would be inclined to go with drug D because it has a large effect size, a small p-value, and the replication experiment effect estimate fell inside a 95% confidence interval. I would definitely not go with A since it provides marginal benefits, even if the trial found a statistically significant effect and was replicated. So the p-value based definition of replication is practically worthless from a practical standpoint.

It seems that before continuing the debate over replication, and certainly before declaring that we are in a [reproducibility crisis](http://www.nature.com/news/reproducibility-1.17552), we need a statistically rigorous and scientifically meaningful definition of replication.  This definition does not necessarily need to be dichotomous (replicated or not) and it will probably require more than one replication experiment and more than one summary statistic: one for effect size and one for uncertainty. In the meantime, we should be careful not to dismiss the current scientific process, which seems to be working rather well at either ignoring or debunking false positive results while producing useful knowledge and discovery.

* * *

Footnote on reproducible versus replication: As Jeff pointed out, the cited Open Science Collaboration paper is about replication, not reproducibility. A study is considered reproducible if an independent researcher can recreate the tables and figures from the original raw data. Replication is not nearly as simple to define because it involves probability. To replicate the experiment it has to be performed again, with a different random sample and new set of measurement errors.
