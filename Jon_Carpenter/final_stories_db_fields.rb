
HOMEWORK
PROJECT MILESTONE
DUE LESSON 15.

At least 5 User Stories.
Diagram of Database Schema (Models, attributes for those models, associations.)

SnackOverflow


   * As an up and coming coder, when I submit a question, then I should see validation that the question has been submitted. 
   * As an up and coming coder, following the confirmation notice after submitting a question, I would expect to be informed of next steps (e.g., hearing back when a developer has answered my question). 

   * As an up and coming coder, when I sign into the site, I would expect to be able to see past questions I’ve asked and their answers. 

   * As an up and coming coder, when I hear back from a responder, I would expect to have some indication of the responder’s credibility OR it should be self evident that the answer is correct. 
   * As an up and coming coder, when I hear back from a responder, and the answer doesn’t work, I wold expect to be able to reach back out for additional help or clarification. 


Users
- ID
- Responder? (y/n)
- Admin? (y/n)
- email (for PayPal)

Questions
- ID
- User_ID
- Language
- State (Open, Active, Archived, Marked_spam)

Responses
- ID
- Question_ID
- Response
- User_ID
- State (Spam_unknown, Spam_yes, Spam_no)

Language
- Ruby
- RoR
- HTML