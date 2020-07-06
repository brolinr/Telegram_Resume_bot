require 'telegram/bot'
token = '1184372542:AAHss7FmBX2dESKt39Xs393BoDAItvhQDpo'

Telegram::Bot::Client.run(token) do |bot|
  bot.listen do |message|
    case message.text
    
    when '/start'
        bot.api.send_message(chat_id: message.chat.id, text: 
        "Welcome to Brolin Remunyanga's Resume bot type '/help' for more commands")
    
    when '/aboutme'
      bot.api.send_message(chat_id: message.chat.id, text: 
    "PERSONAL DETAILS

Name : Brolin Remunyanga
Gender : Male
Date of Birth : 15 July 2003
Nationality : Zimbambwean
Languages : Shona, English, Ndebele
Religion : Christian
Address : 6705 Southlea Park Harare Zimbabwe
Marital Status : Single")

    when "/skills"    bot.api.send_message(chat_id: message.chat.id, text:
"Brolin Remunyanga is a self taught 
Junior Full Stack Web Developer 
who has learnt and mastered the following:

1.HTML and CSS
2.JavaScript
3.Ruby
4.Ruby on Rails
5.Databasses

**Brolin is also a novice in the following 
programming language

Python")

    when "/education"
        bot.api.send_message(chat_id: message.chat.id, text: 
"1. Has an Ordinary level certificate with the Zimbabwe Schools Examinations Council(Zimsec).

O'level 2019 November (ZIMSEC) results:

Mathematics              : B
Chemistry                : B
Biology                  : C
Combined Science         : B
English                  : C
Shona                    : B
History                  : B
Principles of Accounting : B
Commerce                 : A
Geography                : A


2.Owns a Certificate in Responsive Web Design with  freecodecamp.org

Verify this certification at: https://www.freecodecamp.org/certification/brolin/responsive-web-design


3.Brolin Remunyanga is currently studying Applied Information Technology(Software Engineering)
with the University of Zimbabwe as a full time student.")

    when "/certification"
        bot.api.send_message(chat_id: message.chat.id, text: 
"1.Owns a Certificate in Responsive Web Design with  freecodecamp.org


Verify this certification at: https://www.freecodecamp.org/certification/brolin/responsive-web-design")

    when "/contact"
        bot.api.send_message(chat_id: message.chat.id, text:
"Phone : +263 771 232 355, +263 714 120 726
Email : remunyangabrolin@gmail.com
Github: https://github.com/brolinr
Linkedin: www.linkedin.com/in/brolin-remunyanga
Codepen: https://codepen.io/Brolinr"
)

    

    when "/projects"
        bot.api.send_message(chat_id: message.chat.id, text:
        "A plethora of hands-on projects housed on github and on Codepen. Please look at the contact section")

    when "/hobbies"
        bot.api.send_message(chat_id: message.chat.id, text:
"Brolin's Hobbies include:
1.Playing Chess
2.Listening to music
3.Programming")

    when "/help"
        bot.api.send_message(chat_id: message.chat.id, text:
        "Use the following commands:
'/aboutme' : This command displays the persoal information.
'/contact' : This command displays Brolin's contacts. 
'/education' : This command displays Brolin's education.
'/certification' : This command displays Brolin's completed courses and the verification links.
'/skills' : This command displays Brolin's skills.
'/hobbies' :This command displays Brolin's hobbies.
'/projects' : This command displays information on projects.")
    end
  end
end