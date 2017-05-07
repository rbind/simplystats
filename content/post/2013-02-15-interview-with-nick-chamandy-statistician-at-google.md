---
id: 1025
title: Interview with Nick Chamandy, statistician at Google
date: 2013-02-15T12:09:01+00:00
author: Jeff Leek
al2fb_facebook_link_id:
  - 136171103105421_462253027163892
al2fb_facebook_link_time:
  - 2013-02-15T17:09:07+00:00
al2fb_facebook_link_picture:
  - post=http://simplystatistics.org/?al2fb_image=1
dsq_thread_id:
  - 1085478767
categories:
  - Uncategorized
slug: "interview-with-nick-chamandy-statistician-at-google"
---
<div dir="ltr">
  <div>
    <strong>Nick Chamandy</strong>
  </div>
  
  <div>
  </div>
  
  <div>
    <a href="http://simplystatistics.org/2013/02/15/interview-with-nick-chamandy-statistician-at-google/person_photo/" rel="attachment wp-att-1029"><img class="alignnone size-full wp-image-1029" alt="person_photo" src="http://simplystatistics.org/wp-content/uploads/2013/02/person_photo.png" width="190" height="235" /></a>
  </div>
  
  <div>
  </div>
  
  <div>
    Nick Chamandy received his M.S. in statistics from the University of Chicago, his Ph.D. in statistics at McGill University and joined Google as a statistician. We talked to him about how he ended up at Google, what software he uses, and how big the Google data sets are. To read more interviews - check out our <a href="http://simplystatistics.org/interviews/">interviews page</a>.
  </div>
  
  <div>
  </div>
  
  <div>
  </div>
  
  <div>
  </div>
  
  <div>
  </div>
  
  <div>
    <strong>SS: Which term applies to you: data scientist, statistician, computer scientist, or something else?</strong>
  </div>
  
  <p>
    NC: I usually use the term Statistician, but at Google we are also known as Data Scientists or Quantitative Analysts. All of these titles apply to some degree. As with many statisticians, my day to day job is a mixture of analyzing data, building models, thinking about experiments, and trying to figure out how to deal with large and complex data structures. When posting job opportunities, we are cognizant that people from different academic fields tend to use different language, and we don't want to miss out on a great candidate because he or she comes from a non-statistics background and doesn't search for the right keyword. On my team alone, we have had successful "statisticians" with degrees in statistics, electrical engineering, econometrics, mathematics, computer science, and even physics. All are passionate about data and about tackling challenging inference problems.
  </p>
  
  <div>
    <p>
      <strong>SS: How did you end up at Google?</strong>
    </p>
  </div>
  
  <p>
    Coming out of my PhD program at McGill, I was somewhat on the fence about the academia vs. industry decision. Ideally I wanted an opportunity that combined the intellectual freedom and stimulation of academia with the concreteness and real-world relevance of industrial problems. Google seemed to me at the time (and still does) to be by far the most exciting place to pursue that happy medium. The culture at Google emphasizes independent thought and idea generation, and the data are staggering in both size and complexity. That places us squarely on the "New Frontier" of statistical innovation, which is really motivating. I don't know of too many other places where you can both solve a research problem and have an impact on a multi-billion dollar business in the same day.
  </p>
  
  <div>
    <p>
      <strong>SS: Is your work related to the work you did as a Ph.D. student?</strong>
    </p>
  </div>
  
  <p>
    NC: Although I apply many of the skills I learned in grad school on a daily basis, my PhD research was on Gaussian random fields, with particular application to brain imaging data. The bulk of my work at Google is in other areas, since I work for the Ads Quality Team, whose goal is to quantify and improve the experience that users have interacting with text ads on the <a href="http://google.com/" target="_blank">google.com</a> search results page. Once in a while though, I come across data sets with a spatial or spatio-temporal component and I get the opportunity to leverage my experience in that area. Some examples are eye-tracking studies run by the user research lab (measuring user engagement on different parts of the search page), and click pattern data. These data sets typically violate many of the assumptions made in neuroimaging applications, notably smoothness and isotropy conditions. And they are predominantly 2-D applications, as opposed to 3-D or higher.
  </p>
  
  <div>
    <p>
      <strong>What is your programming language of choice, R, Python or something else?  </strong>
    </p>
  </div>
  
  <p>
    I use R, and occasionally matlab, for data analysis. There is a large, active and extremely knowledgeable R community at Google. Because of the scale of Google data, however, R is typically only useful after a massive data aggregation step has been accomplished. Before that, the data are not only too large for R to handle, but are stored on many thousands of machines. This step is usually accomplished using the MapReduce parallel computing framework, and there are several Google-developed scripting languages that can be used for this purpose, including Go. We also have an interactive, ad hoc query language which can be applied to massive, "sharded" data sets (even those with a nested structure), and for which there is an R API. The engineers at Google have also developed a truly impressive package for massive parallelization of R computations on hundreds or thousands of machines. I typically use shell or python scripts for chaining together data aggregation and analysis steps into "pipelines".
  </p>
  
  <div>
    <p>
      <strong>SS: How big are the data sets you typically handle? Do you extract them yourself or does someone else extract them for you?</strong>
    </p>
  </div>
  
  <p>
    Our data sets contain billions of observations before any aggregation is done. Even after aggregating down to a more manageable size, they can easily consist of 10s of millions of rows, and on the order of 100s of columns. Sometimes they are smaller, depending on the problem of interest. In the vast majority of cases, the statistician pulls his or her own data -- this is an important part of the Google statistician culture. It is not purely a question of self-sufficiency. There is a strong belief that without becoming intimate with the raw data structure, and the many considerations involved in filtering, cleaning, and aggregating the data, the statistician can never truly hope to have a complete understanding of the data. For massive and complex data, there are sometimes as many subtleties in whittling down to the right data set as there are in choosing or implementing the right analysis procedure. Also, we want to guard against creating a class system among data analysts -- every statistician, whether BS, MS or PhD level, is expected to have competence in data pulling. That way, nobody becomes the designated data puller for a colleague. That said, we always feel comfortable asking an engineer or other statistician for help using a particular language, code library, or tool for the purpose of data-pulling. That is another important value of the Google culture -- sharing knowledge and helping others get "unstuck".
  </p>
  
  <div>
    <p>
      <strong>Do you work collaboratively with other statisticians/computer scientists at Google? How do projects you work on get integrated into Google's products, is there a process of approval?</strong>
    </p>
  </div>
  
  <p>
    Yes, collaboration with both statisticians and engineers is a huge part of working at Google. In the Ads Team we work on a variety of flavours of statistical problems, spanning but not limited to the following categories: (1) Retrospective analysis with the goal of understanding the way users and advertisers interact with our system; (2) Designing and running randomized experiments to measure the impact of changes to our systems; (3) Developing metrics, statistical methods and tools to help evaluate experiment data and inform decision-making; (4) Building models and signals which feed directly into our engineering systems. "Systems" here are things like the algorithms that decide which ads to display for a given query and context.
  </p>
  
  <p>
    Clearly (2) and (4) require deep collaboration with engineers -- they can make the changes to our production codebase which deploy a new experiment or launch a new feature in a prediction model. There are multiple engineering and product approval steps involved here, meant to avoid introducing bugs or features which harm the user experience. We work with engineers and computer scientists on (1) and (3) as well, but to a lesser degree. Engineers and computer scientists tend to be extremely bright and mathematically-minded people, so their feedback on our analyses, methodology and evaluation tools is pretty invaluable!
  </p>
  
  <div>
    <p>
      <strong>Who have been good mentors to you during your career? Is there something in particular they did to help you?</strong>
    </p>
  </div>
  
  <p>
    I've had numerous important mentors at Google (in addition, of course, to my thesis advisors and professors at McGill). Largely they are statisticians who have worked in industry for a number of years and have mastered the delicate balance between deep-thinking a problem and producing something quick and dirty that can have an immediate impact. Grad school teaches us to spend weeks thinking about a problem and coming up with an elegant or novel methodology to solve it (sometimes without even looking at data). This process certainly has its place, but in some contexts a better outcome is to produce an unsophisticated but useful and data-driven answer, and then refine it further as needed. Sometimes the simple answer provides 80% of the benefit, and there is no reason to deprive the consumers of your method this short-term win while you optimize for the remaining 20%. By encouraging the "launch and iterate" mentality for which Google is well-known, my mentors have helped me produce analysis, models and methods that have a greater and more immediate impact.
  </p>
  
  <div>
    <p>
      <strong>What skills do you think are most important for statisticians/data scientists moving into the tech industry?</strong>
    </p>
  </div>
  
  <p>
    Broadly, statisticians entering the tech industry should do so with an open mind. Technically speaking, they should be comfortable with heavy-tailed, poorly-behaved distributions that fail to conform to assumptions or data structures underlying the models taught in most statistics classes. They should not be overly attached to the ways in which they currently interact with data sets, since most of these don't work for web-scale applications. They should be receptive to statistical techniques that require massive amounts of data or vast computing networks, since many tech companies have these resources at their disposal. That said, a statistician interested in the tech industry should not feel discouraged if he or she has not already mastered large-scale computing or the hottest programming languages. To me, it is less about what skills one must brush up on, and much more about a willingness to adaptively learn new skills and adjust one's attitude to be in tune with the statistical nuances and tradeoffs relevant to this New Frontier of statistics. Statisticians in the tech industry will be well-served by the classical theory and techniques they have mastered, but at times must be willing to re-learn things that they have come to regard as trivial. Standard procedures and calculations can quickly become formidable when the data are massive and complex.
  </p>
</div>

<div>
</div>
