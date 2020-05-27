Use Colonial;

SELECT TripName
from Trip
Where Season = 'Late Spring'; -- Q1/1

select TripName
from Trip
Where State = 'VT' or MaxGrpSize > 10; -- Q1/2

select TripName
from Trip
Where Season = 'Early Fall' or 'Late Fall'; -- Q1/3

select count(*)
from Trip
Where State = 'VT' or State =  'CT'; -- Q1/4

select TripName
from Trip
Where StartLocation <> 'NH'; -- Q1/5

select TripName, StartLocation
from Trip
Where Type = 'Biking'; -- Q1/6

select TripName
from Trip
Where Type = 'Hiking' and Distance > 6
order by TripName; -- Q1/7

select TripName
from Trip
Where Type = 'Paddling' or State = 'Vermont' or 'VT'; -- Q1/8

select count(*)
from Trip
Where Type = 'Hiking' or 'Biking'; -- Q1/9

select TripName
from Trip
Where Season = 'Summer'
order by State; -- Q1/10

select TripName, LastName, FirstName
from Trip, Guide, TripGuides
Where Trip.TripID = TripGuides.TripID
And Guide.GuideNum = TripGuides.GuideNum
And LastName = 'Abrams' and FirstName = 'Miles'; -- Q1/11

select TripName, LastName, FirstName
from Trip, Guide, TripGuides
Where Trip.TripID = TripGuides.TripID
And Guide.GuideNum = TripGuides.GuideNum
And Trip.Type ='Biking' and LastName = 'Boyers' and FirstName = 'Rita'; -- Q1/12

select LastName, TripName, StartLocation
from Customer, Trip, Reservation
Where Customer.CustomerNum = Reservation.CustomerNum
And Trip.TripID = Reservation.TripID
And TripDate = '2018-07-23'; -- Q1/13

select count(*)
from Reservation
where TripPrice > 50 and TripPrice < 100; -- Q1/14

select LastName, TripName, Type
from Customer, Reservation, Trip
where Customer.CustomerNum = Reservation.CustomerNum
and Trip.TripID = Reservation.TripID
and TripPrice > 100; -- Q1/15

select LastName
from Customer, Trip, Reservation
where Customer.CustomerNum = Reservation.CustomerNum
and Trip.TripID = Reservation.TripID
and Trip.State = 'ME'; -- Q1/16

select State, count(*)
from Trip
Group by State
Order by State; -- Q1/17

select ReservationID, LastName, TripName
from Customer, Reservation, Trip
where Customer.CustomerNum = Reservation.CustomerNum
and Trip.TripID = Reservation.TripID
and NumPersons > 4; -- Q1/18

select TripName, FirstName, LastName
from Trip, Guide, TripGuides
Where Trip.TripID = TripGuides.TripID
And Guide.GuideNum = TripGuides.GuideNum
and Trip.State = 'NH'
Order by TripName, LastName; -- Q1/19

select ReservationID, Customer.CustomerNum, LastName, FirstName
from Reservation, Customer
where Customer.CustomerNum = Reservation.CustomerNum
and TripDate like '2018-07-%'; -- Q1/20

select ReservationID, TripName, LastName, FirstName, (Reservation.TripPrice + Reservation.OtherFees)*Reservation.NumPersons as TotalCost
from Customer, Reservation, Trip
where Customer.CustomerNum = Reservation.CustomerNum
and Trip.TripID = Reservation.TripID
and NumPersons > 4; -- Q1/21

select FirstName
from Customer
where Firstname like 'L%' or FirstName like 'S%'
order by FirstName; -- Q1/22

select TripName
from Trip, Reservation
where Trip.TripID = Reservation.TripID
and TripPrice between 30 and 50; -- Q1/23

select count(*)
from Trip, Reservation
where Trip.TripID = Reservation.TripID
and TripPrice between 30 and 50; -- Q1/24

Use EntertainmentAgencyExample;

select AgtLastName, AgtFirstName, AgtPhoneNumber
from Agents; -- Q2/1

select EngagementNumber, StartDate
from Engagements
order by StartDate desc, EngagementNumber asc; -- Q2/2

select AgtLastName, AgtFirstName, DateHired, date_add(DateHired, interval 6 month)
from Agents; -- Q2/3

select EngagementNumber, StartDate, EndDate
from Engagements
where StartDate like '2017-10-%' and EndDate like '2017-10-%'; -- Q2/4

select EngagementNumber, StartDate, EndDate, StartTime
from Engagements
where StartDate like '2017-10-%' and EndDate like '2017-10-%'
and (StartTime between '12:00:00' and '17:00:00'); -- Q2/5

select EngagementNumber, StartDate, EndDate
from Engagements
where StartDate = EndDate; -- Q2/6

select AgtLastName, AgtFirstName, StartDate
from Agents, Engagements
where Agents.AgentID = Engagements.AgentID
order by StartDate; -- Q2/7

select CustFirstName, CustLastName, EntertainerID
from Customers, Musical_Preferences, Musical_Styles, Entertainer_Styles
where Customers.CustomerID = Musical_Preferences.CustomerID
and Musical_Preferences.StyleID = Musical_Styles.StyleID
and  Musical_Styles.StyleID = Entertainer_Styles.StyleID; -- Q2/8

select AgtFirstName, AgtLastName, Entertainers.EntertainerID
from Agents, Engagements, Entertainers
where Agents.AgentID = Engagements.AgentID
and Engagements.EntertainerID = Entertainers.EntertainerID
and AgtZipCode = EntZipCode; -- Q2/9












































