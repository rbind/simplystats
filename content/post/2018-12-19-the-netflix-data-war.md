---
title: The Netflix Data War
author: Roger Peng
date: '2018-12-19'
slug: the-netflix-data-war
---


A recent article in the Wall Street Journal, ["At Netflix, Who Wins When It’s Hollywood vs. the Algorithm?"](https://www.wsj.com/articles/at-netflix-who-wins-when-its-hollywood-vs-the-algorithm-1541826015?emailToken=43ff1b39ad606a5db59c9fcf2d69741fSCIKNr2MhQ2fDt14GnpJCnpmuOt4cIRNRVTmT3dVTRtcCRfo9MAfxHbyK7XQlCGz9nkhmaBGU/K/gkZ+EeG5tJ6k/mjzxfV4AzIWJiG6g529n+n9dS0XOrKDelzIe3qd&reflink=article_copyURL_share) by Shalini Ramachandran and Joe Flint details some of the internal debates within Netflix between the Los Angeles-based content team, which is in charge of developing and marketing new content for the streaming service, and the data team. The initial example described is an advertising image for a new show (“Grace and Frankie"") starring Jane Fonda and Lily Tomlin.

> After the streaming-video giant released the second season of the comedy “Grace and Frankie” in 2016, its product team put up an image to promote the show to U.S. subscribers that only included Ms. Fonda’s co-star, Lily Tomlin. Tests showed that more users clicked on the show when the photo didn’t include Ms. Fonda.

> The decision set off a high-pitched internal debate. The Los Angeles-based content team was concerned that Netflix risked alienating Ms. Fonda, and that the move could even violate her contract, while the tech group in the Los Gatos, Calif., headquarters argued the company shouldn’t ignore the data, according to people familiar with the discussions.

> In the end, Netflix chose to put images that included Ms. Fonda back in the mix.

With the caveat that news articles about internal workings of companies always only contain a sliver of what actually happened, I thought it was a useful place to launch a discussion about the activity of a data team and how it interfaces with other aspects of a company.

First off, anytime an article comes out like this detailing internal conflict, the first question to ask is always "Why is this article appearing now?" Most likely, it’s because one side feels like they are losing and is therefore talking to the press. My guess in this case, given the above-quoted example, is that the data team is losing some battles. Why is that? Don’t the data speak the truth? Why won’t people listen??

## The Whole Truth (or is it?)

It’s difficult to know what the data team did to analyze the situation here, but it probably went something like this:

1. "Gracie and Frankie" ran its first season prior to 2016 and so Netflix therefore had a season’s worth of data to look at, including how it was marketed and what was the response to the marketing
2. During that time, they likely A/B tested a number of marketing images of the show containing various combinations of the star actors.
3. Customers clicked on these different marketing images at different rates and presumably went on to watch the show at some rate.
4. The product team chose the marketing image that maximized the number of clicks.

This is where the story picks up. The data/product team proposed to use a marketing image that only includes Tomlin and the content team objected. What are the reasons for the objection? According to the article,

1. Potential contract violation concerning not putting Jane Fonda in the marketing image; and
2. Damaging a relationship with (i.e. “alienating”) a Hollywood star.

More guessing here, but the data team likely did *not* know the terms of the company’s contract with Fonda and probably did not consider the concern of maintaining a long-term relationship with an actor. The former is simply a factual issue that was likely not disclosed to the data team and the latter is vague and difficult to quantify even if it had been disclosed to the data team.

So, from a business perspective, what is the correct decision? What’s a data analyst at Netflix supposed to do? What is a successful data analysis in this case?

Given that the final marketing image did include Fonda, it would seem like the data analysis was unsuccessful because the ultimate decision went against “what the data said". On the other hand, the data (and the analysts) didn’t know anything about the contract terms and the need for a relationship. 


## The Whole Truth (and nothing but?)

I don’t think it’s right to declare data analytic failure when a decision seems to go against what the data recommend. In a previous article on Netflix (["Inside the Binge Factory"](https://www.vulture.com/2018/06/how-netflix-swallowed-tv-industry.html), Vulture reporter Josef Adalian talked to Cindy Holland and Ted Sarandos, who are in charge of content at Netflix:

> Sarandos and Holland tell me, again, that while data is a tool for them, their various projection models and cost analyses don’t dictate their decisions. “It’s 70 percent gut and 30 percent data,” Sarandos says. “Most of it is informed hunches and intuition. Data either reinforces your worst notion or it just supports what you want to do, either way.” The company also sometimes ignores the data if executives have enough passion for a new project, Sarandos says, calling such cases “forward bets, where you go to a full season even though the model’s not quite there.”

Now, you might argue that those are Hollywood people claiming that the way “they’ve always done it” is the best way. But say what you will about Holland’s and Sarandos’s breakdown, in almost any decision-making situation involving data, there is *some* non-zero percentage of the process that involves "gut". The reason is because not all information about a process can be incorporated into a data analysis, and it’s important for data analysts to realize that.

One reaction to the example described above might be to say that the data team should be privy to *more information*. They should have the contract terms and they should know everything about the company’s relationship with the talent on shows. But the truth is not all information is equally well-measured, well-characterized, and well-quantified. It would be misleading for a data analyst to suggest that they could incorporate all sources of information equally well. Yes, there are methods to balance differing levels of uncertainty, but some measurements are simply not good measurements. 

In the example above, there’s no evidence in the reporting that the content team didn’t believe the data or the analysis. It’s just that their fear of damaging a relationship with an actor overruled whatever desire they might have had to maximize clicks or views. The logic was probably along the lines of "We may take a hit in the short-run but we will benefit from this relationship in the long-run." Whether that’s true or not is unclear, but it’s a tricky question to answer with data. It’s not even clear to me how you would formulate that question. 

Ultimately, the data analysis got ignored in this case, which is something that can in fact happen. Organizations that don’t look at data can hardly be called data driven, but organizations that look at data and ignore it are basically in the same boat. How much weight should a data analysis be assigned, given that no analysis can include all the information that plays a role in a decision? Are Holland and Sarandos right that it’s 30%?



## Relationships

In any data analysis, there are aspects over which the analyst will not have control. In a company driven to create new content, the people in charge of making that content will likely want to have some say over how it’s done.

> Some shows at risk of being canceled due to poor performance have gotten a reprieve because Netflix doesn’t want to damage relationships with key producers or actors, people familiar with Netflix’s deliberations say. *Stars have inserted language in their contracts giving them approval over everything from the short video that plays when users hover over a photo to the trailers promoting Netflix shows and movies*. [emphasis added]

Should Netflix not deal with showrunners who want to have control over their shows because their decisions might come into conflict with the data? It’s possible that Netflix is missing out on better showrunners out there who are willing to submit to such contract terms, but then it’s not clear to me that they want to work with people who don’t really care that strongly about their shows. Part of the problem is that Netflix isn’t the only game in town, and everyone is competing for good talent. Netflix’s strategy is to mop up as much good talent as possible to create as many shows as possible. 

Finally, I thought this dichotomization of the content team and the tech/data team was interesting:

> Josh Evans, a former Netflix technology executive, said that while the tech team is more “data-driven and analytical” and the Hollywood side more “relationship-oriented” the two sides manage to reach common ground.

To me it seems like both the tech and content teams could afford to be a bit more "relationship-driven" [with each other](https://simplystatistics.org/2018/04/30/relationships-in-data-analysis/).
