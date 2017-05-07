---
id: 3928
title: 'π day special: How to use Bioconductor to find empirical evidence in support of π being a normal number'
date: 2015-03-14T10:15:10+00:00
author: Rafael Irizarry
al2fb_facebook_link_id:
  - 136171103105421_781511755238016
al2fb_facebook_link_time:
  - 2015-03-14T14:15:19+00:00
al2fb_facebook_link_picture:
  - post=http://simplystatistics.org/wp-content/uploads/2014/03/pi2.png
pe_theme_meta:
  - 'O:8:"stdClass":2:{s:7:"gallery";O:8:"stdClass":3:{s:2:"id";s:2:"-1";s:5:"width";s:0:"";s:6:"height";s:0:"";}s:5:"video";O:8:"stdClass":1:{s:2:"id";s:2:"-1";}}'
dsq_thread_id:
  - 3594767137
categories:
  - Uncategorized
slug: "%cf%80-day-special-how-to-use-bioconductor-to-find-empirical-evidence-in-support-of-%cf%80-being-a-normal-number"
---
_Editor's note: Today 3/14/15 at some point between  9:26:53 and 9:26:54 it was the most π day of them all. Below is a repost from last year. _

Happy π day everybody!

I wanted to write some simple code (included below) to the test parallelization capabilities of my  new cluster. So, in honor of  π day, I decided to check for [evidence that π is a normal number](http://www.davidhbailey.com/dhbpapers/normality.pdf). A [normal number](http://en.wikipedia.org/wiki/Normal_number) is a real number whose infinite sequence of digits has the property that picking any given random m digit pattern is 10<sup>−m</sup>. For example, using the Poisson approximation, we can predict that the pattern "123456789" should show up between 0 and 3 times in the [first billion digits of π](http://stuff.mit.edu/afs/sipb/contrib/pi/) (it actually shows up twice starting, at the 523,551,502-th and  773,349,079-th decimal places).

To test our hypothesis, let Y<sub>1</sub>, ..., Y<sub>100</sub> be the number of "00", "01", ...,"99" in the first billion digits of  π. If  π is in fact normal then the Ys should be approximately IID binomials with N=1 billon and p=0.01.  In the qq-plot below I show Z-scores (Y - 10,000,000) /  √9,900,000) which appear to follow a normal distribution as predicted by our hypothesis. Further evidence for π being normal is provided by repeating this experiment for 3,4,5,6, and 7 digit patterns (for 5,6 and 7 I sampled 10,000 patterns). Note that we can perform a chi-square test for the uniform distribution as well. For patterns of size 1,2,3 the p-values were 0.84, <del>0.89,</del> 0.92, and 0.99.

<a href="http://simplystatistics.org/2014/03/14/using-bioconductor-to-find-some-empirical-evidence-in-support-of-%cf%80-being-a-normal-number/pi-3/" rel="attachment wp-att-2792"><img class="alignnone size-full wp-image-2792" src="http://simplystatistics.org/wp-content/uploads/2014/03/pi2.png" alt="pi" width="4800" height="3000" srcset="http://simplystatistics.org/wp-content/uploads/2014/03/pi2-300x187.png 300w, http://simplystatistics.org/wp-content/uploads/2014/03/pi2-1024x640.png 1024w, http://simplystatistics.org/wp-content/uploads/2014/03/pi2.png 4800w" sizes="(max-width: 4800px) 100vw, 4800px" /></a>

Another test we can perform is to divide the 1 billion digits into 100,000 non-overlapping segments of length 10,000. The vector of counts for any given pattern should also be binomial. Below I also include these qq-plots.

<a href="http://simplystatistics.org/2014/03/14/using-bioconductor-to-find-some-empirical-evidence-in-support-of-%cf%80-being-a-normal-number/pi2/" rel="attachment wp-att-2793"><img class="alignnone size-full wp-image-2793" src="http://simplystatistics.org/wp-content/uploads/2014/03/pi21.png" alt="pi2" width="5600" height="3000" srcset="http://simplystatistics.org/wp-content/uploads/2014/03/pi21-1024x548.png 1024w, http://simplystatistics.org/wp-content/uploads/2014/03/pi21.png 5600w" sizes="(max-width: 5600px) 100vw, 5600px" /></a>

These observed counts should also be independent, and to explore this we can look at autocorrelation plots:

<a href="http://simplystatistics.org/2014/03/14/using-bioconductor-to-find-some-empirical-evidence-in-support-of-%cf%80-being-a-normal-number/piacf-2/" rel="attachment wp-att-2794"><img class="alignnone size-full wp-image-2794" src="http://simplystatistics.org/wp-content/uploads/2014/03/piacf1.png" alt="piacf" width="5600" height="3000" srcset="http://simplystatistics.org/wp-content/uploads/2014/03/piacf1-1024x548.png 1024w, http://simplystatistics.org/wp-content/uploads/2014/03/piacf1.png 5600w" sizes="(max-width: 5600px) 100vw, 5600px" /></a>

