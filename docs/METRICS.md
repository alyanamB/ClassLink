# Metrics
## HEART Framework
https://docs.google.com/presentation/d/1A-2E_baVCmCEYLlP3Qup2VT-anCOFMgUuk07oxL5DGY/edit?usp=sharing 
## Metrics
**Metric 1-** NPS: We collect user recommendation ratings through an NPS-style question presented as a pop-up component asking, “How likely are you to recommend ClassLink?” using a five-star rating scale. This survey is triggered at the end of the Golden Path (on the main page). User responses are saved to the database in a dedicated ratings collection, linked to their user ID. Additionally, a custom event is logged in Firebase Analytics to track the number of surveys completed.  

**Metric 2-** CTR (Click-Through Rate): By using Firbase Analytics, we are automatically given some events but we also create specific events such as veiwing how many times certain buttons within the app were pressed. This can help gauge which features are being used and how often they are being used.  

**Metric 3-** DAU: This metric shows how many unique users open and interact with the app each day, we are relying on Firebase Analytics' built in tracking to monitor Daily Active Users without needing to manually configure any events.   

**Metric 4-** Retention: Tracked automatically through Firebase Analytics, showing how many users return to the app after their first visit. This helps us assess whether users are finding long-term value and returning for continued use. 

**Metric 5-** Clicked Study Session to View: Tracked automatically through Firebase Analytics, showing how many users click on an individual study session. This helps us assess whether users are interested in study sessions. 

**Metric 6-** Clicked Attend Study Session to View: Tracked through Firebase Analytics by adding google analytic event in action flow of the button, showing how many users click to attend an individual study session. This helps us assess whether users are interested in attending study sessions. 

**Metric 7-** Clicked Widraw in StudySession:  Tracked through Firebase Analytics by adding google analytic event in action flow of the button, showing how many users click on an individual study session. This helps us assess the number of users withdraw their attendance to a study sessions in relation to originally attending it. 

**Metric 8-** Clicked Create Study Session:  Tracked through Firebase Analytics by adding google analytic event in action flow of the button showing how many users click on an individual study session. This helps us assess whether users are interested in hosting study sessions. 

**Metric 9-** Clicked Create Study Session:  Tracked through Firebase Analytics by adding google analytic event in action flow of the button, showing how many users click on an individual study session. This helps us assess whether users are ACTUALLY hosting study sessions. 

**Metric 10-** SignUp Button CTR:  Tracking how many users are clicking the sign up button vs the login button through the Google Analytics Event on the CTR of the “SignUp Button” on the Login page. The image shows that between March 3rd to March 30th, 6 different clicks were made by different users.

**Metric 11-** Study Sessions Attending Button CTR:  Tracking how many students are viewing which Study Sessions they are attending through the Google Analytics Event on the CTR of the “Study Sessions Attending Button” on the Profile Tab page. The first image shows that between March 3rd to March 30th, 4 different clicks were made by 3 different users. 




