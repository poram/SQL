/*Pete Oram
ITCS-3160
Homework #10
3.30.2014
#800159179
ERD to SQL*/



CREATE TABLE Airport (
	Airport_code				char(3)				NOT NULL,
	City						char(30)			NOT NULL,
	State						char(2)				NOT NULL,
	Name						char(30)			NOT NULL,
	Super_Airport_code			char(5)				NOT NULL,
    CONSTRAINT PK_AIRPORT		PRIMARY KEY		    (Airport_code)
)
CREATE TABLE Airplane_Type (
	Type_name					varchar(30)			NOT NULL,
	Company						varchar(30)			NOT NULL,
	Max_seats					int					NOT NULL,
	CONSTRAINT PK_AIRPLANE_TYPE PRIMARY KEY         (Type_name)
)
CREATE TABLE Airplane (
	Airplane_id					varchar(15)			NOT NULL,
	Total_no_of_seats			int					NOT NULL,
	Airplane_type				varchar(30),
	CONSTRAINT PK_AIRPLANE		PRIMARY KEY			(Airplane_id),
	CONSTRAINT FK_Airplane		FOREIGN KEY			(Airplane_type)     REFERENCES Airplane_Type (Type_name)
		ON UPDATE				CASCADE 
		ON DELETE				NO ACTION
)
CREATE TABLE Flight (
	Number						varchar(15)			NOT NULL,
	Airline						char(30)			NOT NULL,
	Weekdays					char(30)			NOT NULL,
	CONSTRAINT PK_FLIGHT		PRIMARY KEY			(Number)
)
CREATE TABLE Seat (
	Seat_no						varchar(10)			NOT NULL,
	Customer_name				char(30)			NOT NULL,
	Cphone						varchar(10)			NOT NULL,
	Seat_date					date,
	CONSTRAINT FK_SEAT			FOREIGN KEY			(Seat_no)           REFERENCES Leg_instance (Date)
		ON UPDATE				CASCADE
		ON DELETE				NO ACTION,
    CONSTRAINT FK_Seat			FOREIGN KEY			(Seat_date)         REFERENCES Leg_instance (Date)
		ON UPDATE				CASCADE
		ON DELETE				NO ACTION	
)
CREATE TABLE Leg_instance (
	Date						date				NOT NULL,
	No_of_avail_seats			int					NOT NULL,
	Dep_time					time				NOT NULL,
	Arr_time					time				NOT NULL,
	Plane_leg_id				varchar(15),
	instance_leg_no				int,
	Leg_airport_code			char(5),
	CONSTRAINT FK_LEG_INSTANCE  FOREIGN KEY         (Date)              REFERENCES Seat (Seat_no)
		ON UPDATE               CASCADE
		ON DELETE               NO ACTION,
	CONSTRAINT FK_LEG_INSTANCE  FOREIGN KEY         (Plane_leg_id)      REFERENCES Airplane (Airplane_id)
		ON UPDATE			    CASCADE
		ON DELETE			    NO ACTION,
	CONSTRAINT FK_LEG_INSTANCE  FOREIGN KEY         (instance_leg_no)   REFERENCES Flight_leg (Leg_no)
		ON UPDATE			    CASCADE
		ON DELETE			    NO ACTION,
	CONSTRAINT FK_LEG_INSTANCE  FOREIGN KEY         (Leg_airport_code)  REFERENCES Airport (Airport_code)
		ON UPDATE			    CASCADE
		ON DELETE			    NO ACTION						  
)
CREATE TABLE Fare (
	Code						varchar(20)			NOT NULL,
	Amount						decimal(6, 2)		NOT NULL,
	Restrictions				char(75)	        NOT NULL,
	CONSTRAINT FK_FARE			FOREIGN KEY         (Code)              REFERENCES Flight (Number)
		ON UPDATE				CASCADE
		ON DELETE				NO ACTION		
)
CREATE TABLE Flight_leg (
	Leg_no						int					NOT NULL,
	Scheduled_dep_time			time,
	Scheduled_arr_time			time,
	Leg_airport_code			char(5),
	Flight_leg_number			varchar(15),
	CONSTRAINT  FK_Flight_leg   FOREIGN KEY			(Leg_no)            REFERENCES Leg_instance (Date)
        ON UPDATE			    CASCADE
		ON DELETE               NO ACTION,
    CONSTRAINT  FK_Flight_leg   FOREIGN KEY         (Leg_airport_code)  REFERENCES Airport (Airport_code)
		ON UPDATE               CASCADE
		ON DELETE               NO ACTION,
	CONSTRAINT FK_Flight_leg    FOREIGN KEY			(Flight_leg_number) REFERENCES Flight (Number)
		ON UPDATE               CASCADE
		ON DELETE               NO ACTION	   
)

	