Feature: Gmail compose email scenarios


@TC001
 Scenario Outline: Verify that user able to Compose email.
Given the user is logged into Gmail
When the user clicks on the "Compose" button
Then a new compose window should open, allowing the user to start drafting an email


@TC002
 Scenario Outline: Verify that user is able to add recipient mail ID for recipients input field.
Given the user is logged into Gmail
And the user has opened the compose window by clicking the "Compose" button
When the user enters the recipient email ID "prathamesh.kadam7927@gmail.com" in the recipient input field
Then the recipient email ID should be added successfully to the recipient field.


@TC003
 Scenario Outline: Verify that user is able to  minimize the New message window using minimize option.
Given the user is logged into their Gmail account
When the user clicks on the Compose button
And enters "prathamesh.kadam7927@gmail.com" as the recipient email in the To field
And clicks the _ (hyphen) sign to minimize the New Message window
Then the New Message window should be minimized



@TC004
 Scenario Outline: Verify that user is able to Full screen the New message window using full screen option.
Given the user is logged into their Gmail account
When the user clicks on the Compose button
And enters "prathamesh.kadam7927@gmail.com" in the Recipients input field
And clicks on the Full-screen option in the upper right corner of the New Message window
Then the New Message window should enter Full-Screen mode



@TC005
 Scenario Outline: Verify that user is able to Save & close the New message window using Save & close option.
Given the user is logged into their Gmail account
And the user is on the Gmail inbox page
When the user clicks on the "Compose" button
And enters "prathamesh.kadam7927@gmail.com" in the "To" field of the New Message window
And clicks on the "Save & close" option in the upper-right corner of the New Message window
Then the New Message window should close
And the message should be saved in the "Drafts" folder in Gmail



@TC006
 Scenario Outline: Verify sending an email with a valid subject and body.
Given the user is logged into their Gmail account
And the user is on the Gmail dashboard
When the user clicks on the "Compose" button
And enters the recipient email ID as "prathamesh.kadam7927@gmail.com" in the "To" field
And enters "Incubyte" in the "Subject" field
And enters "QA test for Incubyte" in the email body
And clicks on the "Send" button
Then the email is sent successfully
And a "Message sent" confirmation message is displayed with "Undo" and "View message" options



@TC007
 Scenario Outline: Verify sending an email with a valid Cc and Bcc recipient mail Ids.
Given the user is logged into Gmail
And the user clicks on the "Compose" button
When the user enters "prathamesh.kadam7927@gmail.com" in the recipient field
And the user enters "hr@incubyte.com" in the CC field
And the user enters "admin@incubyte.com" in the BCC field
And the user enters "Incubyte" in the subject field
And the user enters "QA test for Incubyte" in the email body
And the user clicks on the "Send" button
Then the email should be sent successfully
And a "Message sent" confirmation message should be displayed with "Undo" and "View message" options



@TC008
 Scenario Outline: Verify sending an email with a invalid recipient mail Id.
Given the user is logged into their Gmail account
And the user clicks on the "Compose" button
When the user enters the recipient email ID as prathamesh.kadam.gmail.com
And the user enters the subject as Incubyte
And the user enters the body as QA test for Incubyte
And the user clicks on the "Send" button
Then an error message should be displayed indicating that the "To" field was not recognized.



@TC009
 Scenario Outline: Verify sending an email with a invalid Cc and Bcc recipient mail Id's.
Given the user is logged into their Gmail account
And the user clicks on the "Compose" button
When the user enters a valid recipient email ID as prathamesh.kadam7927@gmail.com
And the user enters an invalid Cc recipient email ID as hr.incubyte.com
And the user enters an invalid Bcc recipient email ID as admin.incubyte.com
And the user enters a valid subject as Incubyte
And the user enters a valid body text as QA test for Incubyte
And the user clicks on the "Send" button
Then an error message should be displayed indicating that the "To" field was not recognized



@TC010
 Scenario Outline: Verify that the user is able to undo sending an email immediately after it has been sent.
Given the user is logged into Gmail,
And the user is on the Gmail inbox page,
When the user clicks on the "Compose" button,
And the user enters "prathamesh.kadam7927@gmail.com" in the recipient's input field,
And the user enters "Incubyte" in the subject input field,
And the user enters "QA test for Incubyte" in the body input field,
And the user clicks on the "Send" button,
Then the email should be sent,
And the user should see the "Sending undone" slider on the bottom left corner,
And the user clicks on the "Undo" option on the success slider,
Then the email sending action should be undone successfully.














