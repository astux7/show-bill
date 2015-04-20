# show-bill

+ Sinatra/HTML/CSS (technology)
+ rSpec/Cucumber(TDD/BDD)

+ Must consume bill JSON from endpoint:
http://safe-plains-5453.herokuapp.com/bill.json

+Should be served up on a web server.

To run program locally:

1. ```> bundle```  -> gets/installs required gems for app<br />
2. ```> cucumber features ```  -> cucumber tests <br />
3. ```> rspec spec``` -> rspec tests<br />
4. ```> shotgun -p 4545``` -> run the app<br />
5. in the browser window: localhost:4545 -> bill page and localhost:4545/bill.json page<br />
