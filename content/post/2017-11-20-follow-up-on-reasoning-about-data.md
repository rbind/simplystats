---
title: Follow Up on Reasoning About Data
author: Roger Peng
date: '2017-11-20'
slug: follow-up-on-reasoning-about-data
---

Sometimes, when I write a really long blog post, I forget what the point was at the end. I suppose I could just update the previous post...but that feels wrong for some reason.

I meant to make one final point in my last post about how [better data analyses help you reason about the data](https://simplystatistics.org/2017/11/16/reasoning-about-data/). In particular, I meant to tie together the discussion about garbage collection to the section on data analysis. With respect to garbage collection in programming, I wrote

> The promise of garbage collection is clear: *the programmer doesn't have to think about memory*. Lattner's criticism is that when building large-scale systems the programmer *always* has to think about memory, and as such, garbage collection makes it *harder* to do so. The goal of [Automatic Reference Counting] is to make it easier for other people to understand your code and to allow programmers to reason clearly about memory.

To pick this apart just a little bit, it's tempting to think that "not having to think about memory management" is a worthy goal, but Lattner's point is that it's not. At least not right now. Better to make tools that will help people to think more effectively about this important topic (a ["bicycle for the mind"](https://www.brainpickings.org/2011/12/21/steve-jobs-bicycle-for-the-mind-1990/)).

I think the analogy for data analysis is that I think it's tempting to think of the goal of methods development as removing the need to think about data and assumptions. The "ultimate" method is one where you don't have to worry about distributions or nonlinearities or interactions or anything like that. But I don't see that as the goal. Good methods, and good analyses, help us think about all those things much more efficiently. So what I might say is that

> When doing large-scale data analyses, the data analyst *always* has to think about the data and assumptions, and as such, some approaches can actually make that *harder* to do than others. The goal of the good data analysis is to make it easier to reason about how the data are related to the result, relative to the assumptions you make about the data and the models.

