---
id: 1916
title: Announcing Statistics with Interactive R Learning Software Environment
date: 2013-09-27T11:26:31+00:00
author: Roger Peng
al2fb_facebook_link_id:
  - 136171103105421_547336861988841
al2fb_facebook_link_time:
  - 2013-09-27T15:26:36+00:00
al2fb_facebook_link_picture:
  - post=http://simplystatistics.org/?al2fb_image=1
dsq_thread_id:
  - 1802501999
categories:
  - Uncategorized
slug: "announcing-statistics-with-interactive-r-learning-software-environment"
---
<p dir="ltr">
  <em>Editor's note: This post was written by Nick Carchedi, a Master's degree student in the Department of Biostatistics at Johns Hopkins. He is working with us to develop software for interactive learning of R and statistics. </em>
</p>

<p dir="ltr">
  Inspired by the relative lack of computer-based platforms for learning statistics and the R programming language, we at <a href="http://www.biostat.jhsph.edu">Johns Hopkins Biostatistics</a> have created a new R package designed to teach both topics simultaneously and interactively. Accordingly, we’ve named the package swirl, which stands for “Statistics with Interactive R Learning”. We sought to model swirl after other highly successful interactive learning platforms such as Codecademy, Code School, and Khan Academy, but with a specific focus on teaching statistics and R. Additionally, we wanted users to learn these topics within the same environment in which they would be applying them, namely the R console.
</p>

<p dir="ltr">
  If you’re reading this article, then you probably already have an appreciation for the R language and there’s no need to beat that drum any further. Staying true to the R culture, the swirl package is totally open-source and free for anyone to use, modify, or improve. Furthermore, anyone with something to teach can use the platform to create their own interactive content for the world to use.
</p>

<p dir="ltr">
  A typical swirl session has a user load the package from the R console, choose from a menu of options the course he or she would like to take, then work through 10-15 minute interactive modules, each covering a particular topic. A module generally alternates between instructional text output to the user and prompts for the user to answer questions. One question may ask for the result of a simple numerical calculation, while another requires the user to enter an actual R command (which is parsed and executed, if correct) to perform a requested task. Multiple choice, text-based and approximate numerical answers are also fair game. Whenever the user answers a question incorrectly, immediate feedback is given in the form of a hint before prompting her to try again. Finally, plots, figures, and even videos may be incorporated into a module for the sake of reinforcing the methods or concepts being taught.
</p>

<p dir="ltr">
  We believe that this form of interactive learning, or learning by doing, is essential for true mastery of topics as challenging and complex as statistics and statistical computing. While we are aware of a handful of other platforms for learning R interactively, our goal was to focus on the teaching of R and statistics simultaneously. As far as we know, swirl is the only platform of its kind and almost certainly the only one that takes place within the R console.
</p>

<p dir="ltr">
  When we developed the swirl package, we wanted from the start to allow other people to extend and customize it to their particular needs. The beauty of the swirl platform is that anyone can create their own content and have it included in the package for all users to access. We have designed pre-formatted templates (color-coded spreadsheets) that instructors can fill out with their own content according to a fairly simple set of instructions. Once instructors send us the completed templates, we then load the content into the package so that anyone with the most recent version of swirl on their computer can access the content. We’ve tried to make the process of content creation as simple and painless as possible so that the statistics and computing communities are encouraged to share their knowledge with the world through our platform.
</p>

<p dir="ltr">
  The package currently includes only a few sample modules that we’ve created in-house, primarily serving as demonstrations of how the platform works and how a typical module may appear to users. In the future, we envision a vibrant and dynamic collection of full courses and short modules that users can vote up or down based on the quality of their experience with each. In such a scenario, the very best courses would naturally float to the top and the less effective courses would fall out of favor and perhaps be recommended for revision.
</p>

<p dir="ltr">
  In addition to making more content available to future users, we hope to one day transition swirl from being an interactive learning environment to one that is truly adaptive to the individual needs of each user. Perhaps this future version of our software would support a more intricate web of content, intelligently navigating users among topics based on a dynamic, data-driven interpretation of their strengths, weaknesses, competencies, and knowledge gaps. With the right people on board, this could become a reality.
</p>

<p dir="ltr">
  We’ve created this package with the hope that the statistics and computing communities find it to be a valuable educational tool. We’ve got the basic infrastructure in place, but we recognize that there is a great deal of room for improvement. The swirl package is still very much in development and we are actively seeking feedback on how we can make it better. Please visit the swirl website to download the package or for more information on the project. We’d love for you to give it a try and let us know what you think.
</p>

<p dir="ltr">
  Go to swirl website: <a href="http://swirlstats.com">http://swirlstats.com</a><a href="http://ncarchedi.github.io/swirl/"><br /> </a>
</p>
