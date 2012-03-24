# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Hackers need:
# email, first_name, last_name, role (:hacker), password, password_confirmation,
# interests (Technology), achievements (Achievement), will_work_for (Compensation)

# Biz monkeys need:
# email, first_name, last_name, role (:biz_monkey), password, password_confirmation,
# looking_for (Technology), projects (Project)


@passwd = "foobar"
@email_suffix = "@test.com"

@technologies = %w[web_dev ios android]
@achievements = %w[internship open_source real_world contest published_paper class]
@compensations = %w[cash experience equity]

@first_names = %w[paul ringo john george bob mike joe chris]
@last_names = %w[smith jones]

# Make the hackers
def make_hackers
  current = 1
  100.times do 

    email = "hacker#{current}#{@email_suffix}"

    User.find_or_initialize_by_email(email).tap do |t|
      t.password = @passwd
      t.password_confirmation = @passwd
      t.role = "hacker"
      t.first_name = @first_names.shuffle.first
      t.last_name = @last_names.shuffle.first

      t.save!

      tech = @technologies.shuffle
      achieve = @achievements.shuffle

      t.interests.create(skill: tech.first)
      t.interests.create(skill: tech.second)

      t.achievements.create(achievement_category: achieve.first)
      t.achievements.create(achievement_category: achieve.second)

      t.create_will_work_for(method: @compensations.shuffle.first)

      t.save!
    end

    current = current + 1

  end
end

# Make the BMs
def make_biz_monkies
  current = 1
  30.times do
    email = "bizmonkey#{current}#{@email_suffix}"
    User.find_or_initialize_by_email(email).tap do |t|
      t.password = @passwd
      t.password_confirmation = @passwd
      t.role = "biz_monkey"
      t.first_name = @first_names.shuffle.first
      t.last_name = @last_names.shuffle.first
     
      t.save!

      tech = @technologies.shuffle

      t.looking_for.create(skill: tech.first)
      t.looking_for.create(skill: tech.second)


      t.projects.create(description: "Description of my first awesome test project")
      t.projects.create(description: "Description of my second awesome test project")

      t.save!
    end
  end
  current = current + 1
end

namespace :db do 
  User.destroy_all
  make_hackers
  make_biz_monkies
end
