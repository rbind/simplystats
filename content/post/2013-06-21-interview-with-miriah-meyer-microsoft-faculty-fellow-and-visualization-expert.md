---
id: 1421
title: 'Interview with Miriah Meyer - Microsoft Faculty Fellow and Visualization Expert'
date: 2013-06-21T10:39:24+00:00
author: Jeff Leek
al2fb_facebook_link_id:
  - 136171103105421_508278475894680
al2fb_facebook_link_time:
  - 2013-06-21T14:39:30+00:00
al2fb_facebook_link_picture:
  - post=http://simplystatistics.org/wp-content/uploads/2013/06/miriah1.jpg
dsq_thread_id:
  - 1418931502
categories:
  - Uncategorized
slug: "interview-with-miriah-meyer-microsoft-faculty-fellow-and-visualization-expert"
---
<a href="http://simplystatistics.org/2013/06/21/interview-with-miriah-meyer-microsoft-faculty-fellow-and-visualization-expert/miriah-2/" rel="attachment wp-att-1424"><img class="alignnone  wp-image-1424" alt="miriah" src="http://simplystatistics.org/wp-content/uploads/2013/06/miriah1.jpg" width="311" height="256" /></a>

_[Miriah Meyer](http://www.cs.utah.edu/~miriah/) received her Ph.D. in computer science from the University of Utah, then did a postdoctoral fellowship at Harvard University and was a visiting fellow at MIT and the Broad Institute. Her research focuses on developing visualization tools in close collaboration with biological scientists. She has been recognized as a Microsoft Faculty Fellow, a TED Fellow, and appeared on the TR35. We talked with Miriah about visualization, collaboration, and her influences during her career as part of the [Simply Statistics Interview Series](http://simplystatistics.org/interviews/)._

**SS: Which term applies to you: data scientist, statistician, computer scientist, or something else?**

MM: My training is as a computer scientist and much of the way I problem solve is grounded in computational thinking. I do, however, sometimes think of myself as a data counselor, as a big part of what I do is help my collaborators move towards a deeper and more articulate statement about what they want/need to do with their data.

**SS: Most data analysis is done by scientists, not trained statisticians. How does data visualization help/hurt scientists when looking at piles of complicated data?**

MM: In the sciences, visualization is particularly good for hypothesis generation and early stage exploration. With many fields turning toward data-driven approaches, scientists are often not sure of exactly what they will find in a mound of data. Visualization allows them to look into the data without having to specify a specific question, query, or model. This early, exploratory analysis is very difficult to do strictly computationally. Exploration via interactive visualization can lead a scientist towards establishing a more specific question of the data that could then be addressed algorithmically.
  
**SS: ****What are the steps in developing a visualization with a scientific collaborator?**

MM: The first step is finding good collaborators <img src="http://simplystatistics.org/wp-includes/images/smilies/simple-smile.png" alt=":)" class="wp-smiley" style="height: 1em; max-height: 1em;" />

The beginning of a project is spent in discussions with the scientists, trying to understand their needs, data, and mental models of a problem. I find this part to be the most interesting, and also the most challenging. The goal is to develop a clear, abstract understanding of the problem and set of design requirements. We do this through interviews and observations, with a focus on understanding how people currently solve problems and what they want to do but can't with current tools.

Next is to take this understanding and prototype ideas for visualization designs. Rapid prototyping on paper is usually first, followed by more sophisticated, software prototypes after getting feedback from the collaborators. Once a design is sufficiently fleshed out and validated, a (relatively) full-featured visualization tool is developed and deployed.

At this point, the scientists tend to realize that the problem they initially thought was most interesting isn't... and the cycle continues.

Fast iteration is really essential in this process. In the past I've gone through as many as three cycles of this process before find the right problem abstractions and designs.

**SS: You have tackled some diverse visualizations (from synteny to poems); what are the characteristics of a problem that make it a good candidate for new visualizations?**

MM: For me, the most important thing is to find good collaborators. It is essential to find partners that are willing to give lots of their time up front, are open-minded about research directions, and are working on cutting-edge problems in their field. This latter characteristic helps to ensure that there will be something novel needed from a data analysis and visualization perspective.

The other thing is to test whether a problem passes the Tableau/R/Matlab test: if the problem can't be solved using one of these environments, then that is probably a good start.
  
**SS: What is the four-level nested model for design validation and how did you extend it?**

MM: This is a design decision model that helps to frame the different kinds of decisions made in the visualization design process, such as decisions about data derivations, visual representations, and algorithms. The model helps to put any one decision in the context of other visualization ideas, methods, and techniques, and also helps a researcher generalize new ideas to a broader class of problems. We recently extended this model to specifically define what a visualization "guideline" is, and how to relate this concept to how we design and evaluate visualizations.

**SS: Who are the key people who have been positive influences on your career and how did they help you?**

MM: One influence that jumps out to me is a collaboration with a designer in Boston named Bang Wong. Working with Bang completely changed my approach to visualization development and got me thinking about iteration, rapid prototyping, and trying out many ideas before committing. Also important were two previous supervisors, Ross Whitaker and Tamara Munzner, who constantly pushed me to be precise and articulate about problems and approaches to them. I believe that precision is a hallmark of good data science, even when characterizing unprecise things <img src="http://simplystatistics.org/wp-includes/images/smilies/simple-smile.png" alt=":)" class="wp-smiley" style="height: 1em; max-height: 1em;" />

**SS: Do you have any advice for computer scientists/statisticians who want to work on visualization as a research area?**

MM: Do it! Visualization is a really fun, vibrant, growing field. It relies on a broad spectrum of skills, from computer science, to design, to collaboration. I would encourage those interested to not get to infatuated with the engineering or the aesthetics and to instead focus on solving real-world problems. There is an unlimited supply of those!
