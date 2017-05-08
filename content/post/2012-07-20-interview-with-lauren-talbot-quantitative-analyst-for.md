---
id: 137
title: 'Interview with Lauren Talbot - Quantitative analyst for the NYC Financial Crime Task Force'
date: 2012-07-20T13:24:49+00:00
author: Admin
tumblr_simplystatistics_permalink:
  - http://simplystatistics.tumblr.com/post/27625049610/interview-with-lauren-talbot-quantitative-analyst-for
tumblr_simplystatistics_id:
  - 27625049610
dsq_thread_id:
  - 933782349
categories:
  - Uncategorized
tags:
  - data
  - interview
  - lauren talbot
  - NYC
  - open data
slug: "interview-with-lauren-talbot-quantitative-analyst-for"
---
<div class="im">
  <p>
    <strong>Lauren Talbot</strong>
  </p>
  
  <p>
    <img height="325" src="http://biostat.jhsph.edu/~jleek/lauren.png" width="250" />
  </p>
  
  <p>
    <strong><br /></strong>Lauren Talbot is a quantitative analyst for the New York City Financial Crime Task Force. Before working for NYC she was an analyst at Acumen LLC and got her degree in economics from Stanford University. She is a key player turning spatial data in NYC into new tools for government management. We talked to Lauren about her work, how she is using open data to do things like predict where fires might occur, and how she got started in the Financial Crime Task Force. 
  </p>
  
  <p>
    <strong>SS: Do you consider yourself a statistician, computer scientist, or something else?</strong>
  </p>
</div>

LT: A lot of us can&#8217;t call ourselves statisticians or computer scientists, even if that is a large part of what we do, because we never studied those fields formally. Quantitative or Data Analyst are popular job titles, but don&#8217;t really do justice to all the code infrastructure/systems you have to build and cultivate &#8212; you aren&#8217;t simply analyzing, you are matching and automating and illustrating, too. There is also a large creative aspect, because you have to figure out how to present the data in a way that is useful and compelling to people, many of whom have no prior experience working with data. So I am glad people have started using the term &#8220;Data Scientist,&#8221; even if makes me chuckle a little. Ideally I would call myself &#8220;Data Artist,&#8221; or &#8220;Data Whisperer,&#8221; but I don&#8217;t think people would take me seriously.

**SS: How did you end up in the NYC Mayor&#8217;s Financial Crimes Task Force?**

LT: I actually responded to a Craigslist posting. While I was still in the Bay Area (where I went to college), I was looking for jobs in NYC because I wanted to relocate back here, where I am originally from. I was searching for SAS programmer jobs, and finding a lot of stuff in healthcare that made me yawn a little. And then I had the idea to try the government jobs section. The Financial Crimes Task Force (now part of a broader citywide analytics effort under the Office of Policy and Strategic Planning) was one of two listings that popped up, and I read the description and immediately thought &#8220;dream job!&#8221; It has turned out to be even better than I imagined, because there is such a huge opportunity to make a difference &#8212; the Bloomberg administration is actually very interested in operationalizing insights from city data, so they are listening to the data people and using their work to inform agency resource allocation and even sometimes policy. My fellow are also just really fun and intelligent. I&#8217;m constantly impressed by how quickly they pick up new skills, get to the bottom of things, and jump through hoops to get things done. We also amuse and entertain each other throughout the day, which is awesome. 

<div class="im">
  <p>
    <strong>SS: Can you tell us about one of the more interesting cases you have tackled and how data analysis/statistics played into the case?</strong>
  </p>
</div>

LT: Since this is the NYC Mayor&#8217;s Office, dealing with city data, almost of our analyses are in some way location-based. We are trying to answer questions like, &#8220;what locations are most likely to have a catastrophic event (e.g. fire) in the near future?&#8221; This involves combining many disparate datasets such as fire data, buildings data, emergency calls data, city planning data, even garbage data. We use the tax lot ID as a common identifier, but many of the datasets do not come with this variable - they only have a text address or intersection. In many cases, the address is entered manually and has spelling mistakes. In the beginning, we were using a point-and-click geocoding tool that the city provides that reads the text field and assigns the tax lot ID. However, it was taking a long time to prepare the data so it could be used by the program, and the program was returning many errors. When we visually inspected the errors, we saw that they were caused by minor spelling differences and naming conventions. Now, almost every week we get new datasets in different structures, and we need to geocode them immediately before we can really work with them. So we needed a geocoding program that was automated and flexible, as well as capable of geocoding addresses and intersections with spelling errors and different conventions. Over the past few months, using publicly available city planning datasets and regular expressions, my side project has been creating such a program in SAS. My first test case was self-reported data created solely through user entry. This dataset, which could only be 40% geocoded using the original tool, is now 93% geocoded using the program we developed. The program is constantly evolving and improving. Now it is assigning block faces, spellchecking street and city names, and accounting for the occasional gaps in the data. We use it for everything.

