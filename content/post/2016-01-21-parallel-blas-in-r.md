---
id: 4593
title: Parallel BLAS in R
date: 2016-01-21T11:53:07+00:00
author: Roger Peng
pe_theme_meta:
  - 'O:8:"stdClass":2:{s:7:"gallery";O:8:"stdClass":3:{s:2:"id";s:2:"-1";s:5:"width";s:0:"";s:6:"height";s:0:"";}s:5:"video";O:8:"stdClass":1:{s:2:"id";s:2:"-1";}}'
al2fb_facebook_link_id:
  - 136171103105421_912827282106462
al2fb_facebook_link_time:
  - 2016-01-21T16:53:16+00:00
al2fb_facebook_link_picture:
  - post=http://simplystatistics.org/?al2fb_image=1
dsq_thread_id:
  - 4511122506
categories:
  - Uncategorized
slug: "parallel-blas-in-r"
---
I'm working on a new chapter for my R Programming book and the topic is parallel computation. So, I was happy to see this tweet from David Robinson (@drob) yesterday:

<blockquote class="twitter-tweet" lang="en">
  <p dir="ltr" lang="en">
    How fast is this <a href="https://twitter.com/hashtag/rstats?src=hash">#rstats</a> code? x <- replicate(5e3, rnorm(5e3)) x %*% t(x) For me, w/Microsoft R Open, 2.5sec. Wow. <a href="https://t.co/0SbijNxxVa">https://t.co/0SbijNxxVa</a>
  </p>
  
  <p>
    — David Robinson (@drob) <a href="https://twitter.com/drob/status/689916280233562112">January 20, 2016</a>
  </p>
</blockquote>



What does this have to do with parallel computation? Briefly, the code generates 5,000 standard normal random variates, repeats this 5,000 times and stores them in a 5,000 x 5,000 matrix (\`x'). Then it computes x x'. The second part is key, because it involves a matrix multiplication.

Matrix multiplication in R is handled, at a very low level, by the library that implements the Basic Linear Algebra Subroutines, or BLAS. The stock R that you download from CRAN comes with what's known as a reference implementation of BLAS. It works, it produces what everyone agrees are the right answers, but it is in no way optimized. Here's what I get when I run this code on my Mac using Studio and the CRAN version of R for Mac OS X:

<pre>system.time({ x &lt;- replicate(5e3, rnorm(5e3)); tcrossprod(x) })
   user  system elapsed 
 59.622   0.314  59.927 
</pre>

Note that the "user" time and the "elapsed" time are roughly the same. Note also that I use the tcrossprod() function instead of the otherwise equivalent expression x %\*% t(x). Both crossprod() and tcrossprod() are generally faster than using the %\*% operator.

Now, when I run the same code on my built-from-source version of R (version 3.2.3), here's what I get:

<pre>system.time({ x &lt;- replicate(5e3, rnorm(5e3)); tcrossprod(x) })
   user  system elapsed 
 14.378   0.276   3.344 
</pre>

Overall, it's faster when I don't run the code through RStudio (14s vs. 59s). Also on this version the elapsed time is about 1/4 the user time. Why is that?

The build-from-source version of R is linked to Apple's Accelerate framework, which is a large library that includes an optimized BLAS library for Intel chips. This optimized BLAS, in addition to being optimized with respect to the code itself, is designed to be multi-threaded so that it can split work off into chunks and run them in parallel on multi-core machines. Here, the tcrossprod() function was run in parallel on my machine, and so the elapsed time was about a quarter of the time that was "charged" to the CPU(s).

David's tweet indicated that when using Microsoft R Open, which is a custom built binary of R, that the (I assume?) elapsed time is 2.5 seconds. Looking at the attached link, it appears that Microsoft's R Open is linked against [Intel's Math Kernel Library](https://software.intel.com/en-us/intel-mkl) (MKL) which contains, among other things, an optimized BLAS for Intel chips. I don't know what kind of computer David was running on, but assuming it was similarly high-powered as mine, it would suggest Intel's MKL sees slightly better performance. But either way, both Accelerate and MKL achieve that speed up through custom-coding of the BLAS routines and multi-threading on multi-core systems.

If you're going to be doing any linear algebra in R (and you will), it's important to link to an optimized BLAS. Otherwise, you're just wasting time unnecessarily. Besides Accelerate (Mac) and Intel MKL, theres AMD's [ACML](http://developer.amd.com/tools-and-sdks/archive/amd-core-math-library-acml/) library for AMD chips and the [ATLAS](http://math-atlas.sourceforge.net) library which is a general purpose tunable library. Also [Goto's BLAS](https://www.tacc.utexas.edu/research-development/tacc-software/gotoblas2) is optimized but is not under active development.
