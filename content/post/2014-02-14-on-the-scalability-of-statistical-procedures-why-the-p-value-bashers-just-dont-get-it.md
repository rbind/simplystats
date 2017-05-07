---
id: 2657
title: "On the scalability of statistical procedures: why the p-value bashers just don't get it."
date: 2014-02-14T12:40:06+00:00
author: Jeff Leek
al2fb_facebook_link_id:
  - 136171103105421_607993832589810
al2fb_facebook_link_time:
  - 2014-02-14T17:40:11+00:00
al2fb_facebook_link_picture:
  - post=http://simplystatistics.org/?al2fb_image=1
dsq_thread_id:
  - 2266743348
categories:
  - Uncategorized
slug: "on-the-scalability-of-statistical-procedures-why-the-p-value-bashers-just-dont-get-it"
---
**Executive Summary**

  1. The problem is not p-values it is a fundamental shortage of data analytic skill.
  2. In general it makes sense to reduce researcher degrees of freedom for non-experts, but any choice of statistic, when used by many untrained people, will be flawed.
  3. The long term solution is to require training in **both statistics and data analysis** for anyone who uses data but particularly journal editors, reviewers, and scientists in molecular biology, medicine, physics, economics, and astronomy.
  4. [The Johns Hopkins Specialization in Data Science](https://www.coursera.org/specialization/jhudatascience/1) runs every month and can be easily integrated into any program. Other, more specialized, online courses and short courses make it possible to round this training out in ways that are appropriate for each discipline.

**Scalability of Statistical Procedures**

The P-value is in the news again. [Nature came out with a piece](http://www.nature.com/news/scientific-method-statistical-errors-1.14700?WT.mc_id=PIN_NatureNews) talking about how scientists are naive about the use of P-values [among other things](https://twitter.com/leonidkruglyak/status/433747859414872065). P-values have known flaws which have been regularly discussed. If you want to see some criticisms just Google "NHST". Despite their flaws, from a practical perspective it is and oversimplification to point to the use of P-values as the critical flaw in scientific practice. The problem is not that people use P-values poorly it is that [the vast majority of data analysis is not performed by people properly trained to perform data analysis. ](http://simplystatistics.org/2013/06/14/the-vast-majority-of-statistical-analysis-is-not-performed-by-statisticians/)

Data are now abundant in nearly every discipline from astrophysics, to biology, to the social sciences, and even in qualitative disciplines like literature. By scientific standards, the growth of data came on at a breakneck pace. Over a period of about 40 years we went from a scenario where data was measured in bytes to terabytes in almost every discipline. Training programs haven't adapted to this new era. This is particularly true in genomics where within one generation we went from a data poor environment to a data rich environment. [**Executive Summary**

  1. The problem is not p-values it is a fundamental shortage of data analytic skill.
  2. In general it makes sense to reduce researcher degrees of freedom for non-experts, but any choice of statistic, when used by many untrained people, will be flawed.
  3. The long term solution is to require training in **both statistics and data analysis** for anyone who uses data but particularly journal editors, reviewers, and scientists in molecular biology, medicine, physics, economics, and astronomy.
  4. [The Johns Hopkins Specialization in Data Science](https://www.coursera.org/specialization/jhudatascience/1) runs every month and can be easily integrated into any program. Other, more specialized, online courses and short courses make it possible to round this training out in ways that are appropriate for each discipline.

**Scalability of Statistical Procedures**

The P-value is in the news again. [Nature came out with a piece](http://www.nature.com/news/scientific-method-statistical-errors-1.14700?WT.mc_id=PIN_NatureNews) talking about how scientists are naive about the use of P-values [among other things](https://twitter.com/leonidkruglyak/status/433747859414872065). P-values have known flaws which have been regularly discussed. If you want to see some criticisms just Google "NHST". Despite their flaws, from a practical perspective it is and oversimplification to point to the use of P-values as the critical flaw in scientific practice. The problem is not that people use P-values poorly it is that [the vast majority of data analysis is not performed by people properly trained to perform data analysis. ](http://simplystatistics.org/2013/06/14/the-vast-majority-of-statistical-analysis-is-not-performed-by-statisticians/)

Data are now abundant in nearly every discipline from astrophysics, to biology, to the social sciences, and even in qualitative disciplines like literature. By scientific standards, the growth of data came on at a breakneck pace. Over a period of about 40 years we went from a scenario where data was measured in bytes to terabytes in almost every discipline. Training programs haven't adapted to this new era. This is particularly true in genomics where within one generation we went from a data poor environment to a data rich environment.](http://simplystatistics.org/2012/04/27/people-in-positions-of-power-that-dont-understand/) were trained before data were widely available and used.

The result is that the vast majority of people performing statistical and data analysis are people with only one or two statistics classes and little formal data analytic training under their belt. Many of these scientists would happily work with a statistician, but as any applied statistician at a research university will tell you, it is impossible to keep up with the demand from our scientific colleagues. Everyone is collecting major data sets or analyzing public data sets; there just aren't enough hours in the day.

Since most people performing data analysis are not statisticians there is a lot of room for error in the application of statistical methods. This error is magnified enormously when naive analysts are given too many "researcher degrees of freedom". If a naive analyst can pick any of a range of methods and does not understand how they work, they will generally pick the one that gives them maximum benefit.

The short-term solution is to find a balance [between researcher degrees of freedom and "recipe book" style approaches](http://simplystatistics.org/2013/07/31/the-researcher-degrees-of-freedom-recipe-tradeoff-in-data-analysis/) that require a specific method to be applied. In general, for naive analysts, it makes sense to lean toward less flexible methods that have been shown to work across a range of settings. The key idea here is to evaluate methods in the hands of naive users and see which ones work best most frequently, an idea we have previously called "[evidence based data analysis](http://simplystatistics.org/2013/08/28/evidence-based-data-analysis-treading-a-new-path-for-reproducible-research-part-2/)".

An incredible success story of evidence based data analysis in genomics is the use of the [limma package](http://www.bioconductor.org/packages/release/bioc/html/limma.html) for differential expression analysis of microarray data. Limma [can be beat](http://biostatistics.oxfordjournals.org/content/8/2/414.full.pdf) in certain specific scenarios, but it is robust to such a wide number of study designs, sample sizes, and data types that the choice to use something other than limma should only be exercised by experts.

**The trouble with criticizing p-values without an alternative**

P-values are an obvious target of wrath by people who don't do day to day statistical analysis because the P-value is the most successful statistical procedure ever invented. If every person who used a P-value cited the inventor, P-values would have, _very conservatively_, [3 million citations](http://simplystatistics.org/2012/03/07/r-a-fisher-is-the-most-influential-scientist-ever/). That's an insane amount of use for one statistic.

Why would such a terrible statistic be used by so many people? The reason is that it is critical that we have some measure of uncertainty we can assign to data analytic results. Without such a measure, the only way to determine if results are real or not is to rely on people's intuition, which is a [notoriously unreliable metric](http://psiexp.ss.uci.edu/research/teaching/Tversky_Kahneman_1974.pdf) when uncertainty is involved. It is pretty clear science would be much worse off if we decided if results were reliable based on peoples' gut feeling about the data.

P-values can and are misinterpreted, misused, and abused both by naive analysts and by statisticians. Sometimes these problems are due to statistical naiveté, sometimes they are due to wishful thinking and career pressure, and sometimes they are malicious. The reason is that P-values are complicated and require training to understand.

Critics of the P-value argue in favor of a large number of the procedures to be used in place of P-values. But when considering the scale at which the methods must be used to address the demands of the current data rich world, many alternatives would result in similar flaws. _This is in no way proves the use of P-values is a good idea, but it does prove that coming up with an alternative is hard._ Here are a few potential alternatives.

  1. **Methods should only be chosen and applied by true data analytic experts. Pros:** This is the best case scenario. **Cons:** Impossible to implement broadly given the level of statistical and data analytic expertise in the community** **
  2. **The full prior, likelihood and posterior should be detailed and complete sensitivity analysis should be performed. ****Pros: **In cases where this can be done this provides much more information about the model and uncertainty being considered. **Cons**: The model requires more advanced statistical expertise, is computationally much more demanding, and can not be applied in problems where model based approaches have not been developed. Yes/no decisions about credibility of results still come down to picking a threshold or allowing more researcher degrees of freedom.
  3. **A direct Bayesian approach should be used reporting credible intervals and Bayes estimators. ****Pros:** In cases where the model can be fit, can be used by non-experts, provides scientific measures of uncertainty like confidence intervals. **Cons**: The prior allows a large number of degrees of freedom when not used by an expert, sensitivity analysis is required to determine the effect of the prior, many more complex models can not be implemented, results are still sample size dependent.
  4. **Replace P-values with likelihood ratios. ****Pros:** In cases where it is available may reduce some of the conceptual difficulty with the null hypothesis. **Cons:** Likelihood ratios can usually only be computed exactly for cases with few or no nuisance parameters, likelihood ratios run into trouble for complex alternatives, they are still sample size dependent, the a likelihood ratio threshold is equivalent to a p-value threshold in many cases.
  5. **We should use Confidence Intervals exclusively in the place of p-values.  Pros: **A measure and variability on the scale of interest will be reported. We can evaluate effect sizes on a scientific scale.  **Cons: **Confidence intervals are still sample size dependent and can be misleading for large samples, significance levels can be chosen to make intervals artificially wide/small, if used as a decision making tool there is a one-to-one mapping between a confidence interval and a p-value threshold.
  6. **We should use Bayes Factors instead of p-values. ****Pros**: They can compare the evidence (loosely defined) for both the null and alternative. They can incorporate prior information. **Cons:** Priors provide researcher degrees of freedom, cutoffs may still lead to false/true positives, BF's still depend on sample size.

This is not to say that many of these methods have advantages over P-values. But at scale any of these methods will be prone to abuse, misinterpretation and error. For example, none of them by default deals with multiple testing. Reducing researcher degrees of freedom is good when dealing with a lack of training, but the consequence is potential for mistakes and all of these methods would be ferociously criticized if used as frequently as p-values.

**The difference between data analysis and statistics**

Many disciplines including medicine and molecular biology usually require an introductory statistics or machine learning class during their program. This is a great start, but is not sufficient for the modern data saturated era. The introductory statistics or machine learning class is enough to teach someone the language of data analysis, but not how to use it. For example, you learn about the t-statistic and how to calculate it. You may also learn the asymptotic properties of the statistic. But you rarely learn about what happens to the t-statistic when there is [an unmeasured confounder](http://en.wikipedia.org/wiki/Confounding). You also don't learn how to handle non iid data, sample mixups, reproducibility, most of scripting, etc.

It is therefore critical that if you plan to use or understand data analysis you take both the introductory course and at least one data analysis course. The data analysis course should cover study design, more general data analytic reasoning, non-iid data, biased sampling, basics of non-parametrics, training vs test sets, prediction error, sources of likely problems in data sets (like sample mixups), and reproducibility. These are the concepts that appear regularly when analyzing real data that don't usually appear in the first course in statistics that most medical and molecular biology professionals see. There are awesome statistical educators who are trying hard to bring more of this into the introductory stats world, but it is just too much to cram into one class.

**What should we do**

The thing that is the most frustrating about the frequent and loud criticisms of P-values is that they usually point out what is wrong with P-values, but don't suggest what we should do about it.  When they do make suggestions, they frequently ignore the fundamental problems:

  1. Statistics are complicated and require careful training to understand properly. This is true regardless of the choice of statistic, philosophy, or algorithm.
  2. Data is incredibly abundant in all disciplines and shows no sign of slowing down.
  3. There is a fundamental shortage of training in statistics _and data analysis _
  4. Giving untrained analysts extra researcher degrees of freedom is dangerous.

The most direct solution to this problem is increased training in statistics and data analysis. Every major or program in a discipline that regularly analyzes data (molecular biology, medicine, finance, economics, astrophysics, etc.) should require at minimum an introductory statistics class and a data analysis class. If the expertise doesn't exist to create these sorts of courses there are options. For example, we have introduced a series of 9 courses that run every month that cover most of the basic topics that are common across disciplines.

<http://jhudatascience.org/>

<https://www.coursera.org/specialization/jhudatascience/1>

I think of particular interest given the [NIH Director's recent comments](http://www.nature.com/news/policy-nih-plans-to-enhance-reproducibility-1.14586) on reproducibility is our course on [Reproducible Research](https://www.coursera.org/course/repdata). There are also many more specialized resources that are very good and widely available that will build on the base we created with the data science specialization.

  1. For scientific software engineering/reproducibility: [Software Carpentry](http://software-carpentry.org/).
  2. For data analysis in genomics: Rafa's [Data Analysis for Genomics Class](https://www.edx.org/course/harvardx/harvardx-ph525x-data-analysis-genomics-1401).
  3. For Python and computing: [The Fundamentals of Computing Specialization](https://www.coursera.org/specialization/fundamentalscomputing/9/courses)

Enforcing education and practice in data analysis is the only way to resolve the problems that people usually attribute to P-values. In the short term, we should at minimum require all the editors of journals who regularly handle data analysis to show competency in statistics and data analysis.

_Correction: _After seeing Katie K.'s comment on Facebook I concur that P-values were not directly referred to as "worse than useless", so to more fairly represent the article, I have deleted that sentence.
