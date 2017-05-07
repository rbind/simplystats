---
id: 4177
title: Statistical Theory is our "Write Once, Run Anywhere"
date: 2015-08-09T11:19:53+00:00
author: Roger Peng
pe_theme_meta:
  - 'O:8:"stdClass":2:{s:7:"gallery";O:8:"stdClass":3:{s:2:"id";s:2:"-1";s:5:"width";s:0:"";s:6:"height";s:0:"";}s:5:"video";O:8:"stdClass":1:{s:2:"id";s:2:"-1";}}'
al2fb_facebook_link_id:
  - 136171103105421_842402855815572
al2fb_facebook_link_time:
  - 2015-08-09T15:20:00+00:00
al2fb_facebook_link_picture:
  - post=http://simplystatistics.org/?al2fb_image=1
dsq_thread_id:
  - 4017219676
categories:
  - Uncategorized
slug: "statistical-theory-is-our-write-once-run-anywhere"
---
Having followed the software industry as a casual bystander, I periodically see the tension flare up between the idea of writing "native apps", software that is tuned to a particular platform (Windows, Mac, etc.) and more cross-platform apps, which run on many platforms without too much modification. Over the years it has come up in many different forms, but they fundamentals are the same. Back in the day, there was Java, which was supposed to be the platform that ran on any computing device. Sun Microsystems originated the phrase "[Write Once, Run Anywhere](https://en.wikipedia.org/wiki/Write_once,_run_anywhere)" to illustrate the cross-platform strengths of Java. More recently, Steve Jobs famously [banned Flash](https://www.apple.com/hotnews/thoughts-on-flash/) from any iOS device. Apple is also moving away from standards like OpenGL and towards its own Metal platform.

What's the problem with "write once, run anywhere", or of cross-platform development more generally, assuming it's possible? Well, there are a [number of issues](https://en.wikipedia.org/wiki/Cross-platform#Challenges_to_cross-platform_development): often there are performance penalties, it may be difficult to use the native look and feel of a platform, and you may be reduced to using the "lowest common denominator" of feature sets. It seems to me that anytime a new meta-platform comes out that promises to relieve programmers of the burden of having to write for multiple platforms, it eventually gets modified or subsumed by the need to optimize apps for a given platform as much as possible. The need to squeeze as much juice out of an app seems to be too important an opportunity to pass up.

In statistics, theory and theorems are our version of "write once, run anywhere". The basic idea is that theorems provide an abstract layer (a "virtual machine") that allows us to reason across a large number of specific problems. Think of the [central limit theorem](https://en.wikipedia.org/wiki/Central_limit_theorem), probably our most popular theorem. It could be applied to any problem/situation where you have a notion of sample size that could in principle be increasing.

But can it be applied to every situation, or even any situation? This might be more of a philosophical question, given that the CLT is stated asymptotically (maybe we'll find out the answer eventually). In practice, my experience is that many people attempt to apply it to problems where it likely is not appropriate. Think, large-scale studies with a sample size of 10. Many people will use Normal-based confidence intervals in those situations, but they probably have very poor coverage.

Because the CLT doesn't apply in many situations (small sample, dependent data, etc.), variations of the CLT have been developed, as well as entirely different approaches to achieving the same ends, like confidence intervals, p-values, and standard errors (think bootstrap, jackknife, permutation tests). While the CLT an provide beautiful insight in a large variety of situations, in reality, one must often resort to a custom solution when analyzing a given dataset or problem. This should be a familiar conclusion to anyone who analyzes data. The promise of "write once, run anywhere" is always tantalizing, but the reality never seems to meet that expectation.

Ironically, if you look across history and all programming languages, probably the most "cross-platform" language is C, which was originally considered to be too low-level to be broadly useful. C programs run on basically every existing platform and the language has been completely standardized so that compilers can be written to produce well-defined output. The keys to C's success I think are that it's a very simple/small language which gives enormous (sometimes dangerous) power to the programmer, and that an enormous toolbox (compiler toolchains, IDEs) has been developed over time to help developers write applications on all platforms.

In a sense, we need "compilers" that can help us translate statistical theory for specific data analysis problems. In many cases, I'd imagine the compiler would "fail", meaning the theory was not applicable to that problem. This would be a Good Thing, because right now we have no way of really enforcing the appropriateness of a theorem for specific problems.

More practically (perhaps), we could develop [data analysis pipelines](http://simplystatistics.org/2012/08/27/a-deterministic-statistical-machine/) that could be applied to broad classes of data analysis problems. Then a "compiler" could be employed to translate the pipeline so that it worked for a given dataset/problem/toolchain.

The key point is to recognize that there is a "translation" process that occurs when we use theory to justify certain data analysis actions, but this translation process is often not well documented or even thought through. Having an explicit "compiler" for this would help us to understand the applicability of certain theorems and may serve to prevent bad data analysis from occurring.
