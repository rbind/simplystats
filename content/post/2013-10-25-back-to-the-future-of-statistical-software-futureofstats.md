---
id: 2107
title: '(Back to) The Future of Statistical Software #futureofstats'
date: 2013-10-25T08:24:52+00:00
author: Roger Peng
al2fb_facebook_link_id:
  - 136171103105421_560679420654585
al2fb_facebook_link_time:
  - 2013-10-25T12:24:57+00:00
al2fb_facebook_link_picture:
  - post=http://simplystatistics.org/?al2fb_image=1
dsq_thread_id:
  - 1898995613
categories:
  - Uncategorized
slug: "back-to-the-future-of-statistical-software-futureofstats"
---
In anticipation of the upcoming [Unconference on the Future of Statistics](http://simplystatistics.org/unconference/) next Wednesday at 12-1pm EDT, I thought I'd dig up what people in the past had said about the future so we can see how things turned out. In doing this I came across an old National Academy of Sciences report from 1991 on the [Future of Statistical Software](http://www.nap.edu/catalog.php?record_id=1910). This was a panel discussion hosted by the National Research Council and summarized in this volume. I believe you can download the entire volume as a PDF for free from the NAS web site.

The entire volume is a delight to read but I was particularly struck by Daryl Pregibon's presentation on "Incorporating Statistical Expertise into Data Analysis Software" (starting on p. 51). Pregibon describes his (unfortunate) experience trying to develop statistical software which has the ability to incorporate expert knowledge into data analysis. In his description of his goals, it's clear in retrospect that he was incredibly ambitious to attempt to build a kind of general-purpose statistical analysis machine. In particular, it was not clear how to incorporate subject matter information.

> <div title="Page 63">
>   <div>
>     <div>
>       <div>
>         <p>
>           [T]he major factor limiting the number of people using these tools was the recognition that (subject matter) context was hard to ignore and even harder to incorporate into software than the statistical methodology itself. Just how much context is required in an analysis? When is it used? How is it used? The problems in thoughtfully integrating context into software seemed overwhelming.
>         </p>
>       </div>
>     </div>
>   </div>
> </div>

Pregibon skirted the problem of integrating subject matter context into statistical software.

> <div title="Page 64">
>   <div>
>     <div>
>       <div>
>         <p>
>           I am not talking about integrating context into software. That is ultimately going to be important, but it cannot be done yet. The expertise of concern here is that of carrying out the plan, the sequence of steps used once the decision has been made to do, say, a regression analysis or a one-way analysis of variance. Probably the most interesting things statisticians do take place before that.
>         </p>
>       </div>
>     </div>
>   </div>
> </div>

Statisticians (and many others) tend to focus on the application of the "real" statistical method--the regression model, lasso shrinkage, or support vector machine. But as much painful experience in a variety of fields has demonstrated, much what happens before the application of the key model is as important, or even more important.

Pregibon makes an important point that although statisticians are generally resistant to incorporating their own expertise into software, they have no problem writing textbooks about the same topic. I've observed the same attitude when I talk about [evidence-based data analysis](http://simplystatistics.org/2013/08/28/evidence-based-data-analysis-treading-a-new-path-for-reproducible-research-part-2/). If I were to guess, the problem is that textbooks are still to a certain extent abstract, while software is 100% concrete.

> <div title="Page 62">
>   <p>
>     Initial efforts to incorporate statistical expertise into software were aimed at helping inexperienced users navigate through the statistical software jungle that had been created…. Not surprisingly, such ideas were not enthusiastically embraced by the statistics community. Few of the criticisms were legitimate, as most were concerned with the impossibility of automating the “art” of data analysis. <strong>Statisticians seemed to be making a distinction between providing statistical expertise in textbooks as opposed to via software</strong>. [emphasis added]
>   </p>
> </div>

In short, Pregibon wanted to move data analysis from an _art_ to a _science_, more than 20 years ago! He stressed that data analysis, at that point in time, was not considered a process worth studying. I found the following paragraph interesting and worth considering in now, over 20 years later. He talks about the reasons for incorporating statistical expertise into software.

> <div title="Page 64">
>   <div>
>     <div>
>       <div>
>         <p>
>           The third [reason] is to study the data analysis process itself, and that is my motivating interest. Throughout American or even global industry, there is much advocacy of statistical process control and of understanding processes. <strong>Statisticians have a process they espouse but do not know anything about</strong>. It is the process of putting together many tiny pieces, the process called data analysis, and is not really understood. Encoding these pieces provides a platform from which to study this process that was invented to tell people what to do, and about which little is known. [emphasis added]
>         </p>
>       </div>
>     </div>
>   </div>
> </div>

<div title="Page 64">
  <p>
    I believe we have come quite far since 1991, but I don't think we no much more about the process of data analysis, especially in newer areas that involve newer data. The reason is because the field has not put much effort into studying the whole data analysis process.  I think there is still a resistance to studying this process, in part because it involves "stooping" to analyze data and in part because it is difficult to model with mathematics. In his presentation, Pregibon suggests that resampling methods like the bootstrap might allow us to skirt the mathematical difficulties in studying data analysis processes.
  </p>
  
  <p>
    One interesting lesson Pregibon relates during the development of REX, an early system that failed, involves the difference between the end-goals of statisticians and non-statisticians:
  </p>
  
  <blockquote>
    <div title="Page 68">
      <p>
        Several things were learned from the work on REX. The first was that statisticians wanted more control. There were no users, rather merely statisticians looking over my shoulder to see how it was working. Automatically, people reacted negatively. They would not have done it that way. In contrast, non-statisticians to whom it was shown loved it. They wanted less control. In fact they did not want the system--they wanted answers.
      </p>
    </div>
  </blockquote>
</div>
