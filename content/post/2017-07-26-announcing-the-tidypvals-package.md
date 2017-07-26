---
title: Announcing the tidypvals package
author: Jeff Leek
date: '2017-07-26'
slug: announcing-the-tidypvals-package
categories: []
tags:
  - pvalues
  - rpackage
---

A few years ago I helped write a paper where we proposed scraping p-values from the medical literature to try to estimate [the science-wise false discovery rate](https://academic.oup.com/biostatistics/article/15/1/1/244509/An-estimate-of-the-science-wise-false-discovery). The paper generated a ton of [interesting discussion](https://simplystatistics.org/2013/09/25/is-most-science-false-the-titans-weigh-in/) and inspired other groups to start collecting p-values from the literature. 

As I've mentioned before the p-value is the [most popular statistic ever invented](https://simplystatistics.org/2012/01/06/p-values-and-hypothesis-testing-get-a-bad-rap-but-we/) so there are _a lot_ of published p-values out there. 

The tidypvals package is an effort to find previous collections of published p-values, synthesize them, and tidy them into one analyzable data set. The currently available p-value data sets in this package are: 

* `jager2014` - This data set comes from the paper: [An estimate of the science-wise false discovery rate and application to the top medical literature](https://academic.oup.com/biostatistics/article/15/1/1/244509/An-estimate-of-the-science-wise-false-discovery) that first proposed p-value scraping from the medical literature for re-analysis.
* `brodeur2016` - This data set comes from the paper [Star Wars: The empirics strike back](https://www.aeaweb.org/articles?id=10.1257/app.20150044) which collected p-values from the economics literature.
* `head2015` - This data set comes from the paper [The Extent and Consequences of P-Hacking in Science](http://journals.plos.org/plosbiology/article?id=10.1371/journal.pbio.1002106) and is an extension of the `jager2014` idea to a much larger collection of biological papers. 
* `chavalarias2016` - This data set comes from the paper [Evolution of Reporting P Values in the Biomedical Literature, 1990-2015](https://jamanetwork.com/journals/jama/fullarticle/10.1001/jama.2016.1952) and is an extension of the `jager2014` idea to a much larger collection of medical papers. 
* `allp` - merges the `head2015`, `chavalarias2016`, and `brodeur2016` while removing duplicates. To see how it is created view the `merging` vignette. 


Each data set is "tidy" data frame and has the following columns: 

* `pvalue` - The reported p-value
* `year` - The year of the publication where the p-value appeared
* `journal` - The journal where the publication appeared
* `field` - The field of the paper, using the categorization in Head et al. 2015.
* `abstract` - Whether the p-value was in the abstract of the paper
* `operator` - Whether the p-value was reported as "lessthan", "greaterthan", or "equals". 
* `doi` - When available the digital object identifier. 
* `pmid` - The pubmed ID for the paper when available


Currently the package is only available from Github, but when I figure out the `ExperimentHub` package from Bioconductor I hope to move the package there. For now you can install it with

```S
install.packages('devtools)
library(devtools)
devtools::install_github('jtleek/tidypvals')
```
Then you can load the library and then access each data set by name.  

```S
library(tidypvals)
jager2014
```

Data sets can be easily merged, but be careful to avoid duplicated p-values across different data sets. You can see how each data set was obtained and tidied by viewing the corresponding vignette. 

```S
vignette("jager-2014",package="tidypvals")
```

One purpose of tidying these data is to be able to do cross-study analysis of p-values in the literature. As a teaser for things coming soon, this plot represents more than 2.5 million p-values across 25 different fields. Notice anything funny? 


![All p-values](https://user-images.githubusercontent.com/1571674/28619649-6127b58a-71d7-11e7-82f0-3c911ce7d1f0.png)
