# Airport_plain_support_app

This project is a theoretical  C++ and QT(QML) application designed to  
assist pilots at airports/air by providing real-time information about all flight condition.  
  
There are 3 pages:  
- Airport  
- In the air  
- After landing  
Each page is connected with own functionality to make pilot's life easier.  
  
Features:    
  
1. Airport Page:  
- Runway Availability Display: Indicates which runways are free or occupied  
- Takeoff Clearance Indicator: Notifies pilots when they are allowed to take off  
- Runway Guidance: Provides instructions on which runway to proceed to  
- Weather Conditions Display: Provides simulated weather information affecting flights  
- Displays the filed flight plan, including departure airport, destination, alternate airports,         
estimated time of departure (ETD), and estimated time en route (ETE)        
- NOTAMs (Notices to Airmen) Display: Shows relevant NOTAMs for the departure airport, such as runway closures,        
taxiway restrictions, or airspace warnings. This ensures pilots are aware of any last-minute changes or hazards 
- Fuel and Load Information: Provides details on fuel load, passenger count,    
cargo weight, and center of gravity (CG) calculations   

2. In the Air Page  
- In-Flight Assistance: Displays altitude, speed, and heading information for pilots  
- Flight Path Guidance: Assists in maintaining the correct flight trajectory  
- Air Traffic Awareness: Simulates nearby aircraft positions to improve situational awareness  
- Fuel Monitoring: Displays remaining fuel and estimated fuel at destination
- Turbulence Alerts: Provides warnings about potential turbulence based on weather data, with suggestions for altitude or route adjustments
- ETA and Distance to Destination: Shows the estimated time of arrival (ETA) and remaining distance to the destination airport
  
3. After Landing Page  
- Parking Guidance: Provides directions to park terminals    
- Gate Assignment Notification: Informs pilots of the designated gate for parking    
- Post-Landing Checklist: Displays necessary actions after landing  
- Current Time: Displays the current time   
- Delay Status: Indicates if the flight was delayed, with a color-coded message (red for delayed, green for on time)
- Remaining Fuel: Shows the amount of fuel remaining after landing 
  
!!!  
This project is part of a theoretical study and does not reflect real aviation systems.  

Tech-stack:
C++ 14
QT Quick (QML)
CMake (to build)
