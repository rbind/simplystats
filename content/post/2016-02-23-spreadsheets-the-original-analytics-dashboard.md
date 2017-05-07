---
id: 4677
title: 'Spreadsheets: The Original Analytics Dashboard'
date: 2016-02-23T08:42:30+00:00
author: Roger Peng
pe_theme_meta:
  - 'O:8:"stdClass":2:{s:7:"gallery";O:8:"stdClass":3:{s:2:"id";s:2:"-1";s:5:"width";s:0:"";s:6:"height";s:0:"";}s:5:"video";O:8:"stdClass":1:{s:2:"id";s:2:"-1";}}'
al2fb_facebook_link_id:
  - 136171103105421_928476510541539
al2fb_facebook_link_time:
  - 2016-02-23T13:42:39+00:00
al2fb_facebook_link_picture:
  - post=http://simplystatistics.org/?al2fb_image=1
categories:
  - Uncategorized
slug: "spreadsheets-the-original-analytics-dashboard"
---
Soon after my discussion with Hilary Parker and Jenny Bryan about spreadsheets on _[Not So Standard Deviations](https://soundcloud.com/nssd-podcast)_, Brooke Anderson forwarded me [this article](https://backchannel.com/a-spreadsheet-way-of-knowledge-8de60af7146e#.gj4f2bod4) written by Steven Levy about the original granddaddy of spreadsheets, [VisiCalc](https://en.wikipedia.org/wiki/VisiCalc). Actually, the real article was written back in 1984 as so-called microcomputers were just getting their start. VisiCalc was originally written for the Apple II computer and notable competitors at the time included [Lotus 1-2-3](https://en.wikipedia.org/wiki/Lotus_1-2-3) and Microsoft [Multiplan](https://en.wikipedia.org/wiki/Multiplan), all since defunct.

It's interesting to see Levy's perspective on spreadsheets back then and to compare it to the current thinking about data, data science, and reproducibility in science. The problem back then was "ledger sheets" (what we might now call a spreadsheet), which contained numbers and calculations related to businesses, were tedious to make and keep up to date.

> Making spreadsheets, however necessary, was a dull chore best left to accountants, junior analysts, or secretaries. As for sophisticated “modeling” tasks – which, among other things, enable executives to project costs for their companies – these tasks could be done only on big mainframe computers by the data-processing people who worked for the companies Harvard MBAs managed.

You can see one issue here: Spreadsheets/Ledgers were a "dull chore", and best left to junior people. However, the "real" computation was done by the people the "data processing" center on big mainframes. So what exactly does that leave for the business executive to do?

Note that the way of doing things back then was effectively reproducible, because the presentation (ledger sheets printed on paper) and the computation (data processing on mainframes) was separated.

The impact of the microcomputer-based spreadsheet program appears profound.

> <p id="9424" class="graf--p graf-after--p">
>   Already, the spreadsheet has redefined the nature of some jobs; to be an accountant in the age of spreadsheet program is — well, almost sexy. And the spreadsheet has begun to be a forceful agent of decentralization, breaking down hierarchies in large companies and diminishing the power of data processing.
> </p>
> 
> <p class="graf--p graf-after--p">
>   There has been much talk in recent years about an “entrepreneurial renaissance” and a new breed of risk-taker who creates businesses where none previously existed. Entrepreneurs and their venture-capitalist backers are emerging as new culture heroes, settlers of another American frontier. Less well known is that most of these new entrepreneurs depend on their economic spreadsheets as much as movie cowboys depend on their horses.
> </p>

<p class="graf--p graf-after--p">
   If you replace "accountant" with "statistician" and "spreadsheet" with "big data" and you are magically teleported into 2016.
</p>

<p class="graf--p graf-after--p">
  The way I see it, in the early 80's, spreadsheets satisfied the never-ending desire that people have to interact with data. Now, with things like tablets and touch-screen phones, you can literally "touch" your data. But it took microcomputers to get to a certain point before interactive data analysis could really be done in a way that we recognize today. Spreadsheets tightened the loop between question and answer by cutting out the Data Processing department and replacing it with an Apple II (or an IBM PC, if you must) right on your desk.
</p>

<p class="graf--p graf-after--p">
  Of course, the combining of presentation with computation comes at a cost of reproducibility and perhaps quality control. Seeing the description of how spreadsheets were originally used, it seems totally natural to me. It is not unlike today's analytic dashboards that give you a window into your business and allow you to "model" various scenarios by tweaking a few numbers of formulas. Over time, people took spreadsheets to all sorts of extremes, using them for purposes for which they were not originally designed, and problems naturally arose.
</p>

<p class="graf--p graf-after--p">
  So now, we are trying to separate out the computation and presentation bits a little. Tools like knitr and R and shiny allow us to do this and to bring them together with a proper toolchain. The loss in interactivity is only slight because of the power of the toolchain and the speed of computers nowadays. Essentially, we've brought back the Data Processing department, but have staffed it with robots and high speed multi-core computers.
</p>
