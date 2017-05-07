---
id: 2029
title: Platforms and Integration in Statistical Research (Part 1/2)
date: 2013-10-15T10:21:50+00:00
author: Roger Peng
al2fb_facebook_link_id:
  - 136171103105421_555643151158212
al2fb_facebook_link_time:
  - 2013-10-15T14:21:54+00:00
al2fb_facebook_link_picture:
  - post=http://simplystatistics.org/?al2fb_image=1
dsq_thread_id:
  - 1859972721
categories:
  - Uncategorized
slug: "platforms-and-integration-in-statistical-research-part-12"
---
In the technology world today, one of the common topics of interest is the so-called "war" between Apple and Google (or Android). This war is ostensibly over dominance of the mobile phone industry, where Apple sells the most popular phone but Google/Android (as an operating system) controls over half the market. (Android phones themselves are manufactured by a variety of companies and no one of those companies sells more phones than Apple.)

**Apple vs. Google (vs. Microsoft)**

Apple's model is to own the entire (or most of the) development of the phone. They build the hardware, the software, and create the design. They also control the App Store for selling their own software and third party software, distribute the music from their iTunes store, and distribute the e-books through their iBookstore. They even have their own proprietary messaging platform. This "walled-garden" approach is a hallmark of Apple and its famously controlling founder Steve Jobs. Rather than "walled-garden", I would call it more of an "integrative" approach, where Apple essentially has its fingers in all the relevant pies, controlling every aspect.

The Google/Android approach is more modular and involves controlling the platform on which pretty much every phone could theoretically be built. Until recently, Google did not build their own phones, but rather let other companies build the phones and use Google's operating system as the software for the phone. The model here is similar to the [Unix philosophy](http://en.wikipedia.org/wiki/Unix_philosophy), which is to "do one thing well". Google is really good at developing Android and handset manufacturers are really good at building phones. There's no point in one company doing two things moderately well when you could have two companies each do one thing really well. Here, Google focuses on the platform, the Android operating system, and tries to spread it as far and wide as possible to cover the most possible phones, tablets, watches, whatever mobile device is relevant.

For us older people, the more relevant "war" is between Microsoft and everyone else. Microsoft built one of the most legendary platforms in computer history\---the Windows operating system. For decades this platform was (and continues to be) the dominant operating system for personal desktop computers. Although Microsoft never really focused on building its own hardware, Microsoft's impact on the PC world through its control of Windows is undeniable. Unfortunately, an asterisk must be put next to all of this history because we now know that much of this dominance was achieved through [criminal activity](http://en.wikipedia.org/wiki/United_States_v._Microsoft_Corp.).

**Theory and Methods vs. Applications**

There's much debate in the technology world over which approach is better, the Apple integrative model or the Google/Microsoft modular platform model. I think this "debate" exists because it's fun to argue about Apple vs. Google and it gives technology reporters something to write about. When the dust settles (if ever) I think the answer will be "it depends".

In the statistical community I find there's often an analogous debate that goes on regarding which is the more important form of statistical activity, theory/methods or applications. In a nutshell (perhaps even a cartoon nutshell) there's a sense that theoretical or abstract methodological development has a greater impact because it is broadly generalizable to many different areas. Applications work is less impactful because it is focused on a specific area and any lessons learned that might be applicable to other areas would only be realized much later.

We could spend a lot of time debating the specific arguments here (and I have already spent that time!) but I think a better way to frame this debate is to use the analogy of Apple and Google, that is between integrative statistical research and platforms research. In particular, I think the "theory vs. applications" moniker is a bit outdated and does not cover many of the recent developments in the field of statistics.

**Platforms in Statistics**

When I was in graduate school and learning about being a statistician, it was pretty much hammered into my brain that the ultimate goal of a statistician is to build a platform. It was not described to me in those words, but that was the essential message. The basic idea was that you would develop a new method that was as general as possible so that it could be applied to a wide variety of fields, from agriculture to zoology. Ideally, you would demonstrate that this method was better than any other method through some sort of theorem.

