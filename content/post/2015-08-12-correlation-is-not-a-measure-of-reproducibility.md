---
id: 4192
title: Correlation is not a measure of reproducibility
date: 2015-08-12T10:33:25+00:00
author: Rafael Irizarry
pe_theme_meta:
  - 'O:8:"stdClass":2:{s:7:"gallery";O:8:"stdClass":3:{s:2:"id";s:2:"-1";s:5:"width";s:0:"";s:6:"height";s:0:"";}s:5:"video";O:8:"stdClass":1:{s:2:"id";s:2:"-1";}}'
al2fb_facebook_link_id:
  - 136171103105421_843690649020126
al2fb_facebook_link_time:
  - 2015-08-12T14:33:40+00:00
al2fb_facebook_link_picture:
  - post=http://simplystatistics.org/wp-content/uploads/2015/08/pearsonformula-300x55.png
dsq_thread_id:
  - 4025996562
categories:
  - Uncategorized
slug: "correlation-is-not-a-measure-of-reproducibility"
---
Biologists make wide use of correlation as a measure of reproducibility. Specifically, they quantify reproducibility with the correlation between measurements obtained from replicated experiments. For example, [the ENCODE data standards document](https://genome.ucsc.edu/ENCODE/protocols/dataStandards/ENCODE_RNAseq_Standards_V1.0.pdf) states

> A typical R<sup>2</sup> (Pearson) correlation of gene expression (RPKM) between two biological replicates, for RNAs that are detected in both samples using RPKM or read counts, should be between 0.92 to 0.98. Experiments with biological correlations that fall below 0.9 should be either be repeated or explained.

However, for reasons I will explain here, correlation is not necessarily informative with regards to reproducibility. The mathematical results described below are not inconsequential theoretical details, and understanding them will help you assess new technologies, experimental procedures and computation methods.

Suppose you have collected data from an experiment

<p style="text-align: center;">
  <em>x</em><sub>1</sub>, <em>x</em><sub>2</sub>,..., <em>x</em><sub>n</sub>
</p>

and want to determine if a second experiment replicates these findings. For simplicity, we represent data from the second experiment as adding unbiased (averages out to 0) and statistically independent measurement error _d_ to the first:

<p style="text-align: center;">
  <em>y</em><sub>1</sub>=<em>x</em><sub>1</sub>+<em>d</em><sub>1</sub>, <em>y</em><sub>2</sub>=<em>x</em><sub>2</sub>+<em>d</em><sub>2</sub>, ... <em>y</em><sub>n</sub>=<em>x</em><sub>n</sub>+<em>d</em><sub>n</sub>.
</p>

For us to claim reproducibility we want the differences

<p style="text-align: center;">
  <em>d</em><sub>1</sub>=<em>y</em><sub>1</sub>-<em>x</em><sub>1</sub>, <em>d</em><sub>2</sub>=<em>y</em><sub>2</sub>-<em>x</em><sub>2</sub>,<em>... </em>,<em>d</em><sub>n</sub>=<em>y</em><sub>n</sub>-<em>x</em><sub>n</sub>
</p>

to be "small". To give this some context, imagine the _x_ and _y_ are log scale (base 2) gene expression measurements which implies the _d_ represent log fold changes. If these differences have a standard deviation of 1, it implies that fold changes of 2 are typical between replicates. If our replication experiment produces measurements that are typically twice as big or twice as small as the original, I am not going to claim the measurements are reproduced. However, as it turns out, such terrible reproducibility can still result in correlations higher than 0.92.

To someone basing their definition of correlation on the current common language usage this may seem surprising, but to someone basing it on math, it is not. To see this, note that the mathematical definition of correlation tells us that because _d_ and _x_ are independent:

![](https://raw.githubusercontent.com/simplystats/simplystats.github.io/master/wp-content/uploads/2015/08/pearsonformula.png)
<!-- [<img class=" aligncenter" src="http://simplystatistics.org/wp-content/uploads/2015/08/pearsonformula-300x55.png" alt="pearsonformula" width="300" height="55" />](http://simplystatistics.org/wp-content/uploads/2015/08/pearsonformula.png) -->

This tells us that correlation summarizes the variability of _d_ relative to the variability of _x_. Because of the wide range of gene expression values we observe in practice, the standard deviation of _x_ can easily be as large as 3 (variance is 9). This implies we expect to see correlations as high as 1/sqrt(1+1/9) = 0.95, despite the lack of reproducibility when comparing _x_ to _y_.

Note that using Spearman correlation does not fix this problem. A Spearman correlation of 1 tells us that the ranks of _x_ and _y_ are preserved, yet doest not summarize the actual differences. The problem comes down to the fact that we care about the variability of _d_ and correlation, Pearson or Spearman, does not provide an optimal summary. While correlation relates to the preservation of ranks, a much more appropriate summary of reproducibly is the distance between _x_ and _y_ which is related to the standard deviation of the differences _d_. A very simple R command you can use to generate this summary statistic is:

<pre>sqrt(mean(d^2))</pre>

or the robust version:

<pre>median(abs(d)) ##multiply by 1.4826 for unbiased estimate of true sd
</pre>

The equivalent suggestion for plots it to make an [MA-plot](https://en.wikipedia.org/wiki/MA_plot) instead of a scatterplot.

But aren't correlations and distances directly related? Sort of, and this actually brings up another problem. If the _x_ and _y_ are standardized to have average 0 and standard deviation 1 then, yes, correlation and distance are directly related:

![](https://raw.githubusercontent.com/simplystats/simplystats.github.io/master/wp-content/uploads/2015/08/distcorr.png)
<!-- [<img class=" size-medium wp-image-4202 aligncenter" src="http://simplystatistics.org/wp-content/uploads/2015/08/distcorr-300x51.png" alt="distcorr" width="300" height="51" srcset="http://simplystatistics.org/wp-content/uploads/2015/08/distcorr-300x51.png 300w, http://simplystatistics.org/wp-content/uploads/2015/08/distcorr-260x44.png 260w, http://simplystatistics.org/wp-content/uploads/2015/08/distcorr.png 878w" sizes="(max-width: 300px) 100vw, 300px" />](http://simplystatistics.org/wp-content/uploads/2015/08/distcorr.png) -->

However, if instead _x_ and _y_ have different average values, which would put into question reproducibility, then distance is sensitive to this problem while correlation is not. If the standard devtiation is 1, the formula is:

&nbsp;

![](https://raw.githubusercontent.com/simplystats/simplystats.github.io/master/wp-content/uploads/2015/08/distcor2.png)
<!--[<img class=" size-medium wp-image-4204 aligncenter" src="http://simplystatistics.org/wp-content/uploads/2015/08/distcor2-300x27.png" alt="distcor2" width="300" height="27" srcset="http://simplystatistics.org/wp-content/uploads/2015/08/distcor2-300x27.png 300w, http://simplystatistics.org/wp-content/uploads/2015/08/distcor2-1024x94.png 1024w" sizes="(max-width: 300px) 100vw, 300px" />](http://simplystatistics.org/wp-content/uploads/2015/08/distcor2.png)-->

Once we consider units (standard deviations different from 1) then the relationship becomes even more complicated. Two advantages of distance you should be aware of are:

  1. it is in the same units as the data, while correlations have no units making it hard to interpret and select thresholds, and
  2. distance accounts for bias (differences in average), while correlation does not.

A final important point relates to the use of correlation with data that is not approximately normal. The useful interpretation of correlation as a summary statistic stems from the bivariate normal approximation: for every standard unit increase in the first variable, the second variable increased _r_ standard units, with _r_ the correlation. A  summary of this is [here](http://genomicsclass.github.io/book/pages/exploratory_data_analysis_2.html). However, when data is not normal this interpretation no longer holds. Furthermore, heavy tail distributions, which are common in genomics, can lead to instability. Here is an example of uncorrelated data with a single pointed added that leads to correlations close to 1. This is quite common with RNAseq data.

![](https://raw.githubusercontent.com/simplystats/simplystats.github.io/master/wp-content/uploads/2015/08/supp_figure_2.png)
<!-- [<img class=" size-medium wp-image-4208 aligncenter" src="http://simplystatistics.org/wp-content/uploads/2015/08/supp_figure_2-300x300.png" alt="supp_figure_2" width="300" height="300" srcset="http://simplystatistics.org/wp-content/uploads/2015/08/supp_figure_2-300x300.png 300w, http://simplystatistics.org/wp-content/uploads/2015/08/supp_figure_2-1024x1024.png 1024w, http://simplystatistics.org/wp-content/uploads/2015/08/supp_figure_2-200x200.png 200w" sizes="(max-width: 300px) 100vw, 300px" />](http://simplystatistics.org/wp-content/uploads/2015/08/supp_figure_2.png)-->

&nbsp;
