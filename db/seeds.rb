Response.destroy_all
Question.destroy_all
Review.destroy_all
Survey.destroy_all
User.destroy_all
Team.destroy_all
Category.destroy_all
# Create teams

team_1 = Team.create!(name: "Marketing")
team_2 = Team.create!(name: "Sales")
team_3 = Team.create!(name: "Finance")
team_4 = Team.create!(name: "HR")

# Create users


aude = User.create!(first_name: "Aude",last_name: "Idh", email: "aude.idh@gmail.com", password: "azerty", role: "team_leader", profile_picture:"https://kitt.lewagon.com/placeholder/users/audeai", team: team_1)
alex = User.create!(first_name: "Alex",last_name: "Grondin", email: "a.grondin@tbs-education.org", password: "azerty", role: "team_member", team: team_1, profile_picture:"https://kitt.lewagon.com/placeholder/users/alexgrondin10")
a1t1 = User.create!(first_name: "François",last_name: "Cassignol", email: "cassignol.fr@gmail.com", password: "azerty", role: "super_user", profile_picture:"https://kitt.lewagon.com/placeholder/users/francoiscassignol")
a3t1 = User.create!(first_name: "Serghei",last_name: "team1", email: "mazur.serghei@gmail.com", password: "azerty", role: "team_member", team: team_1, profile_picture:"https://kitt.lewagon.com/placeholder/users/francoiscassignol")
a4t1 = User.create!(first_name: "Nordin",last_name: "team1", email: "belkaceminordin@gmail.com", password: "azerty", role: "team_member", team: team_1, profile_picture:"https://kitt.lewagon.com/placeholder/users/francoiscassignol")
a5t1 = User.create!(first_name: "Aude",last_name: "Idh", email: "arneijim@gmail.com", password: "azerty", role: "team_member", team: team_1, profile_picture:"https://kitt.lewagon.com/placeholder/users/francoiscassignol")
a6t1 = User.create!(first_name: "Alex",last_name: "Grondin", email: "michaelbelzil@gmail.com", password: "azerty", role: "team_member", team: team_1, profile_picture:"https://kitt.lewagon.com/placeholder/users/francoiscassignol")
a9t1 = User.create!(first_name: "Caroline",last_name: "team1", email: "carolineshearer88@gmail.com", password: "azerty", role: "team_member", team: team_1, profile_picture:"https://kitt.lewagon.com/placeholder/users/francoiscassignol")
a10t1 = User.create!(first_name: "Kojo",last_name: "team1", email: "kojo@addaquay.io", password: "azerty", role: "team_member", team: team_1, profile_picture:"https://kitt.lewagon.com/placeholder/users/francoiscassignol")
a14t1 = User.create!(first_name: "Ali",last_name: "team1", email: "alizahir@live.com", password: "azerty", role: "team_member", team: team_1, profile_picture:"https://kitt.lewagon.com/placeholder/users/francoiscassignol")
a16t1 = User.create!(first_name: "Steph",last_name: "team1", email: "strudeau1910@gmail.com", password: "azerty", role: "team_member", team: team_1, profile_picture:"https://kitt.lewagon.com/placeholder/users/francoiscassignol")
a20t1 = User.create!(first_name: "Céline",last_name: "team1", email: "celine.te@mail.mcgill.ca", password: "azerty", role: "team_member", team: team_1, profile_picture:"https://kitt.lewagon.com/placeholder/users/francoiscassignol")



l2 = User.create!(first_name: "l2",last_name: "team2", email: "l2-team2@mailinator.com", password: "azerty", role: "team_leader", team: team_2)
a1t2 = User.create!(first_name: "1",last_name: "team2", email: "1-team2@mailinator.com", password: "azerty", role: "team_member", team: team_2)
a2t2 = User.create!(first_name: "2",last_name: "team2", email: "2-team2@mailinator.com", password: "azerty", role: "team_member", team: team_2)
a3t2 = User.create!(first_name: "3",last_name: "team2", email: "3-team2@mailinator.com", password: "azerty", role: "team_member", team: team_2)
a4t2 = User.create!(first_name: "4",last_name: "team2", email: "4-team2@mailinator.com", password: "azerty", role: "team_member", team: team_2)

