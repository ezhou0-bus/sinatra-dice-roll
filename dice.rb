require "sinatra"
require "sinatra/reloader"
require "better_errors"
require "binding_of_caller"
use(BetterErrors::Middleware)
BetterErrors.application_root = __dir__
BetterErrors::Middleware.allow_ip!('0.0.0.0/0.0.0.0')


<!DOCTYPE html>
<html>
    <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/js/all.min.js"></script>
    <title> Dice Roll </title>

    <style>
    /*
    * {
      border: 1px red dashed;
    }
    */
                
                html {
      min-height: 100%;
    }
    
                body {
      padding-top: 40px;
      padding-bottom: 40px;
      background: linear-gradient(75deg, #fcffd6, #fce0be, #f8bdb0, #f5abc8, #dba5f2);
     color: rgba(255, 255, 255, 1.0);
      font-family: "Impact"
    }
    
    a {
        color: rgba(255, 255, 255, 1.0);
        text-decoration: none;
    }
    </style>

    </head>
    
    <body>
    <div class = "main container">
      
    <div class = "link rows "> 
    get("/dice/2/6") do
      first_die = rand(1..6)
      second_die = rand(1..6)
      sum = first_die + second_die
      
      outcome = "You rolled a #{first_die} and a #{second_die} for a total of #{sum}."
      
      "<h1>2d6</h1>
       <p>#{outcome}</p>"
    end
    </div>



    </body>
    
    </html>
