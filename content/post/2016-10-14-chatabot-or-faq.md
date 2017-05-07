---
title: Should I make a chatbot or a better FAQ? 
author: jeff
comments: true
slug: "chatabot-or-faq"
date: 2016-10-14
---


Roger pointed me to this [interesting article](https://www.theinformation.com/behind-facebooks-messenger-missteps) (paywalled, sorry!) about Facebook's chatbot service. I think the article made a couple of interesting points. The first thing I thought was interesting was their explicit acknowledgement of the process I outlined in a previous post for building an AI startup - (1) convince (or in this case pay) some humans to be your training set, and (2) collect the data on the humans and then use it to build your AI. 

The other point that is pretty fascinating is that they realized how many data points they would need before they could reasonably replace a human with an AI chatbot. The original estimate was tens of thousands and the ultimate number was millions or more. I have been thinking a lot that the AI "revolution" is just a tradeoff between parameters and data points. If you have a billion parameter prediction algorithm it may work pretty awesome - as long as you have a few hundred billion data points to train it with. 

But the theme of the article was that chatbots may have had some mis-steps/may not be ready for prime time. I think the main reason is that at the moment most AI efforts can only report facts, not intuit intention and alter the question for the user or go beyond the facts/state of the world. 

One example I've run into recently was booking a ticket on an airline. I wanted to know if I could make a certain change to my ticket. The airline didn't have any information about the change I wanted to make online. After checking thoroughly I clicked on the "Chat with an agent" button and was directed to what was clearly a chatbot. The chatbot asked a question or two and then sent me to the "make changes to a ticket" page of the website. 

I eventually had to call and get a person on the phone, because what I wanted to ask about didn't apply to the public information. They set me straight and I booked the ticket. The chatbot wasn't helpful because it could only respond with information it had available on the website. It couldn't identify a new situation, realize it had to ask around, figure out there was an edge case, and then make a ruling/help out. 

I would guess that most of the time if a person interacts with a chatbot they are doing it only because they already looked at all the publicly available information on the FAQ, etc. and couldn't find it. So an alternative solution, which would require a lot less work and a much smaller training set, is to just have a more complete FAQ. 

The question to me is does anyone other than Facebook or Google have a big enough training set to make a chatbot worth it? 


