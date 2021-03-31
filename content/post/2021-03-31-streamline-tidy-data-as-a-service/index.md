---
title: Streamline - tidy data as a service
author: Roger Peng
date: '2021-03-31'
slug: streamline-data-science
---


_Tldr: We started a company called Streamline Data Science https://streamlinedatascience.io/ that offers tidy data as a service. We are looking for customers, partnerships and employees as we scale up after closing our funding round!_ 

Most of my career, I have worked in the muck of data cleaning. In the world of genomics, a lot of my research has focused on batch effects, synthesizing big genomic data into usable formats, and generally making data easier to use. A couple of years ago, we also started a company called Problem Forward Data Science. Problem Forward offered fractional data science services to a variety of businesses around the country, from the very big corporations to startups just getting started. We were asked to do a lot of different types of data work, everything from turning spreadsheets into dashboards to building complicated forecasting models. But no matter the project, whether in government, academia, or industry, we always ended up with the same problem.

> We needed to clean the data before we could do the data science. 

This will be no surprise to anyone who has worked in data science or analytics, but the data almost always led to setbacks and frustration when we were working with our clients. Customers wanted complex AI, insightful dashboards, or easy reports, but the data just weren’t ready for that yet. And we wasted a huge amount of time cleaning the data over and over again.

We realized that the most common challenge companies have is that their data processing and management pipelines aren’t ready for analytics. Or as Google so eloquently puts it:

> [“Everyone wants to do the model work, not the data work”](https://research.google/pubs/pub49953/)

We realized that this was a service that many businesses needed. They needed someone who could come in and set up a data processing pipeline for them, manage it, and make sure the data were up to date. Some people call this Extract Load Transform (ELT), but we found it goes a bit beyond that. It is figuring out what format is most useful for the people who rely on data and working backward to create a customized and unique data pipeline that gets the data ready to use.

The ELT pipeline we set up is designed to consistently output [“tidy data”](https://vita.had.co.nz/papers/tidy-data.pdf) that makes it easy for our customers to use BI tools like Tableau or Looker and to ingest their data without having to do all the ugly data work that is painful and time-consuming. 

We piloted this for one of our startup customers - we built their data pipeline and provided ongoing management, maintenance, and upkeep. When they hired their first data scientist, they were able to quickly create dashboards for their whole business because they already had easy-to-use, tidy data. 

We got so excited about this data dry cleaning idea that we started a new company called [Streamline Data Science](https://streamlinedatascience.io/) that solely focuses on tidy data as a service. We just closed our seed round and are now working with our first set of customers to set up their data pipelines. The cool thing is we found that our most excited customers were the ones that already had a data scientist on the team. This seems a little counter-intuitive until you realize that we handle the painful/boring bits of data management so they can focus on the fun part. 

The interesting thing about Streamline is that it isn’t a product. There are a ton of complicated tools out there that you can use to set up your own data pipeline. Streamline is a service that handles all your data issues for you so the data “just works”. It can often be a lot cheaper than building out a full stack data engineering team in house. 

If you are a company that is worried about the state of your data - they are difficult to share, to manage, and to quality control - [we’d love to hear from you](https://streamlinedatascience.io/data-consumers)! We would also love to hear from you [if you are a data scientist or analyst](https://streamlinedatascience.io/data-professionals) at a company that is frustrated about how much time you are spending on data management and cleaning.

I’ll write more in the future about how we figured out setting up a data pipeline efficiently and the problems Streamline solves. We will also be releasing our first public data Streamlines that you can play with. In the meantime, I wanted to share how excited I am to finally be working on solving the first mile of data science and building a company that can help Baltimore grow its data science community. 

