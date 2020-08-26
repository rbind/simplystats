---
title: Palantir Shows Its Cards
author: Roger Peng
date: '2020-08-26'
slug: palantir-shows-its-cards
---

File this under long-term followup, but just about four years ago [I wrote about Palantir](https://simplystatistics.org/2016/05/11/palantir-struggles/), the previously secretive but now soon to be public data science company, and how its valuation was a commentary on the value of data science more generally. Well, just recently Palantir filed to go public and therefore submitted a [registration statement (S-1)](https://www.sec.gov/Archives/edgar/data/1321655/000119312520230013/d904406ds1.htm#rom904406_9) describing its business. It's a fascinating read, if you're into that kind of stuff.

But the important thing is that Palantir itself summarized the question I asked more than 4 years ago. In their enumeration of risk factors, one risk factor they highlight is

> If our customers are not able or willing to accept our **product-based business model**, instead of a **labor-based business model**, our business and results of operations could be negatively impacted. [emphasis added]

In my original post I wrote about the "Data Science Spectrum", which has consulting on one end and software on the other.

![Data Science Spectrum](/post/2020-08-26-palantir-shows-its-cards_files/DS_Spectrum2.png)

The point of the diagram was that businesses on the right hand side have huge valuations while businesses on the left side have merely large valuations. The people running Palantir clearly understand this and are trying to push the company in a software-based productized direction. 

Here's the rest of their summary of this risk factor:

> Our platforms are generally offered on a productized basis to minimize our customers’ overall cost of acquisition, maintenance, and deployment time of our platforms. Many of our customers and potential customers are instead generally familiar with the practice of purchasing or licensing software through labor contracts, where custom software is written for specific applications, the intellectual property in such software is often owned by the customer, and the software typically requires additional labor contracts for modifications, updates, and services during the life of that specific software. Customers may be unable or unwilling to accept our model of commercial software procurement. Should our customers be unable or unwilling to accept this model of commercial software procurement, our growth could be materially diminished, which could adversely impact our business, financial condition, results of operations, and growth prospects.

Those of us who do data analysis for a living already know this to be true. Custom consulting is not scalable, and therefore, not as valuable as a piece of boxed up software, which is infinitely scalable.

## Show Me The Numbers

So, how is Palantir doing?

At first glance it seems their doing pretty well. Their gross profit (Revenue - Cost of Revenue) suggests about a 72% gross margin percentage for 2018 and 67% for 2019, which both seem high. These gross margin percentages are in software company territory. (For comparison, Facebook's percentage runs around 80%.) This suggests that each dollar of Palantir's revenue does not have a lot of direct costs associated with it.

But ulimately, Palantir has posted net losses every year, indicating there are significant indirect costs to generating that revenue. In particular, their Sales and marketing costs almost equal their entire gross profit. Reading through the S-1 this ultimately is not surprising. Palantir itself admits that

> Our sales efforts involve considerable time and expense and our sales cycle is often long and unpredictable.

Alas, there is some consulting to do after all. My guess is that much of the up front "sales" work comes down to Palantir having to

1. Figure out a customer's problem and what question they're asking;
2. Figure out how a customer's data are organized;
3. Figure out how to their existing software products to the customer's specific situation.

This should sound familiar to seasoned data scientists. Indeed, this is **almost all the work** of the data scientist. This is expensive because it requires humans to do it and there's typically not much to generalize from customer to customer. Implementing the software and deploying it is work too, but is often more straightforward and their are often existing solutions that can be employed.


## The Road to Profits

So here's the problem: Palantir's route to profitability involves making these costs go down...a lot. Maybe not to zero, but substantially, because each new customer---with their different problems and different data---costs a lot to acquire. If they can do this, they've cracked the nut of data science scalability. 

Another big expense is Research and Development, which the company describes as developing new methods for data analysis (machine learning tools, etc.). While it's nice to have room to do open-ended research on new data science tools, my guess is that this line item goes down a lot in the near future, as it often does at companies that start off with large R&D budgets. Ultimately, it would save Palantir ~$300 million a year.

See you in another four years?


