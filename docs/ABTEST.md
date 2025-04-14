# A/B Test Options  
___
**A/B Test Option 1**: Visibility to Study Session attendees list.   
**US4**: Golden Path  
**Metric**: Engagement ; Users joining study sessions  
**Hypothesis**: 
  We believe that visibility into who is attending a study session significantly influences a user's decision to attend. Currently, users can see the full list of attendees before deciding to join. However, we suspect that this visibility may be a strong motivating factor—or lack thereof—for user participation. To test this, we will restrict attendee visibility to only 50% of users, while the remaining 50% will continue seeing the full attendee list. The problem we’re addressing is a potential bottleneck in session attendance rates—a key metric tied to user engagement and platform adoption. If users are highly influenced by who else is attending (e.g., friends, top students, or familiar names), this feature might be either helping or hurting attendance based on who's visible. For example, sessions with no familiar attendees may discourage users from joining, even if the session content is relevant.
  By isolating this one variable—attendee list visibility—we aim to understand whether the presence or absence of this social cue affects attendance behavior. If the hypothesis is correct, we’ll see a measurable difference in attendance rates between the two groups, helping us determine if this feature should be redesigned, personalized, or even removed to improve study session engagement.  
**Experiment**:
  We will run an A/B test using Firebase Remote Config to split our user base 50/50. Group A will see the full study session attendee list, while Group B will not see any attendees. Given our small user base, a 50/50 split ensures enough data from both groups for meaningful analysis.
Using Firebase Analytics, we will track key events such as: view_session_details, click_attend_session, and session_attendance_confirmed
  To align with our HEART metrics (specifically Engagement and Adoption), we’ll track the click-to-attend rate relative to detail views in each group. This will help us determine whether visibility of attendees influences user behavior.  
**Variations**:
We will test two variations of the study session detail view:
Variation A (Control): Users see the full list of attendees when they view a study session.
Variation B (Test): The attendee list is hidden from users.
The layout and design of both versions will remain identical, except for the attendee section.
Design Layout:
For Variation A, the attendee list will appear below the session description, showing profile pictures and names.
For Variation B, the attendee section will be completely removed to avoid any space or UI disruption.  
___
**A/B Test Option 2**: Landing Page Influence: Find Tutors vs. Study Sessions  
**US4**: Golden Path  
**Metric**: Engagement, Adoption, Task Success, CTR  
**Hypothesis**: 
 We believe that the page users land on immediately after logging in—either Find Tutors or Find Study Sessions—subtly influences their behavior and intent. Currently, users are shown one default landing page after authentication, but this may unintentionally guide what they engage with first. We suspect that this initial view may act as a behavioral nudge, shaping what users perceive as the app’s core function or what’s most accessible to them at that moment. To test this, we will randomly assign 50% of users to land on the Find Study Sessions tab after login, while the other 50% will land on the Find Tutors tab. All other elements of the interface remain identical, ensuring that the only variable being tested is the default landing screen.The problem we’re addressing is a potential bottleneck in post-login engagement—a critical moment in the user journey. If users have a pre-existing intention (e.g., to join a session or message a tutor), the landing page may have little effect. However, if many users are simply exploring or open to either resource, we may be influencing behavior through layout alone. For instance, a user intending to find a tutor may instead click into a group session simply because it was the first thing they saw. By isolating this one variable—landing page after login—we aim to understand whether default placement meaningfully affects engagement, feature preference, or task completion. If the hypothesis is correct, we’ll observe a significant difference in user actions (session joins, tutor requests, or tab switches) between the two groups. This will help us determine whether our login flow should be user-tailored, randomized, or intentionally optimized to surface the most impactful feature first.
