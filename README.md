# README

This is/was a coding challenge for a Ruby on Rails Position.

I was tasked on creating an app with basic user log in requirements and CRUD capabilities

Having minimal RoR experience prior I opted for a crash course on trying to learn all the applicable skills to deliver on the application.

No additonal gems were added in besides whatever gems come with Rails initially.
I've learned that while Bcrypt was available, a gem called `Devise` may have been a nice alternative to the initial user log in and passing Current User Id info/verifying said user data. 

Along with that another gem `CanCan` was also available to assist with keeping users out of other user profiles and restricting user resources.

Bulma was used with the project to quickly set up basic/general CSS for visual purposes. I opted to use Bulma over Bootstrap due to prior familiarity, simple grid set up, and minimal (none) javascript addition.

Mailing is something I will need to re-visit for better understanding. While the 'Welcome' emailer was working, I was not able to get the password reset mailer working as intended and opted to remove the additional add in to keep broken code out of the finished product. I plan to add it in at a later date once I study up a bit more.