They ultimate platform in statistics might be the _t_-test, or perhaps the _p_-value. Those two statistical methods are used in some form in almost any scientific context you could possibly imagine. I'd argue that the p-value is the Microsoft Windows of science. (Much like with Windows, you could argue this is for better or for worse.) Other essential platforms in statistics might be linear regression, generalized linear models, the bootstrap, the EM algorithm, etc. If you could be the developer of one of these platforms your impact would be tremendous because everyone in every discipline would use it. That's why Ronald Fisher should be the [most influential scientist ever](http://simplystatistics.org/2012/03/07/r-a-fisher-is-the-most-influential-scientist-ever/).

I think the notion of a platform, rather than theory/methods, is a much more useful context here because it more accurately describes why these things are so important. Generalized linear models may be interesting because they represent an abstract concept of linear relationships, but it's useful because it's a platform on which a ton of other research in many other fields can be built. If we accept the idea that something is important because it serves as a platform on which many other things can be built, then I think this idea encompasses more than what might be published in the pages of the _Journal of the American Statistical Association_ or the _Annals of Statistics_.

In particular, I think one of the greatest statistical platforms developed in the last 10 to 15 years is [R](http://www.r-project.org/). If you consider what R really is, yes it's a software package that does statistical calculations, but primarily it's a platform on which an enormous community of people can build things. The Comprehensive R Archive Network is the "App Store" through which statisticians can develop and distribute their tools. R itself has been extended (through packages) and applied to almost every imaginable scientific discipline. Take one look at the [Task Views](http://cran.r-project.org/web/views/) section to get a sense of the diversity of areas to which R has been applied. Entire sub-projects (i.e. [Bioconductor](http://bioconductor.org)) have been developed around using R in specific fields of research. At this point the impact of R on both the sciences and on statistics is as undeniable as the _t_-test.

**Integrative Statistical Research**

Integrative research in statistics is something that I think harks back to a much earlier era in the history of statistics, the era in which the field of statistics didn't really exist. Before the field really had solidified itself as a separate discipline, people "doing statistics" [came from all areas of science as well as mathematics](http://simplystatistics.org/2011/09/10/what-is-a-statistician/). Here, the statistician was involved in all aspects of research and not just walled-off in a separate area dreaming up abstract methods. Many methods were later abstracted and generalized, but this largely grew out of an initial need to solve a specific problem.

As the field matured and separate Departments of Statistics started to appear, the discipline moved more towards a platform approach by focusing more on abstraction and generalizable approaches. It's easy to see why this move would occur. If you're trying to distinguish your discipline as being separate from other disciplines (and therefore deserving of separate resources), you need to demonstrate a unique contribution that is separate from the other fields and, in a sense, wall yourself off a little from the others. Given that computers were generally available at the time this move began, mathematics was the most useful and easily accessible tool to build new statistical platforms.

Today, I think the field of statistics is moving back towards the old model of integrating closer with scientists in other disciplines. In particular, we are seeing more and more people "invading" the field from other related areas like computer science, just like the old days. Personally, I think these "outsiders" should be welcomed under our tent as they bring unique insights to our field and provide a richness not otherwise obtainable.

With the integrative statistical research model we see more statisticians "embedded" into the sciences, in the the thick of it, so to speak, with involvement in every aspect. They publish in discipline-specific journals and in some cases are flat-out leading large-scale scientific collaborations. The reasons for this are many, but I think are centered around advances in computer technology that has allowed for the rapid collection of large and complex datasets and the easy implementation of sophisticated models. The heterogeneity and unique complexity of these different datasets has required statisticians to dig deeper into the field and learn more of the substantive details before a useful contribution can be made. This accumulation of deep knowledge of a field occurs at the expense of being able to work in many different fields at once, or as John Tukey said, to "play in everyone's backyard".

The integrative approach to statistical research is exciting because it allows for the statistician to have a direct impact on a scientific discipline rather than a more indirect one through developing platforms. However, the approach is resource intensive in that it requires an interdisciplinary research environment with [good collaborators](http://simplystatistics.org/2011/10/20/finding-good-collaborators/) in the relevant disciplines. As such, it may only be possible to take the integrative approach in certain institutions and environments. I think a similar argument could be made with respect to conducting platform research but I think there are many cases there where it was not strictly necessary.

In the next post, I'll talk a bit (and give examples) about where I think the platform and integrative approaches may be more or less fruitful.
