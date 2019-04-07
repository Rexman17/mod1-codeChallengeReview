# Object Relations Code Challenge

We are going to building app with three models: Airport, Airline, and Flight.
- An Airport has many flights through Airline, and an Airline has many airports through flights.

## Notes

Your goal is to build out all of the methods listed in the deliverables. Do your best to follow Ruby best practices. For example, use higher-level array methods such as `map`, `select`, and `find` when appropriate in place of `each`

We've provided you with a console that you can use to test your code. To enter a console session, run `ruby tools/console.rb` from the command line. You'll be able to test out the methods that you write here. Take a look at that file to see how you can pre-define variables and create object instances, rather than manually doing it in every single console session.

**Remember!** This is a code challenge without tests. You cannot run `rspec` you cannot run `learn`. You'll need to create your own sample instances for testing purposes. Make sure your associations and methods work in the console before submitting.

## Deliverables

### Basic Class Methods and Properties

#### Build the following methods on the `Airline` class

- `Airline#name`
  - returns a **string** that is the airlines's name
- `Airline#ceo`
  - returns a **string** that is the ceo's name
- `Airline#founding_year`
  - returns a **string** that is the airlines's founding year. This value cannot be reassigned.
- `Airline#acquisition`
  - given a string of a **ceo** and a string of a **name**, change the ceo and name of the startup
- `Airline#airports`
  - returns an array of all of the airports that have flights with this airline


- `Airline.all`
  - should return **all** of the airline instances
- `Airline.find_by_ceo`
  - given a string of a **ceo's name**, returns the **first airline** whose ceo's name matches

---

#### Build out the following methods on the `Airport` class

- `Airport#name`
  - returns a **string** that is the airport's name
- `Airport#cost_to_build`
  - returns a **number** that is the total worth of this investor (e.g., think of it as how much money they have)
-`Airport#dog_friendly`
- returns a **boolean** that represents whether the airport is dog friendly or not (if it's not, then I will never go to this airport k bye)

- `Airport.all`
  - returns an array of all venture capitalists
- `Airport.love_doggos`
  - returns an array of all the airports that are dog friendly
- `Airport.most_expensive`
- returns the Airport that was the most expensive to build

---

#### Build out the following methods on the `Flight` class

- `Flight#airline`
  - returns the startup object for that given funding round
  - Once a funding round is created, I should not be able to change the airline
- `Flight#airport`
  - returns the venture capitalist object for that given funding round
  - Once a funding round is created, I should not be able to change the airport
- `Flight#origin`
  - returns a **string** that is the city from which the flight leaves
 Series C, etc.
- `Flight#destination`
  - returns a **string** that is the city where the flight lands

- `Flight.all`
  - returns all of the flight instances

---

### Associations and Aggregate Methods

#### Airline

- `Startup#num_flights`
  - USING A HELPER METHOD, Returns the total number of flights that this airline is flying

#### Airport

- `Airport#schedule_flight`
  - given an **airline object**, origin city, and destination city (as strings), this creates a new flight and associates it with that airline and airport.


---
# mod1-codeChallengeReview
