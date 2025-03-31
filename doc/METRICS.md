# Metrics
## HEART Framework
https://docs.google.com/presentation/d/1A-2E_baVCmCEYLlP3Qup2VT-anCOFMgUuk07oxL5DGY/edit?usp=sharing 
## Metrics
**Metric 1-** NPS: We collect user recommendation ratings through an NPS-style question presented as a pop-up component asking, “How likely are you to recommend ClassLink?” using a five-star rating scale. This survey is triggered at the end of the Golden Path (on the main page). User responses are saved to the database in a dedicated ratings collection, linked to their user ID. Additionally, a custom event is logged in Firebase Analytics to track the number of surveys completed.  

**Metric 2-** Engagement: By using Firbase Analytics, we are automatically given some events but we also create specific events such as veiwing how many times certain buttons within the app were pressed. This can help gauge which features are being used and how often they are being used.  

**Metric 3-** DAU: This metric shows how many unique users open and interact with the app each day, we are relying on Firebase Analytics' built in tracking to monitor Daily Active Users without needing to manually configure any events.   

**Metric 4-** Retention: Tracked automatically through Firebase Analytics, showing how many users return to the app after their first visit. This helps us assess whether users are finding long-term value and returning for continued use. 

**Metric 5-**  

**Metric 6-**   
 