To do this in about an hour and with just a few lines of code (included below), I used the [Bioconductor](http://www.bioconductor.org/) [Biostrings](http://www.bioconductor.org/packages/release/bioc/html/Biostrings.html) package to match strings and the _foreach_ function to parallelize.

`_Editor's note: Today 3/14/15 at some point between  9:26:53 and 9:26:54 it was the most π day of them all. Below is a repost from last year. _

Happy π day everybody!

I wanted to write some simple code (included below) to the test parallelization capabilities of my  new cluster. So, in honor of  π day, I decided to check for [evidence that π is a normal number](http://www.davidhbailey.com/dhbpapers/normality.pdf). A [normal number](http://en.wikipedia.org/wiki/Normal_number) is a real number whose infinite sequence of digits has the property that picking any given random m digit pattern is 10<sup>−m</sup>. For example, using the Poisson approximation, we can predict that the pattern "123456789" should show up between 0 and 3 times in the [first billion digits of π](http://stuff.mit.edu/afs/sipb/contrib/pi/) (it actually shows up twice starting, at the 523,551,502-th and  773,349,079-th decimal places).

To test our hypothesis, let Y<sub>1</sub>, ..., Y<sub>100</sub> be the number of "00", "01", ...,"99" in the first billion digits of  π. If  π is in fact normal then the Ys should be approximately IID binomials with N=1 billon and p=0.01.  In the qq-plot below I show Z-scores (Y - 10,000,000) /  √9,900,000) which appear to follow a normal distribution as predicted by our hypothesis. Further evidence for π being normal is provided by repeating this experiment for 3,4,5,6, and 7 digit patterns (for 5,6 and 7 I sampled 10,000 patterns). Note that we can perform a chi-square test for the uniform distribution as well. For patterns of size 1,2,3 the p-values were 0.84, <del>0.89,</del> 0.92, and 0.99.

<a href="http://simplystatistics.org/2014/03/14/using-bioconductor-to-find-some-empirical-evidence-in-support-of-%cf%80-being-a-normal-number/pi-3/" rel="attachment wp-att-2792"><img class="alignnone size-full wp-image-2792" src="http://simplystatistics.org/wp-content/uploads/2014/03/pi2.png" alt="pi" width="4800" height="3000" srcset="http://simplystatistics.org/wp-content/uploads/2014/03/pi2-300x187.png 300w, http://simplystatistics.org/wp-content/uploads/2014/03/pi2-1024x640.png 1024w, http://simplystatistics.org/wp-content/uploads/2014/03/pi2.png 4800w" sizes="(max-width: 4800px) 100vw, 4800px" /></a>

Another test we can perform is to divide the 1 billion digits into 100,000 non-overlapping segments of length 10,000. The vector of counts for any given pattern should also be binomial. Below I also include these qq-plots.

<a href="http://simplystatistics.org/2014/03/14/using-bioconductor-to-find-some-empirical-evidence-in-support-of-%cf%80-being-a-normal-number/pi2/" rel="attachment wp-att-2793"><img class="alignnone size-full wp-image-2793" src="http://simplystatistics.org/wp-content/uploads/2014/03/pi21.png" alt="pi2" width="5600" height="3000" srcset="http://simplystatistics.org/wp-content/uploads/2014/03/pi21-1024x548.png 1024w, http://simplystatistics.org/wp-content/uploads/2014/03/pi21.png 5600w" sizes="(max-width: 5600px) 100vw, 5600px" /></a>

These observed counts should also be independent, and to explore this we can look at autocorrelation plots:

<a href="http://simplystatistics.org/2014/03/14/using-bioconductor-to-find-some-empirical-evidence-in-support-of-%cf%80-being-a-normal-number/piacf-2/" rel="attachment wp-att-2794"><img class="alignnone size-full wp-image-2794" src="http://simplystatistics.org/wp-content/uploads/2014/03/piacf1.png" alt="piacf" width="5600" height="3000" srcset="http://simplystatistics.org/wp-content/uploads/2014/03/piacf1-1024x548.png 1024w, http://simplystatistics.org/wp-content/uploads/2014/03/piacf1.png 5600w" sizes="(max-width: 5600px) 100vw, 5600px" /></a>

To do this in about an hour and with just a few lines of code (included below), I used the [Bioconductor](http://www.bioconductor.org/) [Biostrings](http://www.bioconductor.org/packages/release/bioc/html/Biostrings.html) package to match strings and the _foreach_ function to parallelize.

` 
  
NB: A normal number has the above stated property in any base. The examples above a for base 10.