**Experiment**:
  We will run an A/B test using Firebase Remote Config to assign users randomly into two groups (50/50 split). Upon successful login, Group A (Control) will land on the Find Study Sessions tab, while Group B (Test) will land on the Find Tutors tab. All other elements of the app (layout, tabs, and functionality) will remain unchanged. This experiment isolates the impact of initial landing screen on user behavior. Since we’re testing a subtle UX influence, a 50/50 split allows us to capture behavior across both flows while ensuring balanced sample sizes given our early user base. To evaluate the impact, we will track user actions using Firebase Analytics. Key events include:
   - clicked_study_tab
   - clicked_tutors_tab
   - session_card_click
   - tutor_card_click
   - joined_study_session
   - requested_tutor
   -  
These events will be compared across groups to determine how initial exposure affects user decisions. Aligned with our HEART metrics (particularly Engagement, Adoption, and Task Success), we’ll specifically measure:

   - Tab switching behavior (do users explore beyond what’s first shown?)
   - Click-through rates for tutors vs. study sessions
   - Actual conversion actions (joining sessions or requesting tutors)
This will help us understand whether user preference is pre-determined or influenced by the first screen they see.

**Variations**:  
Variation A (Control):
After login, users are automatically navigated to the Find Study Sessions tab. This is the current behavior in the app and represents the standard flow. Users can still manually switch to the Tutors tab at any time.  

Variation B (Test):
After login, users are automatically navigated to the Find Tutors tab. No design changes are made aside from the initial landing screen. Users can still access the Study Sessions tab manually if they choose.  
___
**A/B Test Option 3**:   
**US4**: Golden Path     
**Metric**:   Engagement, CTR 
**Hypothesis**:  We hypothesise that there may be some users who although not initially, they may consider becoming tutors themselves after going through our application's experience. It may not be clear to them at first weather or not they would consider becoming a tutor but after seeing the simplicity and oppourtunity our application provides, they may reconsider. We are also aware that possibly even subconsiously, the way we present the option of becoming a tutor may have an effect on weather or not they decide to do so.  

**Experiment**:
A simple way in which we could attempt to test this hypothesis is using remote config and A/B testing through Firebase. Specifically, we would change the font and color of the "interested in becoming a tutor?" checkbox. We would make this subtle change to exactly one half of our users and then we would compare to see weather or not one group has a significantly higher rate of users checking off that option. 

**Variations**:  
Variation A (Control):
The UI in its current format remains the same with the same color scheme, layout, and font size. 

Variation B (Test):
The UI is adjusted, we would increase the font size, adjust the layout, and change the color and font of the text. 
___
**A/B Test Option 4**: Tutor and Study Sessions Tab on top of screen or Combined with NavBar

**US4**: Golden Path 

**Metric**: Engagement, CTR on tabs

**Hypothesis**: 
 We hypthesize that this split navigation may overwhelm users, especially on mobile, making it harder to find key features or complete important actions. Our hypothesis is that by combining both navbars into a single, unified navigation bar, users will have a clearer, more intuitive experience that improves task completion, engagement, and feature discovery. We’ll A/B test this by comparing the current dual-nav design with a single-nav version and measure changes in click-through rates, time to task completion, and drop-off rates.

**Experiment**:
  Using Firebase remote config we will spilt users into 50/50 groups. Group A will view the Tutors and Study Sessions Tab at the top of the screen, while Group B will see it combined with Profile NavBar with the following selections: Profile, Tutors, and Study Sessions. All other elements of the app (layout, tabs, and functionality) will remain unchanged. This split and single change will allow us to monitor intuitivity and user accessabilty using CTR events. We can compare the CTR of the separate Tabs between the two groups and also the time it takes a user to change tabs once they login. Users will not be able to view the experiment so as to provide accurate responses. 

**Variations**:  
Variation A (Control):
After login, the user should be brought to a home page including a nav bar with Home and Profile tabs at the bottom, as well as a Tab Bar with Tutor and Study Session Tabs at the top of the screen.

Variation B (Test): 
After login, the user should be brought to a home page including a single nav bar with Profile, Tutor, and Study Session tabs at the bottom of the screen. All other elements remain the same.

