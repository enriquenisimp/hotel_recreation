# hotel_recreation

Recreational purpose. List of hotels available. Using public API's as DataSource

## Getting Started

This project is created with Flutter using Clean Architecture, Bloc Pattern (Cubit)
and Injection.

Domain take the whole control of the app. Presentation is totally independent from Repository. 
Domain is totally independent from data layer. We only request a abstract repository in order to
let the data layer choose the way to provide the data and the source of truth. 
Each domain contain just one action. The file could get bigger depending on the requirement but only
if it applies to that concrete action.

Bloc get from domain either a success or a failure scenario, bloc only decide how and when tells to
the UI what to show, and provide the information the UI needs to do it.

UI is just listen to the states, and print the values that bloc provides.