l3= User.create!(first_name: "l3",last_name: "team3", email: "l3-team3@mailinator.com", password: "azerty", role: "team_leader", team: team_3)
a1t3 = User.create!(first_name: "1",last_name: "team3", email: "1-team3@mailinator.com", password: "azerty", role: "team_member", team: team_3)
a2t3 = User.create!(first_name: "2",last_name: "team3", email: "2-team3@mailinator.com", password: "azerty", role: "team_member", team: team_3)
a3t3 = User.create!(first_name: "3",last_name: "team3", email: "3-team3@mailinator.com", password: "azerty", role: "team_member", team: team_3)
a4t3 = User.create!(first_name: "4",last_name: "team3", email: "4-team3@mailinator.com", password: "azerty", role: "team_member", team: team_3)


User.create!(first_name: "l4",last_name: "team4", email: "l4-team4@mailinator.com", password: "azerty", role: "team_leader", team: team_4)
a1t4 = User.create!(first_name: "1",last_name: "team4", email: "1-team4@mailinator.com", password: "azerty", role: "team_member", team: team_4)
a2t4 = User.create!(first_name: "2",last_name: "team4", email: "2-team4@mailinator.com", password: "azerty", role: "team_member", team: team_4)
a3t4 = User.create!(first_name: "3",last_name: "team4", email: "3-team4@mailinator.com", password: "azerty", role: "team_member", team: team_4)
a4t4 = User.create!(first_name: "4",last_name: "team4", email: "4-team4@mailinator.com", password: "azerty", role: "team_member", team: team_4)


# create categories


personal_growth = Category.create!(name: "Personal growth")
well = Category.create!(name: "Well being")
col = Category.create!(name: "Collaboration")
tool = Category.create!(name: "Tools & Processes")
enter = Category.create!(name: "Enterprise culture")

# categories.each do |category_name|
#  # create! categories
#  category = Category.create!(name: category_name)


#  # filling the surveys with category and questions
#  Survey.all.each do |survey|
#    question = Question.create!(category: category, text: "Are you happy?", survey: survey )
#    # giving 2 responses to the questions
#    Response.create!(rating: 5, question: question, user: survey.team.users.all.sample)
#    Response.create!(rating: 4, question: question, user: survey.team.users.all.sample)
#  end
# end

review_text = ["The management really seems to care about our happiness & health, keep it up!", "Excellent onboarding and communication with management", "It is always cold in here", "A lot of diversities for New Grad to experience and learn", "Promotions tend to go to those that are willing to 'play the game' rather than those who deserve it","internal communication to be improved.", "It's hard to move to different departments within the company, and organization structure changes often","Great place to work great people", "Lack of support from higher ups when going through difficult times", "I really appreciate the flexible hours", "Too many meetings, not enough of saying what is needed", "very chill workers, good perks", "Expectation are very high from the executive. You have to perform in order to get the bonuses", "No incentive to excel", "endless cycles of processes which never change", "High pressure", "Meaningful work, great learning experience", "Flexible hours and supportive direct managers", "Limited growth opportunities in terms of career progression", "no pressure, good place to start", "pleasant coworkers and good work life balance","Open to discussions with better performing employees", "Amazing mentors to learn from"]

@personal_growth_question_text = ["I feel like I can voice my opinion","I have the opportunity to grow within the organization","My organization celebrates team accomplishments as well as personal success"]
@well_being_question_text = ["My direct manager cares about my well-being and support me when i am dealing with personal issues","I have the flexibility to take time off when I need to","I feel that I can maintain a healthy balance between work and my personal life"]
@collaboration_question_text = ["I can count on my colleagues when I need help", "I feel like I am part of a team","Communication among the team is honest and transparent"]
@tools_question_text = ["I  have access to the resources needed to do my work properly","The processes and tools provided are relevant  and helpful to accomplish my work","I am satisfied with the level of comfort and safety in my physical workplace"]
@enterprise_culture_question_text = ["Leaders demonstrate  a vision that motivates me","I understand how my work contributes to the goals of my organization","I consider myself an ambassador for my organization"]
#create surveys / questions
surveys = []

