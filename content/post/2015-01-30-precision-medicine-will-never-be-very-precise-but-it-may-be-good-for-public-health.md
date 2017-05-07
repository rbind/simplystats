---
id: 3848
title: 'Precision medicine may never be very precise - but it may be good for public health'
date: 2015-01-30T14:24:17+00:00
author: Jeff Leek
pe_theme_meta:
  - 'O:8:"stdClass":2:{s:7:"gallery";O:8:"stdClass":3:{s:2:"id";s:2:"-1";s:5:"width";s:0:"";s:6:"height";s:0:"";}s:5:"video";O:8:"stdClass":1:{s:2:"id";s:2:"-1";}}'
al2fb_facebook_link_id:
  - 136171103105421_762311793824679
al2fb_facebook_link_time:
  - 2015-01-30T19:24:24+00:00
al2fb_facebook_link_picture:
  - post=http://simplystatistics.org/wp-content/uploads/2015/01/gwas-overall.png
dsq_thread_id:
  - 3470514291
categories:
  - Uncategorized
slug: "precision-medicine-will-never-be-very-precise-but-it-may-be-good-for-public-health"
---
_Editor's note: This post was originally titled: [Personalized medicine is primarily a population health intervention](http://simplystatistics.org/2013/06/12/personalized-medicine-is-primarily-a-population-health-intervention/). It has been updated with the graph of odds ratios/betas from GWAS studies._

There has been a lot of discussion of [personalized medicine](http://en.wikipedia.org/wiki/Personalized_medicine), [individualized health](http://web.jhu.edu/administration/provost/initiatives/ihi/), and [precision medicine](http://www.ucsf.edu/welcome-to-ome) in the news and in the medical research community and President Obama just [announced a brand new initiative in precision medicine](http://www.whitehouse.gov/the-press-office/2015/01/30/fact-sheet-president-obama-s-precision-medicine-initiative) . Despite this recent attention, it is clear that healthcare has always been personalized to some extent. For example, men are rarely pregnant and heart attacks occur more often among older patients. In these cases, easily collected variables such as sex and age, can be used to predict health outcomes and therefore used to "personalize" healthcare for those individuals.

So why the recent excitement around personalized medicine? The reason is that it is increasingly cheap and easy to collect more precise measurements about patients that might be able to predict their health outcomes. An example that [has recently been in the news](http://www.nytimes.com/2013/05/14/opinion/my-medical-choice.html?_r=0) is the measurement of mutations in the BRCA genes. Angelina Jolie made the decision to undergo a prophylactic double mastectomy based on her family history of breast cancer and measurements of mutations in her BRCA genes. Based on these measurements, previous studies had suggested she might have a lifetime risk as high as 80% of developing breast cancer.

This kind of scenario will become increasingly common as newer and more accurate genomic screening and predictive tests are used in medical practice. When I read these stories there are two points I think of that sometimes get obscured by the obviously fraught emotional, physical, and economic considerations involved with making decisions on the basis of new measurement technologies:

  1. **In individualized health/personalized medicine the "treatment" is information about risk**. In [some cases](http://en.wikipedia.org/wiki/Gleevec) treatment will be personalized based on assays. But in many other cases, we still do not (and likely will not) have perfect predictors of therapeutic response. In those cases, the healthcare will be "personalized" in the sense that the patient will get more precise estimates of their likelihood of survival, recurrence etc. This means that patients and physicians will increasingly need to think about/make decisions with/act on information about risks. But communicating and acting on risk is a notoriously challenging problem; personalized medicine will dramatically raise the importance of [understanding uncertainty](http://understandinguncertainty.org/).
  2. **Individualized health/personalized medicine is a population-level treatment.** Assuming that the 80% lifetime risk estimate was correct for Angelina Jolie, it still means there is a 1 in 5 chance she was never going to develop breast cancer. If that had been her case, then the surgery was unnecessary. So while her decision was based on personal information, there is still uncertainty in that decision for her. So the "personal" decision may not always be the "best" decision for any specific individual. It may however, be the best thing to do for everyone in a population with the same characteristics.

The first point bears serious consideration in light of President Obama's new proposal. We have already collected a massive amount of genetic data about a large number of common diseases. In almost all cases, the amount of predictive information that we can glean from genetic studies is modest. One paper pointed this issue out in a rather snarky way by comparing two approaches to predicting people's heights: (1) averaging their parents heights - an approach from the Victorian era and (2) combing the latest information on the best genetic markers at the time. It turns out, all the genetic information we gathered isn't as good as [averaging parents heights](http://www.nature.com/ejhg/journal/v17/n8/full/ejhg20095a.html). Another way to see this is to download data on all genetic variants associated with disease from the [GWAS catalog](http://www.genome.gov/gwastudies/) that have a P-value less than 1 x 10e-8. If you do that and look at the distribution of effect sizes, you see that 95% have an odds ratio or beta coefficient less than about 4. Here is a histogram of the effect sizes:

&nbsp;

[<img class="aligncenter size-full wp-image-3852" src="http://simplystatistics.org/wp-content/uploads/2015/01/gwas-overall.png" alt="gwas-overall" width="480" height="480" srcset="http://simplystatistics.org/wp-content/uploads/2015/01/gwas-overall-300x300.png 300w, http://simplystatistics.org/wp-content/uploads/2015/01/gwas-overall-200x200.png 200w, http://simplystatistics.org/wp-content/uploads/2015/01/gwas-overall.png 480w" sizes="(max-width: 480px) 100vw, 480px" />](http://simplystatistics.org/wp-content/uploads/2015/01/gwas-overall.png)

&nbsp;

&nbsp;

This means that nearly all identified genetic effects are small. The ones that are really large (effect size greater than 100) are not for common disease outcomes, they are for [Birdshot chorioretinopathy](http://en.wikipedia.org/wiki/Birdshot_chorioretinopathy) and hippocampal volume. You can really see this if you look at the bulk of the distribution of effect sizes, which are mostly less than 2 by zooming the plot on the x-axis:

&nbsp;

[<img class="aligncenter size-full wp-image-3853" src="http://simplystatistics.org/wp-content/uploads/2015/01/gwas-zoomed.png" alt="gwas-zoomed" width="480" height="480" srcset="http://simplystatistics.org/wp-content/uploads/2015/01/gwas-zoomed-300x300.png 300w, http://simplystatistics.org/wp-content/uploads/2015/01/gwas-zoomed-200x200.png 200w, http://simplystatistics.org/wp-content/uploads/2015/01/gwas-zoomed.png 480w" sizes="(max-width: 480px) 100vw, 480px" />](http://simplystatistics.org/wp-content/uploads/2015/01/gwas-zoomed.png)

&nbsp;

&nbsp;

These effect sizes translate into very limited predictive capacity for most identified genetic biomarkers.  The implication is that personalized medicine, at least for common diseases, is highly likely to be inaccurate for any individual person. But if we can take advantage of the population-level improvements in health from precision medicine by increasing risk literacy, improving our use of uncertain markers, and understanding that precision medicine isn't precise for any one person, it could be a really big deal.
