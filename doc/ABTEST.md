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

