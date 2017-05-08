---
id: 211
title: Sample mix-ups in datasets from large studies are more common than you think
date: 2012-05-01T15:01:13+00:00
author: Admin
tumblr_simplystatistics_permalink:
  - http://simplystatistics.tumblr.com/post/22194127261/sample-mix-ups-in-datasets-from-large-studies-are-more
tumblr_simplystatistics_id:
  - 22194127261
dsq_thread_id:
  - 946559636
categories:
  - Uncategorized
tags:
  - genomics
slug: "sample-mix-ups-in-datasets-from-large-studies-are-more"
---
If you have analyzed enough high throughput data you have seen it before: a male sample that is really a female, a liver that is a kidney, etc&#8230; As the datasets I analyze get bigger I see more and more sample mix-ups. When I find a couple of  samples for which sex is incorrectly annotated (one can easily see this from examining data from X and Y chromosomes) I can&#8217;t help but wonder if there are more that are undetectable (e.g. swapping samples of same sex). Datasets that include two types of measurements, for example genotypes and gene expression, make it possible to detect sample swaps more generally. I recently attended a talk by <a href="http://www.biostat.wisc.edu/~kbroman/" target="_blank">Karl Broman</a> on this topic (one of best talks I&#8217;ve seen.. check out the slides <a href="http://www.biostat.wisc.edu/~kbroman/presentations/mousegenet2011.pdf" target="_blank">here</a>). Karl reports an example in which <span>it looks as if </span>whoever was pipetting skipped a sample and kept on going, introducing an off-by-one error for over 50 samples. As I sat through the talk, I wondered how many of the large GWAS studies have mix-ups like this?

A <a href="http://www.ncbi.nlm.nih.gov/pubmed/21653519" target="_blank">recent paper</a> (gated) published by Lude Franke and colleagues describes MixupMapper: a method for detecting and correcting mix-ups. They examined several public datasets and discovered mix-ups in all of them. The worst performing study, <a href="http://www.ncbi.nlm.nih.gov/pubmed/19043577" target="_blank">published in PLoS Genetics</a>, was reported to have 23% of the samples swapped. I was surprised that the MixupMapper paper was not published in a higher impact journal.  Turns out PLoS Genetics rejected the paper. I think this was a big mistake on their part: the paper is clear and well written, reports a problem with a PLoS Genetics papers, and describes a solution to a problem that should have us all quite worried. I think it&#8217;s important that everybody learn about this problem so I was happy to see that, eight months later, Nature Genetics <a href="http://www.ncbi.nlm.nih.gov/pubmed/22484626" target="_blank">published a paper reporting mix-ups</a> (gated)&#8230; but they didn&#8217;t cite the MixupMapper paper! Sorry Lude, welcome to the <a href="http://simplystatistics.tumblr.com/post/13680729270/reverse-scooping" target="_blank">reverse scooped</a> club. 
