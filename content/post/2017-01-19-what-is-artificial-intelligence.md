---
title: What is artificial intelligence? A three part definition
author: Jeff Leek
comments: true
slug: "what-is-artificial-intelligence"
date: 2017-01-19
---

_Editor's note: This is the first chapter of a book I'm working on called [Demystifying Artificial Intelligence](https://leanpub.com/demystifyai/). The goal of the book is to demystify what modern AI is and does for a general audience. So something to smooth the transition between AI fiction and highly mathematical descriptions of deep learning. I'm developing the book over time - so if you buy the book on Leanpub know that there is only one chaper in there so far, but I'll be adding more over the next few weeks and you get free updates. The cover of the book was inspired by this [amazing tweet](https://twitter.com/notajf/status/795717253505413122) by Twitter user [@notajf](https://twitter.com/notajf/). Feedback is welcome and encouraged!_

What is artificial intelligence?
================================

> "If it looks like a duck and quacks like a duck but it needs
> batteries, you probably have the wrong abstraction" [Derick
> Bailey](https://lostechies.com/derickbailey/2009/02/11/solid-development-principles-in-motivational-pictures/)

This book is about artificial intelligence. The term "artificial
intelligence" or "AI" has a long and convoluted history (Cohen and
Feigenbaum 2014). It has been used by philosophers, statisticians,
machine learning experts, mathematicians, and the general public. This
historical context means that when people say *artificial intelligence*
the term is loaded with one of many potential different meanings.

Humanoid robots
---------------

Before we can demystify artificial intelligence it is helpful to have
some context for what the word means. When asked about artificial
intelligence, most people's imagination leaps immediately to images of
robots that can act like and interact with humans. Near-human robots
have long been a source of fascination by humans have appeared in
cartoons like the *Jetsons* and science fiction like *Star Wars*. More
recently, subtler forms of near-human robots with artificial
intelligence have played roles in movies like *Her* and *Ex machina*.

