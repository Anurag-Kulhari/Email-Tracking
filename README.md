# Email-Tracking

Email-Tracking will allows  all outgoing emails from phpmailer script and will inject a tracking code into the link. 
It will also store the all your html form data in the database with track code. There is also an interface to show your database and ISseen variable which tells particular email is open or not..

# How it works

When an email is sent,  and a link is clicked, its tracking information is counted in the database. It match trackcode in this link with trackcode that is stored in the database. if they match then database is updated with ISseen variable is set.

# Installation and Usage
clone this repo:
git clone https://github.com/Anurag-Kulhari/Email-Tracking
