---
id: 1215
title: 'Mindlessly normalizing genomics data is bad - but ignoring unwanted variability can be worse'
date: 2013-04-26T10:49:08+00:00
author: Rafael Irizarry
al2fb_facebook_link_id:
  - 136171103105421_487380551317806
al2fb_facebook_link_time:
  - 2013-04-26T14:49:14+00:00
al2fb_facebook_link_picture:
  - post=http://simplystatistics.org/wp-content/uploads/2013/04/Screen-shot-2013-04-25-at-11.12.20-PM.png
dsq_thread_id:
  - 1237281871
categories:
  - Uncategorized
tags:
  - genomics
  - quantile normalization
slug: "mindlessly-normalizing-genomics-data-is-bad-but-ignoring-unwanted-variability-can-be-worse"
---
Yesterday, and bleeding over into today, [quantile normalization](http://www.ncbi.nlm.nih.gov/pubmed/12538238) (QN) was being discussed on Twitter. This is the [Yesterday, and bleeding over into today, [quantile normalization](http://www.ncbi.nlm.nih.gov/pubmed/12538238) (QN) was being discussed on Twitter. This is the](https://twitter.com/mbeisen/status/327563522185764864) that started the whole thing off. The conversation went a bunch of different directions and then this happened:

> well, this happens all over bio-statistics - ie, naive use in seemingly undirected ways until you get a "good" pvalue. And then end

So Jeff and I felt it was important to respond - since we are biostatisticians that work in genomics. We felt a couple of points were worth making:

1. **Most statisticians we know, including us, know QN's limitations and are always nervous about using QN**. But with most datasets we see, unwanted variability is overwhelming  and we are left with no choice but to normalize in orde to extract anything useful from the data.  In fact, many times QN is not enough and we have to apply further transformations, e.g., to remove [batch effects](http://www.ncbi.nlm.nih.gov/pubmed/20838408).

2. **We would be curious to know which biostatisticians were being referred to. **We would like some examples, because most of the genomic statisticians we know work very closely with biologists to aid them in cleaning dirty data to help them find real sources of signal. Furthermore, we encourage biologists to validate their results. In many cases, quantile normalization (or other transforms) are critical to finding results that validate and there is a long literature (both biological and statistical) supporting the importance of appropriate normalization.

3. **Assuming the data that you get (sequences, probe intensities, etc.) from high-throughput tech = direct measurement of abundance is incorrect.** Before worrying about QN (or other normalization) being an arbitrary transformation that distorts the data, keep in mind that what you want to measure has already been distorted by PCR, the imperfections of the microarray, scanner measurement error, image bleeding, cross hybridization or alignment artifacts, ozone effects, etc...

To go into a little more detail about the reasons that normalization may be important in many cases, so I have written a little more detail below with data if you are interested.

<!--more-->

Most, if not all, the high throughput data we have analyzed needs some kind of normalization. This applies to both microarrays and next-gen sequencing. To demonstrate why, below I include 5 boxplots of log intensities from 5 microarrays that were hybridized to the same RNA (technical replicates).

<a href="http://simplystatistics.org/2013/04/26/mindlessly-normalizing-genomics-data-is-bad-but-ignoring-unwanted-variability-can-be-worse/screen-shot-2013-04-25-at-11-12-20-pm/" rel="attachment wp-att-1216"><img class="wp-image-1216 alignleft" alt="Screen shot 2013-04-25 at 11.12.20 PM" src="http://simplystatistics.org/wp-content/uploads/2013/04/Screen-shot-2013-04-25-at-11.12.20-PM.png" width="285" height="271" srcset="http://simplystatistics.org/wp-content/uploads/2013/04/Screen-shot-2013-04-25-at-11.12.20-PM-300x285.png 300w, http://simplystatistics.org/wp-content/uploads/2013/04/Screen-shot-2013-04-25-at-11.12.20-PM.png 475w" sizes="(max-width: 285px) 100vw, 285px" /></a>

See the problem? If we took the data at face value we would conclude that there is a large (almost 2 fold) global change in expression when comparing, say, samples C and E. But they are technical replicates so the observed difference is not biologically driven. Discrepancies like these are the rule rather than the exception. Biologists seem to underestimate the amount of unwanted variability present in the data they produce. Look at enough data and you will quickly learn that, in most cases, unwanted experimental variability dwarfs the biological differences we are interested in discovering. Normalization is the statistical technique that saves biologists millions of dollars  a year by fixing this problem in silico rather than redoing the experiment.

For the data above you might be tempted to simply standardize the data by subtracting the median. But the problem is more complicated than that as shown in the plot below. This plot shows the log ratio (M) versus the average of the logs intensities (A) for two technical replicates in which 16 probes (red dots) have been "spiked-in" to have true fold changes of 2. The other ~20,000 probesets (blue streak) are supposed to be unchanged (M=0). See the curvature of the genes that are supposed to be at 0?  Taken at face value, thousands of the low expressed probes exhibit larger differential expression than the only 16 that are actually different. That's a problem. And standardizing by the subtracting the median won't fix it. Non-linear biases such as this one are also quite common.<a href="http://simplystatistics.org/2013/04/26/mindlessly-normalizing-genomics-data-is-bad-but-ignoring-unwanted-variability-can-be-worse/screen-shot-2013-04-25-at-11-14-20-pm/" rel="attachment wp-att-1218"><img class=" wp-image-1218 alignright" alt="Screen shot 2013-04-25 at 11.14.20 PM" src="http://simplystatistics.org/wp-content/uploads/2013/04/Screen-shot-2013-04-25-at-11.14.20-PM.png" width="483" height="275" /></a>

QN offers one solution to this problem  if you can assume that the true distribution of what you are measuring is roughly the same across samples. Briefly, QN forces each sample to have the same distribution. The after picture above is the result of QN. It removes the curvature but preserves most of the real differences.

So why should we be nervous? QN and other normalization techniques risk throwing the baby out with the bath water. What if there is a real global difference? If there is, and you use QN, you will miss it and you may introduce artifacts. _But the assumptions are no secret and it's up to the biologists to decide if they are reasonable._ At the same time, we have to be very careful about interpreting large scale changes given that we see large scale changes when we know there are none. Other than cases were global differences are forced or simulated, I have yet to see a good example in which QN causes more harm than good. I'm sure there are some real data examples out there, so if you have one please share, as I would love to use it as an example in class.

Also note that statisticians (including me) are working hard at deciphering ways  to normalize without the need for such strong assumptions. Although in their first incarnation they were useless, current control probes/transcripts techniques are promising. We have used them in the past to [normalize methylation data](http://www.ncbi.nlm.nih.gov/pubmed/20858772) (a similar approach was used [here](http://www.ncbi.nlm.nih.gov/pubmed/23101621) for gene expression data). And then there is <a style="font-size: 16px;" href="http://www.ncbi.nlm.nih.gov/pubmed/20976876">subset quantile normalization</a>. I am sure there are others and more to come. So Biologists, don't worry, we have your backs and serve at your pleasure. In the meantime don't be so afraid of QN: at least give it a try before you knock it.
