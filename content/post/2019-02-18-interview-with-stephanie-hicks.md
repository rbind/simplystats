---
title: Interview with Stephanie Hicks
author: ~
date: '2019-02-18'
slug: interview-with-stephanie-hicks
categories: []
tags: []
---

_Editor's note: For a while we ran an interview series for statisticians and data scientists, but things have gotten a little hectic around here so we've dropped the ball! But we are re-introducing the series, starting with Stephanie Hicks. If you have recommendations of a (junior) person in academics or industry you would like to see promoted, reach out to Jeff (@jtleek) on Twitter!_

_Stephanie Hicks received her PhD in statistics in 2013 at Rice University and has already made major contributions to the analysis of single cell sequencing data and the theory and practice of teaching data science._


_SS: Do you consider yourself a statistician, biostatistician, data scientist or something else?_ 

SH: Fantastic question! I’m a statistician by training, and I work in a department of biostatistics, so I would be remiss if I didn’t answer a statistician. However my interests are at the intersection of statistics, data science, genomics and education. Broadly, my research interests are to leverage statistical methods and computational algorithms to effectively derive knowledge from data. I’m also very interested in identifying better ways to teach students how to do that. I work a lot with genomics data, but I also analyze data from many other areas. You might think of this as data science, so I could easily imagine someone classifying myself as an ‘academic data scientist’ if such a thing exists?  

_SS: How did you end up at Johns Hopkins (i.e. your history)?_

SH: I received my B.S. in Mathematics in 2007 rom LSU and my M.A. and Ph.D. in 2013 from the Department of Statistics at Rice University under the direction of Marek Kimmel and Sharon Plon (@splon). I completed my postdoctoral training with Rafael Irizarry (@rafalab) in the Department of Data Sciences at Dana-Farber Cancer Institute and Department of Biostatistics at Harvard T.H. Chan School of Public Health. While I was a postdoc, I had the opportunity to meet many students from the Johns Hopkins Biostatistics Department at the Women in Statistics Conference in Cary, North Carolina in 2014. The following year, I attended the ROpenSci Unconference and teamed up with Roger Peng, Hilary Parker and David Robinson to work on the explainr and catsplainr R packages. Given this department been a pioneer in developing statistical methods for the analysis of genomics data and in data science education, I couldn’t think of a better department to join. 

_SS: What are the problems that most excite you right now?_ 

SH: Within the world of genomics, I’m most excited about open challenges and problems in what’s often referred to as “single-cell genomics”. There is a great potential for using this data that measure features or traits (such as measuring what genes are expressed) in individual cells to help find better diagnoses, prognoses and treatments for many diseases. There are not only open statistical challenges to this data, but also computational challenges. For example, datasets being generated are frequently so large that they cannot even be read into memory. Therefore, one of my projects is to make unsupervised learning methods, such as k-means, scalable to millions of observations (or cells) by combining on-disk data representations (such as HDF5 files) and performing computations on small, random batches of observations so they can be stored in memory and analyzed in a scalable manner. 

_SS: Are you working on any non-research data science projects you are excited about? What are they?_ 

SH: So many! Let’s see, I just focus on one, but happy to talk about more. 

If you close your eyes and say the word ’teacher’, ’doctor or nurse’, ‘pilot’, ‘chef’: these are all jobs that most people, including children, can easily visualize and conceptualize. I have two young children who easily get inspired from the books that we read. Last year, I went to look for children’s book featuring women in statistics or data science and couldn’t find any. To address this, I’m working with a team of awesome individuals to create a children’s book featuring women in statistics and data science. My goal with this book is to allow for young children to visualize and conceptualize what it means to be a statistician or data scientist. And even more importantly, highlight women to have been trailblazers in these fields, so little girls reading this book may one day be inspired to learn more about statistics and data science and may even choose this career. 

_SS: What do you see as the most exciting ways to incorporate data science into academia?_

Within the world of data science, I’m super interested in finding new ways to teach students how to analyze data in a format that is efficient, effective and scalable. There is a ton of exciting curriculum development happening across the world, and I hope to contribute to that as well. For example, I’m interested in teaching students how to analyze data using the case-study based approach that was pioneered by Deb Nolan and Terry Speed in 1999. My postdoc advisor and I wrote a guide for teaching data science courses based on our teaching experiences. This fall, Roger Peng and I used this approach to teach an Introduction to Data Science course offered in our department at Hopkins (https://jhu-advdatasci.github.io/2018/). 

_SS: You started R ladies Baltimore, what is it about that community that inspired you to create the Baltimore branch?_

R-Ladies is an amazing global organization that has a goal of achieving proportionate representation by encouraging, inspiring, and empowering people of genders currently underrepresented in the R community. It was started by Gabriela de Queiroz in San Francisco in October 2012 who wanted to give back to her local community after going to several meetups and learning a lot for free, but saw disparity in gender diversity. Since then R-Ladies has grown to 138 chapters in 44 countries and 39000 members. It is also now funded by the R-Consortium. 

As an active user and developer of R packages, I know first hand how intimidating it can be to get started using R as both a new user and a gender minority in the R community. I started R-Ladies Baltimore (https://rladies-baltimore.github.io) to create a community in Baltimore for underrepresented minorities to grow their knowledge, experience and skills in R, to confidently ask questions, to learn and support each other, and to contribute new R code and packages for their own projects. We have meetups every two months and try to think creatively about how we can inspire our attendees to learn and use R. One of my favorite meetups was in the fall where we met to make holiday card designs in R (https://rladies-baltimore.github.io/post/making-holiday-cards-in-r-2018/).  