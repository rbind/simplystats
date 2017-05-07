---
id: 4018
title: '20 years of Data Science: from Music to Genomics'
date: 2015-11-24T10:00:56+00:00
author: Rafael Irizarry
pe_theme_meta:
  - 'O:8:"stdClass":2:{s:7:"gallery";O:8:"stdClass":3:{s:2:"id";s:2:"-1";s:5:"width";s:0:"";s:6:"height";s:0:"";}s:5:"video";O:8:"stdClass":1:{s:2:"id";s:2:"-1";}}'
dsq_thread_id:
  - 3751090935
al2fb_facebook_link_id:
  - 136171103105421_886939608028563
al2fb_facebook_link_time:
  - 2015-11-24T15:01:09+00:00
al2fb_facebook_link_picture:
  - post=http://www.biostat.jhsph.edu/~ririzarr/Demo/img7.gif
categories:
  - Uncategorized
slug: "20-years-of-data-science-and-data-driven-discovery-from-music-to-genomics"
---
I finally got around to reading David Donoho's [50 Years of Data Science](https://dl.dropboxusercontent.com/u/23421017/50YearsDataScience.pdf) paper.  I highly recommend it. The following quote seems to summarize the sentiment that motivated the paper, as well as why it has resonated among academic statisticians:

<div class="page" title="Page 5">
  <div class="layoutArea">
    <div class="column">
      <blockquote>
        <p>
          The statistics profession is caught at a confusing moment: the activities which preoccupied it over centuries are now in the limelight, but those activities are claimed to be bright shiny new, and carried out by (although not actually invented by) upstarts and strangers.
        </p>
      </blockquote>
    </div>
  </div>
</div>

