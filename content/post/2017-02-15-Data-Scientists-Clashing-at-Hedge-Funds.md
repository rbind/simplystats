---
title: Data Scientists Clashing at Hedge Funds
author: roger
slug: "Data-Scientists-Clashing-at-Hedge-Funds"
date: 2017-02-15
---


There's an interesting article over at Bloomberg about how [data scientists have struggled at some hedge funds](https://www.bloomberg.com/news/articles/2017-02-15/point72-shows-how-firms-face-culture-clash-on-road-to-quantland):

> The firms have been loading up on data scientists and coders to deliver on the promise of quantitative investing and lift their ho-hum returns. But they are discovering that the marriage of old-school managers and data-driven quants can be rocky. Managers who have relied on gut calls resist ceding control to scientists and their trading signals. And quants, emboldened by the success of computer-driven funds like Renaissance Technologies, bristle at their second-class status and vie for a bigger voice in investing.

There are some interesting tidbits in the article that I think hold lessons for any collaboration between a data scientist or analyst and a non-data scientist (for lack of a better word).

At Point72, the family office successor to SAC Capital, problems at the quant unit (known as Aperio): 

> The divide between Aperio quants and fundamental money managers was also intellectual. They struggled to communicate about the basics, like how big data could inform investment decisions. [Michael] Recce’s team, which was stacked with data scientists and coders, developed trading signals but didn’t always fully explain the margin of error in the analysis to make them useful to fund managers, the people said.

It's hard to know the details of what actually happened, but for data scientists collaborating with others, there always needs to be an explanation of "what's going on". There's a general feeling that it's okay that machine learning techniques build complicated uninterpretable models because they work better. But in my experience that's not enough. People want to know why they work better, when they work better, and when they *don't* work.

On over-theorizing:

> Haynes, who joined Stamford, Connecticut-based Point72 in early 2014 after about two decades at McKinsey & Co., and other senior managers grew dissatisfied with Aperio’s progress and impact on returns, the people said. When the group obtained new data sets, it spent too much time developing theories about how to process them rather than quickly producing actionable results.

I don't necessarily agree with this "criticism", but I only put it here because the land of hedge funds isn't generally viewed on the outside as a place where lots of theorizing goes on.

At BlueMountain, another hedge fund:

> When quants showed their risk analysis and trading signals to fundamental managers, they sometimes were rejected as nothing new, the people said. Quants at times wondered if managers simply didn’t want to give them credit for their ideas.

I've seen this quite a bit. When a data scientist presents results to collaborators, there's often two responses: 

1. "I knew that already" and so you haven't taught me anything new
2. "I didn't know that already" and so you must be wrong

The common link here, of course, is the inability to admit that there are things you don't know. Whether this is an inherent character flaw or something that can be overcome through teaching is not yet clear to me. But it is common when data is brought to bear on a problem that previously lacked data. One of the key tasks that a data scientist in any industry must prepare for is the task of giving people information that will make them uncomfortable.
