Response.destroy_all
Question.destroy_all
Survey.destroy_all
User.destroy_all
Team.destroy_all
Category.destroy_all
# Create teams

team_1 = Team.create!(name: "A")
team_2 = Team.create!(name: "B")

# Create users

User.create!(first_name: "1",last_name: "Aulas", email: "e1@free.fr", password: "azerty", role: "super_user")
User.create!(first_name: "2",last_name: "Aulas", email: "alex@mailinator.com", password: "azerty", role: "team_leader", team: team_1)
User.create!(first_name: "3",last_name: "Aulas", email: "e3@free.fr", password: "azerty", role: "team_leader", team: team_2)
User.create!(first_name: "4",last_name: "Aulas", email: "francis@mailinator.com", password: "azerty", role: "team_member", team: team_1)
User.create!(first_name: "5",last_name: "Aulas", email: "e5@free.fr", password: "azerty", role: "team_member", team: team_1)
User.create!(first_name: "6",last_name: "Aulas", email: "e6@free.fr", password: "azerty", role: "team_member", team: team_1)

User.create!(first_name: "7",last_name: "Aulas", email: "e7@free.fr", password: "azerty", role: "team_member", team: team_2)
User.create!(first_name: "8",last_name: "Aulas", email: "e8@free.fr", password: "azerty", role: "team_member", team: team_2)
User.create!(first_name: "9",last_name: "Aulas", email: "e9@free.fr", password: "azerty", role: "team_member", team: team_2)
User.create!(first_name: "10",last_name: "Aulas", email: "e10@free.fr", password: "azerty", role: "team_member", team: team_2)


# Create surveys

survey_1 = Survey.create!(team: team_1)
survey_2 = Survey.create!(team: team_1)
survey_3 = Survey.create!(team: team_1)

survey_4 = Survey.create!(team: team_2)
survey_5 = Survey.create!(team: team_2)
survey_6 = Survey.create!(team: team_2)

# create! categories

categories = ["Personal growth", "Well being", "Collaboration", "Tools & Processes", "Enterprise culture"]


categories.each do |category_name|
 # create! categories
 category = Category.create!(name: category_name)
 # filling the surveys with category and questions
 Survey.all.each do |survey|
   question = Question.create!(category: category, text: "Are you happy?", survey: survey )
   # giving 2 responses to the questions
   Response.create!(rating: 5, question: question, user: survey.team.users.all.sample)
   Response.create!(rating: 4, question: question, user: survey.team.users.all.sample)
 end
end

----------------- Exemple ---------------------------------------------------------
# question_1 = Question.create(category: Category.first, text: "How deep is your love?", survey: survey_1)
# question_2 = Question.create(category: Category.second, text: "Are you sad?", survey: survey_1)
# question_3 = Question.create(category: Category.third, text: "Your manage cares of you?", survey: survey_1)
# question_4 = Question.create(category: Category.fourth, text: "I love my peers", survey: survey_1)
# question_5 = Question.create(category: Category.fifth, text: "My company is the best", survey: survey_1)