<div class="im">
  <p>
    <strong>SS: What are the computational tools and ideas you use most frequently in your day to day work (R, databases, regression analysis, etc.)?</strong>
  </p>
</div>

LT: In the beginning, all of the data was sent to us in SQL or Excel, which was not very efficient. Now we are building a multi-agency SAS platform that can be used by programmers and non-programmers. Since there are so many data sources that can work together, having a unified platform creates new discoveries that agencies can use to be more efficient or effective. For example, a building investigator can use 311 noise complaints to uncover vacated properties that are being illegally occupied. The platform employs Palantir, which is an excellent front-end tool for playing around with the data and exploring many-to-many relationships.  Internally, my team has also used R, Python, Java, even VBA. Whatever gets the job done. We use a good mix of statistical tools. The bread and butter is usually manipulating and understanding new data sources, which is necessary before we can start trying to do something like run a multiple regression, for example. In the end, it&#8217;s really a mashup: text parsing, name matching, summarizing/describing/reporting using comparative statistics, geomapping, graphing, logistic regression, even kernel density, can all be part of the mix. Our guiding principle is to use the tool/analysis/strategy that has the highest return on investment of time and analyst resources for the city.

<div class="im">
  <p>
    <strong>SS: What are the challenges of working as a quantitative analyst in a regulatory role? Is it hard to make your analyses/discoveries understandable?</strong>
  </p>
</div>

LT: A lot of data analysts working in government have a difficult time getting agencies and policymakers to take action based on their work due to political priorities and organizational structures. We circumvent that issue by operating based on the needs and requests of the agencies, as well as paying attention to current events. An agency or official may come to us with a problem, and we figure out what we can deliver that will be of use to them. This starts a dialogue. It becomes an iterative process, and projects can grow and morph once we have feedback. Oftentimes, it is better to use a data-mining approach, which is more understandable to non-statisticians, rather than a regression, which can seem like a black box. For example, my colleague came up with an algorithm to target properties that were a high fire risk based on the presence of illegal conversion complaints and evidence that the property owner was under financial distress. He began with a simple list of properties for the Department of Buildings to focus on, and now they go out to inspect a list of places selected by his algorithm weekly. This video of the fire chief speaking about the project illustrates the challenges encountered and why the simpler approach was ultimately successful:<a href="http://www.youtube.com/watch?v=425QSx0U8lU&feature=youtube_gdata_player" target="_blank"><a href="http://www.youtube.com/watch?v=425QSx0U8lU&feature=youtube_gdata_player" target="_blank">http://www.youtube.com/watch?v=425QSx0U8lU&feature=youtube_gdata_player</a></a>

<div class="im">
  <p>
    <strong>SS: Do you have any advice for statisticians/data scientists who want to get involved with open government or government data analysis?</strong>
  </p>
</div>

LT: I&#8217;ve found that people in government are actually very open to and interested in using data. The first challenge is that they don&#8217;t know that the data they have is of value. To be the most effective, you should get in touch with the people who have subject matter expertise (usually employees who have been working on the ground for some time), interview them, check your assumptions, and share whatever you&#8217;re seeing in the data on an ongoing basis. Not only will both parties learn faster, but it helps build a culture of interest in the data. Once people see what is possible, they will become more creative and start requesting deliverables that are increasingly actionable. The second challenge is getting data, and the legal and social/political issues surrounding that. The big secret is that so much useful data is actually publicly available. Do your research &#8212; you may find what you need without having to fight for it. If what you need is protected, however, consider whether the data would still be useful to you if scrubbed of personally identifiable information. Location-based data is a good example of this. If so, see whether you can negotiate with the data owner to obtain only the parts needed to do your analysis. Finally, you may find that the cohort of data scientists in government is all too sparse, and too few people &#8220;speak your language.&#8221; Reach out and align yourself with people in other agencies who are also working with data. This is a great way to gain new insight into the goals and issues of your administration, as well as friends to support and advise you as you navigate &#8220;the system.&#8221;