survey_1 = Survey.create!(team: team_1)
  question_1 = Question.create!(category: personal_growth, text: "I feel like I can voice my opinion", survey: survey_1 )
  question_2 = Question.create!(category: well, text: "My direct manager cares about my well-being and support me when i am dealing with personal issues" , survey: survey_1 )
  question_3 =  Question.create!(category: col, text: "I can count on my colleagues when I need help", survey: survey_1 )
  question_4 =  Question.create!(category: tool, text: "I  have access to the resources needed to do my work properly", survey: survey_1 )
  question_5 = Question.create!(category: enter, text: "I understand how my work contributes to the goals of my organization", survey: survey_1 )
surveys << survey_1

team_1.users.each do |user|
  Response.create!(rating: rand(1..2), question: question_1, user: user)
  Response.create!(rating: rand(1..2), question: question_2, user: user)
  Response.create!(rating: rand(1..2), question: question_3, user: user)
  Response.create!(rating: rand(1..2), question: question_4, user: user)
  Response.create!(rating: rand(1..2), question: question_5, user: user)
end


Review.create!(content: review_text.sample, survey: survey_1)
Review.create!(content: review_text.sample, survey: survey_1)
Review.create!(content: review_text.sample, survey: survey_1)
Review.create!(content: review_text.sample, survey: survey_1)
Review.create!(content: review_text.sample, survey: survey_1)
Review.create!(content: review_text.sample, survey: survey_1)
Review.create!(content: review_text.sample, survey: survey_1)
Review.create!(content: review_text.sample, survey: survey_1)
Review.create!(content: review_text.sample, survey: survey_1)
Review.create!(content: review_text.sample, survey: survey_1)
Review.create!(content: review_text.sample, survey: survey_1)



survey_2 = Survey.create!(team: team_1)
  question_6 =  Question.create!(category: personal_growth, text: "My organization celebrates team accomplishments as well as personal success", survey: survey_2 )
  question_7 =  Question.create!(category: well, text: "I have the flexibility to take time off when I need to" , survey: survey_2 )
  question_8 =  Question.create!(category: col, text: "I feel like I am part of a team", survey: survey_2 )
  question_9 =  Question.create!(category: tool, text: "The processes and tools provided are relevant  and helpful to accomplish my work", survey: survey_2 )
  question_10 =  Question.create!(category: enter, text: "I consider myself an ambassador for my organization", survey: survey_2 )
surveys << survey_2

team_1.users.each do |user|  
Response.create!(rating: rand(2..3), question: question_6, user: user)
Response.create!(rating: rand(2..3), question: question_7, user: user)
Response.create!(rating: rand(2..3), question: question_8, user: user)
Response.create!(rating: rand(2..3), question: question_9, user: user)
Response.create!(rating: rand(2..3), question: question_10, user: user)
end


Review.create!(content: review_text.sample, survey: survey_2)
Review.create!(content: review_text.sample, survey: survey_2)
Review.create!(content: review_text.sample, survey: survey_2)
Review.create!(content: review_text.sample, survey: survey_2)
Review.create!(content: review_text.sample, survey: survey_2)
Review.create!(content: review_text.sample, survey: survey_2)
Review.create!(content: review_text.sample, survey: survey_2)
Review.create!(content: review_text.sample, survey: survey_2)
Review.create!(content: review_text.sample, survey: survey_2)
Review.create!(content: review_text.sample, survey: survey_2)
Review.create!(content: review_text.sample, survey: survey_2)
Review.create!(content: review_text.sample, survey: survey_2)
Review.create!(content: review_text.sample, survey: survey_2)

survey_3 = Survey.create!(team: team_1)
  question_11 =  Question.create!(category: personal_growth, text: "I feel like I can voice my opinion", survey: survey_3 )
  question_12 =  Question.create!(category: well, text: "I feel that I can maintain a healthy balance between work and my personal life" , survey: survey_3 )
  question_13 =  Question.create!(category: col, text: "I feel like I am part of a team", survey: survey_3 )
  question_14 =  Question.create!(category: tool, text: "I  have access to the resources needed to do my work properly", survey: survey_3 )
  question_15 =  Question.create!(category: enter, text: "Leaders demonstrate  a vision that motivates me", survey: survey_3 )