The reason we started this blog over four years ago was because, as Jeff wrote in his inaugural post, we were "[fired up about the new era where data is abundant and statisticians are scientists](http://simplystatistics.org/2011/09/07/first-things-first/)". It was clear that many disciplines were becoming data-driven and  that interest in data analysis was growing rapidly. We were further motivated because, despite this [new found interest in our work](http://simplystatistics.org/2014/09/15/applied-statisticians-people-want-to-learn-what-we-do-lets-teach-them/), academic statisticians were, in general, more interested in the development of context free methods than in leveraging applied statistics to take [leadership roles](http://simplystatistics.org/2012/06/22/statistics-and-the-science-club/) in data-driven projects. Meanwhile, great and highly visible applied statistics work was occurring in other fields such as astronomy, computational biology, computer science, political science and economics. So it was not completely surprising that some (bio)statistics departments were being left out from larger university-wide data science initiatives. Some of [our](http://simplystatistics.org/2014/07/25/academic-statisticians-there-is-no-shame-in-developing-statistical-solutions-that-solve-just-one-problem/) [posts](http://simplystatistics.org/2013/04/15/data-science-only-poses-a-threat-to-biostatistics-if-we-dont-adapt/) exhorted academic departments to embrace larger numbers of applied statisticians:

> [M]any of the giants of our discipline were very much interested in solving specific problems in genetics, agriculture, and the social sciences. In fact, many of today’s most widely-applied methods were originally inspired by insights gained by answering very specific scientific questions. I worry that the balance between application and theory has shifted too far away from applications. An unfortunate consequence is that our flagship journals, including our applied journals, are publishing too many methods seeking to solve many problems but actually solving none.  By shifting some of our efforts to solving specific problems we will get closer to the essence of modern problems and will actually inspire more successful generalizable methods.

Donoho points out that John Tukey had a similar preoccupation 50 years ago:

<div class="page" title="Page 10">
  <div class="layoutArea">
    <div class="column">
      <blockquote>
        <p>
          For a long time I have thought I was a statistician, interested in inferences from the particular to the general. But as I have watched mathematical statistics evolve, I have had cause to wonder and to doubt. ... All in all I have come to feel that my central interest is in data analysis, which I take to include, among other things: procedures for analyzing data, techniques for interpreting the results of such procedures, ways of planning the gathering of data to make its analysis easier, more precise or more accurate, and all the machinery and results of (mathematical) statistics which apply to analyzing data
        </p>
      </blockquote>
      
      <p>
        Many applied statisticians do the things Tukey mentions above. In the blog we have encouraged them to <a href="http://simplystatistics.org/2014/09/15/applied-statisticians-people-want-to-learn-what-we-do-lets-teach-them/">teach the gory details of what what they do</a>, along with the general methodology we currently teach. With all this in mind, several months ago, when I was invited to give a talk at a department that was, at the time, deciphering their role in their university's data science initiative, I gave a talk titled<em> 20 years of Data Science: from Music to Genomics. </em>The goal was to explain why <em>applied statistician</em> is not considered synonymous with <em>data scientist </em>even when we focus on the same goal: <a href="https://en.wikipedia.org/wiki/Data_science">extract knowledge or insights from data.</a>
      </p>
      
      <p>
        The first example in the talk related to how academic applied statisticians tend to emphasize the parts that will be most appreciated by our math stat colleagues and ignore the aspects that are today being heralded as the linchpins of data science. I used my thesis papers as examples. <a href="http://archive.cnmat.berkeley.edu/Research/1998/Rafael/tesis.pdf">My dissertation work</a> was about finding meaningful parametrization of musical sound signals that<img class="wp-image-4449 alignright" src="http://www.biostat.jhsph.edu/~ririzarr/Demo/img7.gif" alt="Spectrogram" width="380" height="178" /> my collaborators could use to manipulate sounds to create new ones. To do this, I prepared a database of sounds, wrote code to extract and import the digital representations from CDs into S-plus (yes, I'm that old), visualized the data to motivate models, wrote code in C (or was it Fortran?) to make the analysis go faster, and tested these models with residual analysis by ear (you can listen to them <a href="http://www.biostat.jhsph.edu/~ririzarr/Demo/">here</a>). None of these data science aspects were highlighted in the <a href="http://www3.stat.sinica.edu.tw/statistica/oldpdf/A10n42.pdf">papers</a> <a href="http://www.tandfonline.com/doi/abs/10.1198/000313001300339969#.Vk4_ht-rQUE">I</a> <a href="http://www.tandfonline.com/doi/abs/10.1198/016214501750332875#.Vk4_mN-rQUE">wrote </a><a href="http://www.tandfonline.com/doi/abs/10.1198/016214501753168082#.Vk4_qt-rQUE">about</a> my <a href="http://onlinelibrary.wiley.com/doi/10.1111/1467-9892.01515/abstract?userIsAuthenticated=false&deniedAccessCustomisedMessage=">thesis</a>. Here is a screen shot from <a href="http://onlinelibrary.wiley.com/doi/10.1111/1467-9892.01515/abstract">this paper</a>:
      </p>
    </div>
  </div>
</div>

[<img class="wp-image-4449 aligncenter" src="http://simplystatistics.org/wp-content/uploads/2016/05/Screen-Shot-2015-04-15-at-12.24.40-PM.png" alt="Screen Shot 2015-04-15 at 12.24.40 PM" width="320" height="342" srcset="http://simplystatistics.org/wp-content/uploads/2016/05/Screen-Shot-2015-04-15-at-12.24.40-PM-957x1024.png 957w, http://simplystatistics.org/wp-content/uploads/2016/05/Screen-Shot-2015-04-15-at-12.24.40-PM-187x200.png 187w, http://simplystatistics.org/wp-content/uploads/2016/05/Screen-Shot-2015-04-15-at-12.24.40-PM.png 1204w" sizes="(max-width: 320px) 100vw, 320px" />](http://simplystatistics.org/wp-content/uploads/2016/05/Screen-Shot-2015-04-15-at-12.24.40-PM.png)

I am actually glad I wrote out and published all the technical details of this work.  It was great training. My point was simply that based on the focus of these papers, this work would not be considered data science.

The rest of my talk described some of the work I did once I transitioned into applications in Biology. I was fortunate to have a [department chair](http://www.jhsph.edu/faculty/directory/profile/3859/scott-zeger) that appreciated lead-author papers in the subject matter journals as much as statistical methodology papers. This opened the door for me to become a full fledged applied statistician/data scientist. In the talk I described how [developing software packages,](http://bioinformatics.oxfordjournals.org/content/20/3/307.short) [planning](http://www.nature.com/nmeth/journal/v2/n5/abs/nmeth756.html) the [gathering of data](http://www.nature.com/nmeth/journal/v4/n11/abs/nmeth1102.html) to [aid method development](http://www.ncbi.nlm.nih.gov/pubmed/?term=16108723), developing [web tools](http://www.ncbi.nlm.nih.gov/pubmed/14960458) to assess data analysis techniques in the wild, and facilitating [data-driven discovery](http://www.ncbi.nlm.nih.gov/pubmed/19151715) in biology has been very gratifying and, simultaneously, helped my career. However, at some point, early in my career, senior members of my department encouraged me to write and submit a methods paper to a statistical journal to go along with every paper I sent to the subject matter journals. Although I do write methods papers when I think the ideas add to the statistical literature, I did not follow the advice to simply write papers for the sake of publishing in statistics journals. Note that if (bio)statistics departments require applied statisticians to do this, then it becomes harder to have an impact as data scientists. Departments that are not producing widely used methodology or successful and visible applied statistics projects (or both), should not be surprised when they are not included in data science initiatives. So, applied statistician, read that Tukey quote again, listen to [President Obama](https://youtu.be/vbb-AjiXyh0), and go do some great data science.

&nbsp;



&nbsp;
