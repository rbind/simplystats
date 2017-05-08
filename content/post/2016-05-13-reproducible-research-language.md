---
title: Disseminating reproducible research is fundamentally a language and communication problem
author: Roger Peng
comments: true
slug: "reproducible-research-language"
date: 2016-05-13
---

Just about 10 years ago, I wrote my [first](http://www.ncbi.nlm.nih.gov/pubmed/16510544) of many articles about the importance of reproducible research. Since that article, one of the points I've made is that the key issue to resolve was one of tools and infrastructure. At the time, many people were concerned that people would not want to share data and that we had to spend a lot of energy finding ways to either compel or incentivize them to do so. But the reality was that it was difficult to answer the question "What should I do if I desperately want to make my work reproducible?" Back then, even if you could convince a clinical researcher to use R and LaTeX to create a [Sweave](https://en.wikipedia.org/wiki/Sweave) document (!), it was not immediately obvious where they should host the document, code, and data files.

Much has happened since then. We now have knitr and Markdown for live documents (as well as iPython notebooks and the like). We also have git, GitHub, and friends, which provide free code sharing repositories in a distributed manner (unlike older systems like CVS and Subversion). With the recent announcement of the [Journal of Open Source Software](http://www.arfon.org/announcing-the-journal-of-open-source-software), posting code on GitHub can now be recognized within the current system of credits and incentives. Finally, the number of [data](http://dataverse.org) [repositories](https://osf.io) has grown, providing more places for researchers to deposit their data files. 

Is the tools and infrastructure problem solved? I'd say yes. One thing that has become clear is that disseminating reproducible research is **no longer a software problem**. At least in R land, building live documents that can be executed by others is straightforward and not too difficult to pick up (thank you [John Gruber](https://daringfireball.net/projects/markdown/)!). For other languages there many equivalent (if not better) tools for writing documents that mix code and text. For this kind of thing, there's just no excuse anymore. Could things be optimized a bit for some edge cases? Sure, but the tools are prefectly fine for the vast majority of use cases. 

But now there is a bigger problem that needs to be solved, which is that **we do not have an effective way to communicate data analyses**. One might think that publishing the full code and datasets is the perfect way to communicate a data analysis, but in a way, it is too perfect. That approach can provide too much information. 

I find the following analogy useful for discussing this problem. If you look at music, one way to communicate music is to provide an audio file, a standard WAV file or something similar. In a way, that is a near-perfect representation of the music---bit-for-bit---that was produced by the performer. If I want to experience a Beethoven symphony the way that it was meant to be experienced, I'll listen to a [recording of it](https://itun.es/us/TudVe?i=79443286). 

But if I want to understand how Beethoven wrote the piece---the process and the details---the recording is not a useful tool. What I look at instead is [the score](http://www.amazon.com/dp/0486260348). The recording is a serialization of the music. The score provides an expanded representation of the music that shows all of the different pieces and how they fit together. A person with a good ear can often reconstruct the score, but this is a difficult and time-consuming task. Better to start with what the composer wrote originally.

Over centuries, classical music composers developed a language and system for communicating their musical ideas so that

1. there was enough detail that a 3rd party could interpret the music and perform it to a level of accuracy that satisfied the composer; but
2. it was not so prescriptive or constraining so that different performers could not build on the work and incorporate their own ideas

It would seem that traditional computer code satisfies those criteria, but I don't think so. Traditional computer code (even R code) is designed to communicate programming concepts and constructs, not to communicate data analysis constructs. For example, a `for` loop is not a data analysis concept, even though we may use `for` loops all the time in data analysis. 

Because of this disconnect between computer code and data analysis, I often find it difficult to understand what a data analysis is doing, even if it is coded very well. I imagine this is what programmers felt like when programming in processor-specific [assembly language](https://en.wikipedia.org/wiki/Assembly_language). Before languages like C were developed, where high-level concepts could be expressed, you had to know the gory details of how each CPU operated. 

The closest thing that I can see to a solution emerging is the work that Hadley Wickham is doing with packages like [dplyr](https://github.com/hadley/dplyr) and [ggplot2](https://github.com/hadley/ggplot2). The `dplyr` package's verbs (`filter`, `arrange`, etc.) represent data manipulation concepts that are meaningful to analysts. But we still have a long way to go to cover all of data analysis in this way.

Reproducible research is important because it is fundamentally about communicating what you have done in your work. Right now we have a sub-optimal way to communicate what was done in a data analysis, via traditional computer code. I think developing a new approach to communicating data analysis could have a few benefits:

1. It would provide greater transparency
2. It would allow others to more easily build on what was done in an analysis by extending or modifying specific elements
3. It would make it easier to understand what common elements there were across many different data analyses
4. It would make it easier to teach data analysis in a systematic and scalable way

So, any takers?