surveys << survey_3

team_1.users.each do |user| 
Response.create!(rating: rand(3..4), question: question_11, user: user)
Response.create!(rating: rand(3..4), question: question_12, user: user)
Response.create!(rating: rand(3..4), question: question_13, user: user)
Response.create!(rating: rand(3..4), question: question_14, user: user)
Response.create!(rating: rand(3..4), question: question_15, user: user)
end

Review.create!(content: review_text.sample, survey: survey_3)
Review.create!(content: review_text.sample, survey: survey_3)
Review.create!(content: review_text.sample, survey: survey_3)
Review.create!(content: review_text.sample, survey: survey_3)
Review.create!(content: review_text.sample, survey: survey_3)
Review.create!(content: review_text.sample, survey: survey_3)
Review.create!(content: review_text.sample, survey: survey_3)
Review.create!(content: review_text.sample, survey: survey_3)
Review.create!(content: review_text.sample, survey: survey_3)
Review.create!(content: review_text.sample, survey: survey_3)
Review.create!(content: review_text.sample, survey: survey_3)

survey_4 = Survey.create!(team: team_1)
  question_16 =  Question.create!(category: personal_growth, text: "My organization celebrates team accomplishments as well as personal success", survey: survey_4 )
  question_17 =  Question.create!(category: well, text: "My direct manager cares about my well-being and support me when i am dealing with personal issues" , survey: survey_4 )
  question_18 =  Question.create!(category: col, text: "I can count on my colleagues when I need help", survey: survey_4 )
  question_19 =  Question.create!(category: tool, text: "The processes and tools provided are relevant  and helpful to accomplish my work", survey: survey_4 )
  question_20 =  Question.create!(category: enter, text: "I understand how my work contributes to the goals of my organization", survey: survey_4 )
surveys << survey_4

team_1.users.each do |user| 
Response.create!(rating: rand(4..5), question: question_16, user: user)
Response.create!(rating: rand(4..5), question: question_17, user: user)
Response.create!(rating: rand(4..5), question: question_18, user: user)
Response.create!(rating: rand(4..5), question: question_19, user: user)
Response.create!(rating: rand(4..5), question: question_20, user: user)
end

Review.create!(content: review_text.sample, survey: survey_4)
Review.create!(content: review_text.sample, survey: survey_4)
Review.create!(content: review_text.sample, survey: survey_4)
Review.create!(content: review_text.sample, survey: survey_4)
Review.create!(content: review_text.sample, survey: survey_4)
Review.create!(content: review_text.sample, survey: survey_4)
Review.create!(content: review_text.sample, survey: survey_4)
Review.create!(content: review_text.sample, survey: survey_4)
Review.create!(content: review_text.sample, survey: survey_4)
Review.create!(content: review_text.sample, survey: survey_4)
Review.create!(content: review_text.sample, survey: survey_4)
Review.create!(content: review_text.sample, survey: survey_4)
Review.create!(content: review_text.sample, survey: survey_4)


survey_5 = Survey.create!(team: team_1)
  question_21 =  Question.create!(category: personal_growth, text: "I feel like I can voice my opinion", survey: survey_5 )
  question_22 =  Question.create!(category: well, text: "I have the flexibility to take time off when I need to" , survey: survey_5 )
  question_23 =  Question.create!(category: col, text: "Communication among the team is honest and transparent", survey: survey_5 )
  question_24 =  Question.create!(category: tool, text: "The processes and tools provided are relevant  and helpful to accomplish my work", survey: survey_5 )
  question_25 =  Question.create!(category: enter, text: "Leaders demonstrate  a vision that motivates me", survey: survey_5 )
surveys << survey_5

team_2.users.each do |user| 
Response.create!(rating: rand(4..5), question: question_21, user: user)
Response.create!(rating: rand(4..5), question: question_22, user: user)
Response.create!(rating: rand(4..5), question: question_23, user: user)
Response.create!(rating: rand(4..5), question: question_24, user: user)
Response.create!(rating: rand(4..5), question: question_25, user: user)
end

