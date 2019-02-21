---
title: The role of academia in data science education
author: Rafael Irizarry
date: '2018-11-01'
slug: the-role-of-academia-in-data-science-education
---

I was recently asked to moderate an academic panel on the role of universities in training the data science workforce. I preceded each question with opinionated introductions which I have fused into this blog post. These are weakly held opinions so please consider commenting if you disagree with anything.

To discuss data science education we first need to clearly state what it means. The panel organizers defined data science as "__an emerging discipline that draws upon knowledge in statistical methodology and computer science to create impactful predictions and insights for a wide range of traditional scholarly fields.__"
But is it an academic discipline? If so, what are the shared fundamental principles, expertise, skills, and knowledge-based shared by data scientists?  Is there a core curriculum for _Data Science_? Providing a more detailed definition might help.

## My attempt at defining _Data Science_

The term _Data Sciece_ may have been [coined in academia](https://en.wikipedia.org/wiki/Data_science#History), but the proliferation of its use has been mostly driven by the tech industry. The term became prominent because recruiters needed to more specifically describe what they needed for data driven initiatives, a new type of project becoming more and more common. Post graduate degrees in Statistics or Computer Science did not guarantee the expertise needed to successfully complete these projects. Programming skills and experience analyzing messy, complex and large datasets were fundamental. But because **you can obtain a PhD in Statistics without ever looking at a real dataset** _statistician_ was not a specific enough job title. And because  **you can obtain a PhD in Computer Science without ever writing one line of code**  _computer scientist_ was not specific enough either. Statisticians and computer scientist could be good hires, but not always. On the other hand,
some graduates from other areas, such as the social sciences and particle physics, had enough experience managing and analyzing data to be hired. So **the credentials provided by universities did not provide a useful signal to these employers**. The academic knowledge base offered by Statistics and Computer Science was necessary, but was not sufficient. The term _data scientist_ therefore became useful for making the distinction between, for example, someone with experience analyzing data in all its messy glory versus someone that can prove an estimate is asymptotically normal or making the distinction between someone that knows how to write fast, efficient, interoperable, and reliable code to extract/insert data from a database versus someone that can prove if an algorithm is Np complete.

However, because the challenges posed by data driven enterprises vary greatly across different organizations, and even within organization, the term remains quite vague. As a result the best definition I can provide is that data science is an umbrella term used by organizations to describe the processes used to extract value from data. 

## The data science areas of expertise

So what falls under the data science umbrella? First, I make one big distinction between _back-end_ and _front-end_ data science. I define the back-end as the part that deals with hardware, efficient computing, and data storage infrastructure. I define the front end as the part geared more towards data analysis and can be further divided into **data analysts** and  **applied machine learners**. The data analysts 
explore, quality assess, wrangle, and fit models to data. The applied machine learners build and assess prediction algorithms. Domain knowledge is of course important for both these tasks. Often, to finish the project the front-end data scientist develops a prototype that the back-end data scientists convert into robust pipelines. As a result front-end data scientist tend to use R or Python, while back-end data scientist program in low-level languages such as C++ and database languages such as SQL.

Another data science area of expertise is defined by what I call the _frontend software engineers_. These are not necessarily involved in producing data science pipelines but instead develop the software tools that facilitate data science. They tend to have experience as front-end data scientist and use this experience to develop tools that many others find useful. Examples are the developers of Rstudio, iPython notebooks, tidyverse, Hadoop and D3 to name a few. Because academia tends to favor method developers (by methods I mean mathematical abstractions that permit data analysis ideas to be applied more widely than its original application) over software developers, this group tends to work outside of academia (with exceptions) and prefer being labeled _data scientists_ even if they have PhDs in Statistics or Computer Science.


## The implication for academic programs

Having the goal of training an individual to be an expert that can tackle all the challenges involved in the data science process is too ambitious. However, as the term _Data Science_ became more and more fashionable, demand for Data Science education increased accordingly. Universities rushed to figure out how to meet this demand. Developing revenue generating masters programs was the first priority and, as a result, today we have dozens of universities offering these degrees. But what exactly are these students being prepared to do? What do  these new programs offer that existing ones did not? Given that, with some exceptions, no new faculty were hired when creating these new programs and, in many cases, no new classes were developed, it is not clear that a masters degree in Data Science provides the signal employers are looking for. 

Clearly, existing academic courses provide excellent ways of gaining some of the expertise listed above. These include courses on discrete math, probability, statistical inference an modeling, computer programming, software engineering principles, and machine learning. But this was true before Data Science programs emerged.  So what can academia do to better prepare students from the data science workforce and to provide a better signal to industry. Here are my recommendations.

1. Realize that _Data Science_ is an umbrella term and offer specific tracks targeted at the different aspects of data science listed above. Three tracks might be enough but one isn't. 

2. Adapting statistics and machine learning course to have applications in the forefront rather than a theoretical focus. Data scientist have to produce pipelines that work in the real-world and one needs training to learn this. Implementation is hard.

3. Provide learning experiences that expose students to long-term projects like those they will be tasked to work on in industry. For this, many universities will have to invest in new faculty, with real-world experience. 

Let me know what you think.






