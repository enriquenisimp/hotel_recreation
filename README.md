# hotel_recreation

Recreational purpose. List of hotels available. Using public API's as DataSource

## Additional information

This project is created with Flutter using Clean Architecture, Bloc Pattern (Cubit)
and Injection.

Domain takes the whole control of the app. Presentation is totally independent from Repository. 
Domain is totally independent from data layer. It only requests a abstract repository in order to
let the data layer to choose the way to provide the data and the source of truth. 
Each domain contain just one action. The file could get bigger depending on the requirement but only
if it applies to that concrete action.

Bloc get from domain either a success or a failure scenario, bloc only decides how and when tells to
the UI what to show, and provide the information the UI needs to do it.

UI is just listening to the states, and printing the values that bloc provides.

Test Cases created for principal files:

Test Cases powered by Mocktail:

Mock RemoteDataSource in Repository
Mock Repository in Usecases
Mock UseCase in Bloc

Bloc_test was added to make cleaner test files in bloc testing.