Review.create!(content: review_text.sample, survey: survey_5)
Review.create!(content: review_text.sample, survey: survey_5)
Review.create!(content: review_text.sample, survey: survey_5)
Review.create!(content: review_text.sample, survey: survey_5)
Review.create!(content: review_text.sample, survey: survey_5)
Review.create!(content: review_text.sample, survey: survey_5)
Review.create!(content: review_text.sample, survey: survey_5)
Review.create!(content: review_text.sample, survey: survey_5)

survey_6 = Survey.create!(team: team_2)
  question_26 =  Question.create!(category: personal_growth, text: "My organization celebrates team accomplishments as well as personal success", survey: survey_6 )
  question_27 =  Question.create!(category: well, text: "I feel that I can maintain a healthy balance between work and my personal life" , survey: survey_6)
  question_28 =  Question.create!(category: col, text: "I feel like I am part of a team", survey: survey_6 )
  question_29 =  Question.create!(category: tool, text: "I  have access to the resources needed to do my work properly", survey: survey_6 )
  question_30 =  Question.create!(category: enter, text: "I understand how my work contributes to the goals of my organization", survey: survey_6 )
surveys << survey_6 

team_2.users.each do |user|
Response.create!(rating: rand(1..3), question: question_26, user: user)
Response.create!(rating: rand(1..3), question: question_27, user: user)
Response.create!(rating: rand(1..3), question: question_28, user: user)
Response.create!(rating: rand(1..3), question: question_29, user: user)
Response.create!(rating: rand(1..3), question: question_30, user: user)
end

Review.create!(content: review_text.sample, survey: survey_6)
Review.create!(content: review_text.sample, survey: survey_6)
Review.create!(content: review_text.sample, survey: survey_6)
Review.create!(content: review_text.sample, survey: survey_6)
Review.create!(content: review_text.sample, survey: survey_6)
Review.create!(content: review_text.sample, survey: survey_6)
Review.create!(content: review_text.sample, survey: survey_6)
Review.create!(content: review_text.sample, survey: survey_6)

survey_7 = Survey.create!(team: team_2)
  question_31 =  Question.create!(category: personal_growth, text: "I feel like I can voice my opinion", survey: survey_7 )
  question_32 =  Question.create!(category: well, text: "I have the flexibility to take time off when I need to" , survey: survey_7 )
  question_33 =  Question.create!(category: col, text: "I can count on my colleagues when I need help", survey: survey_7 )
  question_34 =  Question.create!(category: tool, text: "I am satisfied with the level of comfort and safety in my physical workplace", survey: survey_7 )
  question_35 =  Question.create!(category: enter, text: "I consider myself an ambassador for my organization", survey: survey_7 )
surveys << survey_7


team_3.users.each do |user|
Response.create!(rating: rand(1..3), question: question_31, user: user)
Response.create!(rating: rand(1..3), question: question_32, user: user)
Response.create!(rating: rand(1..3), question: question_33, user: user)
Response.create!(rating: rand(1..3), question: question_34, user: user)
Response.create!(rating: rand(1..3), question: question_35, user: user)
end

Review.create!(content: review_text.sample, survey: survey_7)
Review.create!(content: review_text.sample, survey: survey_7)
Review.create!(content: review_text.sample, survey: survey_7)
Review.create!(content: review_text.sample, survey: survey_7)
Review.create!(content: review_text.sample, survey: survey_7)
Review.create!(content: review_text.sample, survey: survey_7)
Review.create!(content: review_text.sample, survey: survey_7)
Review.create!(content: review_text.sample, survey: survey_7)

survey_8 = Survey.create!(team: team_2)
  question_36 =  Question.create!(category: personal_growth, text: "My organization celebrates team accomplishments as well as personal success", survey: survey_8 )
  question_37 =  Question.create!(category: well, text: "My direct manager cares about my well-being and support me when i am dealing with personal issues" , survey: survey_8 )
  question_38 =  Question.create!(category: col, text: "Communication among the team is honest and transparent", survey: survey_8 )
  question_39 =  Question.create!(category: tool, text: "The processes and tools provided are relevant  and helpful to accomplish my work", survey: survey_8 )
  question_40 =  Question.create!(category: enter, text: "Leaders demonstrate  a vision that motivates me", survey: survey_8 )