![People usually think of artificial intelligence as a human-like robot
performing all the tasks that a person could.](https://raw.githubusercontent.com/simplystats/simplystats.github.io/master/_images/movie-ai.png)

The type of artificial intelligence that can think and act like a human
is something that experts call artificial general intelligence
(Wikipedia contributors 2017a).

> is the intelligence of a machine that could successfully perform any
> intellectual task that a human being can

There is an understandable fascination and fear associated with robots,
created by humans, but evolving and thinking independently. While this
is a major area of ressearch (Laird, Newell, and Rosenbloom 1987) and of
course the center of most people's attention when it comes to AI, there
is no near term possibility of this type of intelligence (Urban, n.d.).
There are a number of barriers to human-mimicking AI from difficulty
with robotics (Couden 2015) to needed speedups in computational power
(Langford, n.d.).

One of the key barriers is that most current forms of the computer
models behind AI are trained to do one thing really well, but can not be
applied beyond that narrow task. There are extremely effective
artificial intelligence applications for translating between languages
(Wu et al. 2016), for recognizing faces in images (Taigman et al. 2014),
and even for driving cars (Santana and Hotz 2016).

But none of these technologies are generalizable across the range of
tasks that most adult humans can accomplish. For example, the AI
application for recognizing faces in images can not be directly applied
to drive cars and the translation application couldn't recognize a
single image. While some of the internal technology used in the
applications is the same, the final version of the applications can't be
transferred. This means that when we talk about artificial intelligence
we are not talking about a general purpose humanoid replacement.
Currently we are talking about technologies that can typically
accomplish one or two specific tasks that a human could accomplish.

Cognitive tasks
---------------

While modern AI applications couldn't do everything that an adult could
do (Baciu and Baciu 2016), they can perform individual tasks nearly as
well as a human. There is a second commonly used definition of
artificial intelligence that is considerably more narrow (Wikipedia
contributors 2017b)

> ... the term "artificial intelligence" is applied when a machine
> mimics "cognitive" functions that humans associate with other human
> minds, such as "learning" and "problem solving".

This definition encompasses applications like machine translation and
facial recognition. They are "cognitive" functions that are generally
usually only performed by humans. A difficulty with this definition is
that it is relative. People refer to machines that can do tasks that we
thought humans could only do as artificial intelligence. But over time,
as we become used to machines performing a particular task it is no
longer surprising and we stop calling it artificial intelligence. John
McCarthy, one of the leading early figures in artificial intelligence
said (Vardi 2012):

> As soon as it works, no one calls it AI anymore...

As an example, when you send a letter in the mail, there is a machine
that scans the writing on the letter. A computer then "reads" the
characters on the front of the letter. The computer reads the characters
in several steps - the color of each pixel in the picture of the letter
is stored in a data set on the computer. Then the computer uses an
algorithm that has been built using thousands or millions of other
letters to take the pixel data and turn it into predictions of the
characters in the image. Then the characters are identified as
addresses, names, zipcodes, and other relevant pieces of information.
Those are then stored in the computer as text which can be used for
sorting the mail.

This task used to be considered "artificial intelligence" (Pavlidis,
n.d.). It was surprising that a computer could perform the tasks of
recognizing characters and addresses just based on a picture of the
letter. This task is now called "optical character recognition"
(Wikipedia contributors 2016). Many tutorials on the algorithms behind
machine learning begin with this relatively simple task (Google
Tensorflow Team, n.d.). Optical character recognition is now used in a
wide range of applications including in Google's effort to digitize
millions of books (Darnton 2009).

Since this type of algorithm has become so common it is no longer called
"artificial intelligence". This transition happened becasue we no longer
think it is surprising that computers can do this task - so it is no
longer considered intelligent. This process has played out with a number
of other technologies. Initially it is thought that only a human can do
a particular cognitive task. As computers become increasingly proficient
at that task they are called artificially intelligent. Finally, when
that task is performed almost exclusively by computers it is no longer
considered "intelligent" and the boundary moves.

![Timeline of tasks we were surprised that computers could do as well as
humans.](https://raw.githubusercontent.com/simplystats/simplystats.github.io/master/_images/timeline-ai.png)

Over the last two decades tasks from optical character recognition, to
facial recognition in images, to playing chess have started as
artificially intelligent applications. At the time of this writing there
are a number of technologies that are currently on the boundary between
doable only by a human and doable by a computer. These are the tasks
that are considered AI when you read about the term in the media.
Examples of tasks that are currently considered "artificial
intelligence" include:

-   Computers that can drive cars
-   Computers that can identify human faces from pictures
-   Computers that can translate text from one language to another
-   Computers that can label pictures with text descriptions

Just as it used to be with optical character recognition, self-driving
cars and facial recognition are tasks that still surprise us when
performed by a computer. So we still call them artificially intelligent.
Eventually, many or most of these tasks will be performed nearly
exclusively by computers and we will no longer think of them as
components of computer "intelligence". To go a little further we can
think about any task that is repetitive and performed by humans. For
example, picking out music that you like or helping someone buy
something at a store. An AI can eventually be built to do those tasks
provided that: (a) there is a way of measuring and storing information
about the tasks and (b) there is technology in place to perform the task
if given a set of computer instructions.

The more narrow definition of AI is used colloquially in the news to
refer to new applications of computers to perform tasks previously
thought impossible. It is important to know both the definition of AI
used by the general public and the more narrow and relative definition
used to describe modern applications of AI by companies like Google and
Facebook. But neither of these definitions is satisfactory to help
demystify the current state of artificial intelligence applications.

A three part definition
-----------------------

The first definition describes a technology that we are not currently
faced with - fully functional general purpose artificial intelligence.
The second definition suffers from the fact that it is relative to the
expectations of people discussing applications. For this book, we need a
definition that is concrete, specific, and doesn't change with societal
expectations.

We will consider specific examples of human-like tasks that computers
can perform. So we will use the definition that artificial intelligence
requires the following components:

1.  *The data set* : A of data examples that can be used to train a
    statistical or machine learning model to make predictions.
2.  *The algorithm* : An algorithm that can be trained based on the data
    examples to take a new example and execute a human-like task.
3.  *The interface* : An interface for the trained algorithm to receive
    a data input and execute the human like task in the real world.

This definition encompases optical character recognition and all the
more modern examples like self driving cars. It is also intentionally
broad, covering even examples where the data set is not large or the
algorithm is not complicated. We will use our definition to break down
modern artificial intelligence applications into their constituitive
parts and make it clear how the computer represents knowledge learned
from data examples and then applies that knowledge.

As one example, consider Amazon Echo and Alexa - an application
currently considered to be artificially intelligent (Nuñez, n.d.). This
combination meets our definition of artificially intelligent since each
of the components is in place.

1.  *The data set* : The large set of data examples consist of all the
    recordings that Amazon has collected of people talking to their
    Amazon devices.
2.  *The machine learning algorithm* : The Alexa voice service (Alexa
    Developers 2016) is a machine learning algorithm trained using the
    previous recordings of people talking to Amazon devices.
3.  *The interface* : The interface is the Amazon Echo (Amazon Inc 2016)
    a speaker that can record humans talking to it and respond with
    information or music.

![The three parts of an artificial intelligence illustrated with Amazon
Echo and Alexa](https://raw.githubusercontent.com/simplystats/simplystats.github.io/master/_images/alexa-ai.png)

When we break down artificial intelligence into these steps it makes it
clearer why there has been such a sudden explosion of interest in
artificial intelligence over the last several years.

First, the cost of data storage and collection has gone down steadily
(Irizarry, n.d.) but dramatically (Quigley, n.d.) over the last several
years. As the costs have come down, it is increasingly feasible for
companies, governments, and even individuals to store large collections
of data (Component 1 - *The Data*). To take advantage of these huge
collections of data requires incredibly flexible statistical or machine
learning algorithms that can capture most of the patterns in the data
and re-use them for prediction. The most common type of algorithms used
in modern artificial intelligence are something called "deep neural
networks". These algorithms are so flexible they capture nearly all of
the important structure in the data. They can only be trained well if
huge data sets exist and computers are fast enough. Continual increases
in computing speed and power over the last several decades now make it
possible to apply these models to use collections of data (Component 2 -
*The Algorithm*).

Finally, the most underappreciated component of the AI revolution does
not have to do with data or machine learning. Rather it is the
development of new interfaces that allow people to interact directly
with machine learning models. For a number of years now, if you were an
expert with statistical and machine learning software it has been
possible to build highly accurate predictive models. But if you were a
person without technical training it was not possible to directly
interact with algorithms.

Or as statistical experts Diego Kuonen and Rafael Irizarry have put it:

> The big in big data refers to importance, not size

![It isn't about how much data you have, it is about how many people you
can get to use it.](https://raw.githubusercontent.com/simplystats/simplystats.github.io/master/_images/importance-not-size.jpg)

The explosion of interfaces for regular, non-technical people to
interact with machine learning is an underappreciated driver of the AI
revolution of the last several years. Artificial intelligence can now
power labeling friends on Facebook, parsing your speech to your personal
assistant Siri or Google Assistant, or providing you with directions in
your car, or when you talk to your Echo. More recently sensors and
devices make it possible for the instructions created by a computer to
steer and drive a car.

These interfaces now make it possible for hundreds of millions of people
to directly interact with machine learning algorithms. These algorithms
can range from exceedingly simple to mind bendingly complex. But the
common result is that the interface allows the computer to perform a
human-like action and makes it look like artificial intelligence to the
person on the other side. This interface explosion only promises to
accelerate as we are building sensors for both data input and behavior
output in objects from phones to refrigerators to cars (Component 3 -
*The interface*).

This definition of artificial intelligence in three components will
allow us to demystify artificial intelligence applications from self
driving cars to facial recognition. Our goal is to provide a high-level
interface to the current conception of AI and how it can be applied to
problems in real life. It will include discussion and references to the
sophisticated models and data collection methods used by Facebook,
Tesla, and other companies. However, the book does not assume a
mathematical or computer science background and will attempt to explain
these ideas in plain language. Of course, this means that some details
will be glossed over, so we will attempt to point the interested reader
toward more detailed resources throughout the book.

References
----------

Alexa Developers. 2016. “Alexa Voice Service.”
<https://developer.amazon.com/alexa-voice-service>.

Amazon Inc. 2016. “Amazon Echo.”
<https://www.amazon.com/Amazon-Echo-Bluetooth-Speaker-with-WiFi-Alexa/dp/B00X4WHP5E>.

Baciu, Assaf, and Assaf Baciu. 2016. “Artificial Intelligence Is More
Artificial Than Intelligent.” *Wired*, 7~dec.

Cohen, Paul R, and Edward A Feigenbaum. 2014. *The Handbook of
Artificial Intelligence*. Vol. 3. Butterworth-Heinemann.
<https://goo.gl/wg5rMk>.

Couden, Craig. 2015. “Why It’s so Hard to Make Humanoid Robots | Make:”
<http://makezine.com/2015/06/15/hard-make-humanoid-robots/>.

Darnton, Robert. 2009. *Google & the Future of Books*. na.

Google Tensorflow Team. n.d. “MNIST for ML Beginners | TensorFlow.”
<https://www.tensorflow.org/tutorials/mnist/beginners/>.

Irizarry, Rafael. n.d. “The Big in Big Data Relates to Importance Not
Size · Simply Statistics.”
<http://simplystatistics.org/2014/05/28/the-big-in-big-data-relates-to-importance-not-size/>.

Laird, John E, Allen Newell, and Paul S Rosenbloom. 1987. “Soar: An
Architecture for General Intelligence.” *Artificial Intelligence* 33
(1). Elsevier: 1–64.

Langford, John. n.d. “AlphaGo Is Not the Solution to AI « Machine
Learning (Theory).” <http://hunch.net/?p=3692542>.

Nuñez, Michael. n.d. “Amazon Echo Is the First Artificial Intelligence
You’ll Want at Home.”
<http://www.popsci.com/amazon-echo-first-artificial-intelligence-youll-want-home>.

Pavlidis, Theo. n.d. “Computers Versus Humans - 2002 Lecture.”
<http://www.theopavlidis.com/comphumans/comphuman.htm>.

Quigley, Robert. n.d. “The Cost of a Gigabyte over the Years.”
<http://www.themarysue.com/gigabyte-cost-over-years/>.

Santana, Eder, and George Hotz. 2016. “Learning a Driving Simulator,”
3~aug.

Taigman, Y, M Yang, M Ranzato, and L Wolf. 2014. “DeepFace: Closing the
Gap to Human-Level Performance in Face Verification.” In *2014 IEEE
Conference on Computer Vision and Pattern Recognition*, 1701–8.

Urban, Tim. n.d. “The AI Revolution: How Far Away Are Our Robot
Overlords?”
<http://gizmodo.com/the-ai-revolution-how-far-away-are-our-robot-overlords-1684199433>.

Vardi, Moshe Y. 2012. “Artificial Intelligence: Past and Future.”
*Commun. ACM* 55 (1). New York, NY, USA: ACM: 5–5.

Wikipedia contributors. 2016. “Optical Character Recognition.”
<https://en.wikipedia.org/w/index.php?title=Optical_character_recognition&oldid=757150540>.

———. 2017a. “Artificial General Intelligence.”
<https://en.wikipedia.org/w/index.php?title=Artificial_general_intelligence&oldid=758867755>.

———. 2017b. “Artificial Intelligence.”
<https://en.wikipedia.org/w/index.php?title=Artificial_intelligence&oldid=759177704>.

Wu, Yonghui, Mike Schuster, Zhifeng Chen, Quoc V Le, Mohammad Norouzi,
Wolfgang Macherey, Maxim Krikun, et al. 2016. “Google’s Neural Machine
Translation System: Bridging the Gap Between Human and Machine
Translation,” 26~sep.
