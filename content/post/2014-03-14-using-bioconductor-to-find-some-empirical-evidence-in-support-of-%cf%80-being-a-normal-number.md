---
id: 2769
title: How to use Bioconductor to find empirical evidence in support of π being a normal number
date: 2014-03-14T10:00:19+00:00
author: Rafael Irizarry
dsq_thread_id:
  - 2411168109
al2fb_facebook_link_id:
  - 136171103105421_10201783300043814
al2fb_facebook_link_time:
  - 2014-03-14T14:00:28+00:00
al2fb_facebook_link_picture:
  - post=http://simplystatistics.org/wp-content/uploads/2014/03/pi2.png
categories:
  - Uncategorized
tags:
  - R
slug: "using-bioconductor-to-find-some-empirical-evidence-in-support-of-%cf%80-being-a-normal-number"
---
Happy π day everybody!

I wanted to write some simple code (included below) to the test parallelization capabilities of my  new cluster. So, in honor of  π day, I decided to check for [evidence that π is a normal number](http://www.davidhbailey.com/dhbpapers/normality.pdf). A [normal number](http://en.wikipedia.org/wiki/Normal_number) is a real number whose infinite sequence of digits has the property that picking any given random m digit pattern is 10<sup>−m</sup>. For example, using the Poisson approximation, we can predict that the pattern "123456789" should show up between 0 and 3 times in the [first billion digits of π](http://stuff.mit.edu/afs/sipb/contrib/pi/) (it actually shows up twice starting, at the 523,551,502-th and  773,349,079-th decimal places).

To test our hypothesis, let Y<sub>1</sub>, ..., Y<sub>100</sub> be the number of "00", "01", ...,"99" in the first billion digits of  π. If  π is in fact normal then the Ys should be approximately IID binomials with N=1 billon and p=0.01.  In the qq-plot below I show Z-scores (Y - 10,000,000) /  √9,900,000) which appear to follow a normal distribution as predicted by our hypothesis. Further evidence for π being normal is provided by repeating this experiment for 3,4,5,6, and 7 digit patterns (for 5,6 and 7 I sampled 10,000 patterns). Note that we can perform a chi-square test for the uniform distribution as well. For patterns of size 1,2,3 the p-values were 0.84, <del>0.89,</del> 0.92, and 0.99.

<a href="http://simplystatistics.org/2014/03/14/using-bioconductor-to-find-some-empirical-evidence-in-support-of-%cf%80-being-a-normal-number/pi-3/" rel="attachment wp-att-2792"><img class="alignnone size-full wp-image-2792" alt="pi" src="http://simplystatistics.org/wp-content/uploads/2014/03/pi2.png" width="4800" height="3000" srcset="http://simplystatistics.org/wp-content/uploads/2014/03/pi2-300x187.png 300w, http://simplystatistics.org/wp-content/uploads/2014/03/pi2-1024x640.png 1024w, http://simplystatistics.org/wp-content/uploads/2014/03/pi2.png 4800w" sizes="(max-width: 4800px) 100vw, 4800px" /></a>

Another test we can perform is to divide the 1 billion digits into 100,000 non-overlapping segments of length 10,000. The vector of counts for any given pattern should also be binomial. Below I also include these qq-plots.

<a href="http://simplystatistics.org/2014/03/14/using-bioconductor-to-find-some-empirical-evidence-in-support-of-%cf%80-being-a-normal-number/pi2/" rel="attachment wp-att-2793"><img class="alignnone size-full wp-image-2793" alt="pi2" src="http://simplystatistics.org/wp-content/uploads/2014/03/pi21.png" width="5600" height="3000" srcset="http://simplystatistics.org/wp-content/uploads/2014/03/pi21-1024x548.png 1024w, http://simplystatistics.org/wp-content/uploads/2014/03/pi21.png 5600w" sizes="(max-width: 5600px) 100vw, 5600px" /></a>

These observed counts should also be independent, and to explore this we can look at autocorrelation plots:

<a href="http://simplystatistics.org/2014/03/14/using-bioconductor-to-find-some-empirical-evidence-in-support-of-%cf%80-being-a-normal-number/piacf-2/" rel="attachment wp-att-2794"><img class="alignnone size-full wp-image-2794" alt="piacf" src="http://simplystatistics.org/wp-content/uploads/2014/03/piacf1.png" width="5600" height="3000" srcset="http://simplystatistics.org/wp-content/uploads/2014/03/piacf1-1024x548.png 1024w, http://simplystatistics.org/wp-content/uploads/2014/03/piacf1.png 5600w" sizes="(max-width: 5600px) 100vw, 5600px" /></a>

To do this in about an hour and with just a few lines of code (included below), I used the [Bioconductor](http://www.bioconductor.org/) [Biostrings](http://www.bioconductor.org/packages/release/bioc/html/Biostrings.html) package to match strings and the `foreach` function to parallelize.

<pre>library(Biostrings)
library(doParallel)
registerDoParallel(cores = 48)
x=scan("pi-billion.txt",what="c")
x=substr(x,3,nchar(x)) ##remove 3.
x=BString(x)
n&lt;-length(x)
p &lt;- 1/(10^d)
par(mfrow=c(2,3))
for(d in 2:4){
    if(d&lt;5){
      patterns&lt;-sprintf(paste0("%0",d,"d"),seq(0,10^d-1))
    } else{
      patterns&lt;-sprintf(paste0("%0",d,"d"),sample(10^d,10^4)-1)
    }
    res &lt;- foreach(pat=patterns,.combine=c) %dopar% countPattern(pat,x)
    z &lt;- (res - n*p ) / sqrt( n*p*(1-p) )
    qqnorm(z,xlab="Theoretical quantiles",ylab="Observed z-scores",main=paste(d,"digits"))
    abline(0,1)
    ##correction: original post had length(res)
    if(d&lt;5) print(1-pchisq(sum ((res - n*p)^2/(n*p)),length(res)-1)) 
}
###Now count in segments
d &lt;- 1
m &lt;-10^5

patterns &lt;-sprintf(paste0("%0",d,"d"),seq(0,10^d-1))
res &lt;- foreach(pat=patterns,.combine=cbind) %dopar% {
    tmp&lt;-start(matchPattern(pat,x))
    tmp2&lt;-floor( (tmp-1)/m)
    return(tabulate(tmp2+1,nbins=n/m))
}
##qq-plots
par(mfrow=c(2,5))
p &lt;- 1/(10^d)
for(i in 1:ncol(res)){
    z &lt;- (res[,i] - m*p) / sqrt( m*p*(1-p)  )
     qqnorm(z,xlab="Theoretical quantiles",ylab="Observed z-scores",main=paste(i-1))
    abline(0,1)
}
##ACF plots
par(mfrow=c(2,5))
for(i in 1:ncol(res)) acf(res[,i])</pre>

NB: A normal number has the above stated property in any base. The examples above a for base 10.