surveys << survey_8

team_3.users.each do |user|
Response.create!(rating: rand(1..3), question: question_36, user: user)
Response.create!(rating: rand(1..3), question: question_37, user: user)
Response.create!(rating: rand(1..3), question: question_38, user: user)
Response.create!(rating: rand(1..3), question: question_39, user: user)
Response.create!(rating: rand(1..3), question: question_40, user: user)
end

Review.create!(content: review_text.sample, survey: survey_8)
Review.create!(content: review_text.sample, survey: survey_8)
Review.create!(content: review_text.sample, survey: survey_8)
Review.create!(content: review_text.sample, survey: survey_8)
Review.create!(content: review_text.sample, survey: survey_8)
Review.create!(content: review_text.sample, survey: survey_8)
Review.create!(content: review_text.sample, survey: survey_8)
Review.create!(content: review_text.sample, survey: survey_8)

survey_9 = Survey.create!(team: team_2)
  question_41 =  Question.create!(category: personal_growth, text: "My organization celebrates team accomplishments as well as personal success", survey: survey_9 )
  question_42 =  Question.create!(category: well, text: "I have the flexibility to take time off when I need to" , survey: survey_9 )
  question_43 =  Question.create!(category: col, text: "I feel like I am part of a team", survey: survey_9 )
  question_44 =  Question.create!(category: tool, text: "The processes and tools provided are relevant  and helpful to accomplish my work", survey: survey_9 )
  question_45 =  Question.create!(category: enter, text: "I understand how my work contributes to the goals of my organization", survey: survey_9 )
surveys << survey_9

team_4.users.each do |user|
Response.create!(rating: rand(1..3), question: question_41, user: user)
Response.create!(rating: rand(1..3), question: question_42, user: user)
Response.create!(rating: rand(1..3), question: question_43, user: user)
Response.create!(rating: rand(1..3), question: question_44, user: user)
Response.create!(rating: rand(1..3), question: question_45, user: user)
end

Review.create!(content: review_text.sample, survey: survey_9)
Review.create!(content: review_text.sample, survey: survey_9)
Review.create!(content: review_text.sample, survey: survey_9)
Review.create!(content: review_text.sample, survey: survey_9)
Review.create!(content: review_text.sample, survey: survey_9)
Review.create!(content: review_text.sample, survey: survey_9)
Review.create!(content: review_text.sample, survey: survey_9)
Review.create!(content: review_text.sample, survey: survey_9)

survey_10 = Survey.create!(team: team_3)
  question_46 =  Question.create!(category: personal_growth, text: "I feel like I can voice my opinion", survey: survey_10 )
  question_47 =  Question.create!(category: well, text: "I feel that I can maintain a healthy balance between work and my personal life" , survey: survey_10 )
  question_48 =  Question.create!(category: col, text: "Communication among the team is honest and transparent", survey: survey_10 )
  question_49 =  Question.create!(category: tool, text: "I am satisfied with the level of comfort and safety in my physical workplace", survey: survey_10 )
  question_50 =  Question.create!(category: enter, text: "Leaders demonstrate  a vision that motivates me", survey: survey_10 )
surveys << survey_10

team_4.users.each do |user|
Response.create!(rating: rand(2..4), question: question_46, user: user)
Response.create!(rating: rand(2..4), question: question_47, user: user)
Response.create!(rating: rand(2..4), question: question_48, user: user)
Response.create!(rating: rand(2..4), question: question_49, user: user)
Response.create!(rating: rand(2..4), question: question_50, user: user)
end

Review.create!(content: review_text.sample, survey: survey_10)
Review.create!(content: review_text.sample, survey: survey_10)
Review.create!(content: review_text.sample, survey: survey_10)
Review.create!(content: review_text.sample, survey: survey_10)
Review.create!(content: review_text.sample, survey: survey_10)
Review.create!(content: review_text.sample, survey: survey_10)
Review.create!(content: review_text.sample, survey: survey_10)
Review.create!(content: review_text.sample, survey: survey_10)


survey_11 = Survey.create!(team: team_3)
  question_51 =  Question.create!(category: personal_growth, text: "I feel like I can voice my opinion", survey: survey_11 )
  question_52 =  Question.create!(category: well, text: "I have the flexibility to take time off when I need to" , survey: survey_11 )
  question_53 =  Question.create!(category: col, text: "Communication among the team is honest and transparent", survey: survey_11 )
  question_54 =  Question.create!(category: tool, text: "I  have access to the resources needed to do my work properly", survey: survey_11 )
  question_55 =  Question.create!(category: enter, text: "I consider myself an ambassador for my organization", survey: survey_11 )
surveys << survey_11

team_4.users.each do |user|
Response.create!(rating: rand(1..3), question: question_51, user: user)
Response.create!(rating: rand(1..3), question: question_52, user: user)
Response.create!(rating: rand(1..3), question: question_53, user: user)
Response.create!(rating: rand(1..3), question: question_54, user: user)
Response.create!(rating: rand(1..3), question: question_55, user: user)
end

Review.create!(content: review_text.sample, survey: survey_11)
Review.create!(content: review_text.sample, survey: survey_11)
Review.create!(content: review_text.sample, survey: survey_11)
Review.create!(content: review_text.sample, survey: survey_11)
Review.create!(content: review_text.sample, survey: survey_11)
Review.create!(content: review_text.sample, survey: survey_11)
Review.create!(content: review_text.sample, survey: survey_11)
Review.create!(content: review_text.sample, survey: survey_11)

survey_12 = Survey.create!(team: team_3)
  question_56 =  Question.create!(category: personal_growth, text: "My organization celebrates team accomplishments as well as personal success", survey: survey_12 )
  question_57 =  Question.create!(category: well, text: "My direct manager cares about my well-being and support me when i am dealing with personal issues" , survey: survey_12 )
  question_58 =  Question.create!(category: col, text: "I feel like I am part of a team", survey: survey_12 )
  question_59 =  Question.create!(category: tool, text: "I  have access to the resources needed to do my work properly", survey: survey_12 )
  question_60 =  Question.create!(category: enter, text: "I understand how my work contributes to the goals of my organization", survey: survey_12 )
surveys << survey_12

team_1.users.each do |user|
Response.create!(rating: rand(3..5), question: question_56, user: a1t3)
Response.create!(rating: rand(3..5), question: question_57, user: a1t3)
Response.create!(rating: rand(3..5), question: question_58, user: a1t3)
Response.create!(rating: rand(3..5), question: question_59, user: a1t3)
Response.create!(rating: rand(3..5), question: question_60, user: a1t3)
end

Review.create!(content: review_text.sample, survey: survey_12)
Review.create!(content: review_text.sample, survey: survey_12)
Review.create!(content: review_text.sample, survey: survey_12)
Review.create!(content: review_text.sample, survey: survey_12)
Review.create!(content: review_text.sample, survey: survey_12)
Review.create!(content: review_text.sample, survey: survey_12)
Review.create!(content: review_text.sample, survey: survey_12)
Review.create!(content: review_text.sample, survey: survey_12)
Review.create!(content: review_text.sample, survey: survey_12)
Review.create!(content: review_text.sample, survey: survey_12)
Review.create!(content: review_text.sample, survey: survey_12)
Review.create!(content: review_text.sample, survey: survey_12)
Review.create!(content: review_text.sample, survey: survey_12)
Review.create!(content: review_text.sample, survey: survey_12)

survey_13 = Survey.create!(team: team_4)
  question_61 =  Question.create!(category: personal_growth, text: "I feel like I can voice my opinion", survey: survey_13 )
  question_62 =  Question.create!(category: well, text: "I feel that I can maintain a healthy balance between work and my personal life" , survey: survey_13 )
  question_63 =  Question.create!(category: col, text: "I can count on my colleagues when I need help", survey: survey_13 )
  question_64 =  Question.create!(category: tool, text: "I am satisfied with the level of comfort and safety in my physical workplace", survey: survey_13 )
  question_65 =  Question.create!(category: enter, text: "Leaders demonstrate  a vision that motivates me", survey: survey_13 )
surveys << survey_13

team_1.users.each do |user|
Response.create!(rating: rand(1..3), question: question_61, user: user)
Response.create!(rating: rand(1..3), question: question_62, user: user)
Response.create!(rating: rand(1..3), question: question_63, user: user)
Response.create!(rating: rand(1..3), question: question_64, user: user)
Response.create!(rating: rand(1..3), question: question_65, user: user)
end

Review.create!(content: review_text.sample, survey: survey_13)
Review.create!(content: review_text.sample, survey: survey_13)
Review.create!(content: review_text.sample, survey: survey_13)
Review.create!(content: review_text.sample, survey: survey_13)
Review.create!(content: review_text.sample, survey: survey_13)
Review.create!(content: review_text.sample, survey: survey_13)
Review.create!(content: review_text.sample, survey: survey_13)
Review.create!(content: review_text.sample, survey: survey_13)


survey_14 = Survey.create!(team: team_4)
  question_66 =  Question.create!(category: personal_growth, text: "My organization celebrates team accomplishments as well as personal success", survey: survey_14 )
  question_67 =  Question.create!(category: well, text: "I have the flexibility to take time off when I need to" , survey: survey_14 )
  question_68 =  Question.create!(category: col, text: "I feel like I am part of a team", survey: survey_14 )
  question_69 =  Question.create!(category: tool, text: "I  have access to the resources needed to do my work properly", survey: survey_14 )
  question_70 =  Question.create!(category: enter, text: "I understand how my work contributes to the goals of my organization", survey: survey_14 )
surveys << survey_14

team_2.users.each do |user|
Response.create!(rating: rand(1..3), question: question_66, user: user)
Response.create!(rating: rand(1..3), question: question_67, user: user)
Response.create!(rating: rand(1..3), question: question_68, user: user)
Response.create!(rating: rand(1..3), question: question_69, user: user)
Response.create!(rating: rand(1..3), question: question_70, user: user)
end

Review.create!(content: review_text.sample, survey: survey_14)
Review.create!(content: review_text.sample, survey: survey_14)
Review.create!(content: review_text.sample, survey: survey_14)
Review.create!(content: review_text.sample, survey: survey_14)
Review.create!(content: review_text.sample, survey: survey_14)
Review.create!(content: review_text.sample, survey: survey_14)
Review.create!(content: review_text.sample, survey: survey_14)
Review.create!(content: review_text.sample, survey: survey_14)

survey_15 = Survey.create!(team: team_4)
  question_71 =  Question.create!(category: personal_growth, text: "I feel like I can voice my opinion", survey: survey_15 )
  question_72 =  Question.create!(category: well, text: "My direct manager cares about my well-being and support me when i am dealing with personal issues" , survey: survey_15 )
  question_73 =  Question.create!(category: col, text: "I feel like I am part of a team", survey: survey_15 )
  question_74 =  Question.create!(category: tool, text: "I am satisfied with the level of comfort and safety in my physical workplace", survey: survey_15 )
  question_75 =  Question.create!(category: enter, text: "I consider myself an ambassador for my organization", survey: survey_15 )
surveys << survey_15

team_3.users.each do |user|
Response.create!(rating: rand(1..5), question: question_71, user: user)
Response.create!(rating: rand(1..5), question: question_72, user: user)
Response.create!(rating: rand(1..5), question: question_73, user: user)
Response.create!(rating: rand(1..5), question: question_74, user: user)
Response.create!(rating: rand(1..5), question: question_75, user: user)
end

Review.create!(content: review_text.sample, survey: survey_15)
Review.create!(content: review_text.sample, survey: survey_15)
Review.create!(content: review_text.sample, survey: survey_15)
Review.create!(content: review_text.sample, survey: survey_15)
Review.create!(content: review_text.sample, survey: survey_15)
Review.create!(content: review_text.sample, survey: survey_15)
Review.create!(content: review_text.sample, survey: survey_15)
Review.create!(content: review_text.sample, survey: survey_15)

days = Array.new(surveys.size) { rand(1..25).to_s }
months = Array.new(surveys.size) { rand(1..8).to_s  }

surveys.each_with_index do |survey, i|
  date_string = ["2018", months[i], days[i]].join("-")
  survey.created_at = Date.parse(date_string)
  survey.save
end

