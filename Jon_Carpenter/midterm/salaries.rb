require 'rest_client'
require 'open-uri'
require 'json'

# place all job titles with salaries into an array of hashes, job_postings
# sort arrays by salary
# pick and puts a random job with a salary >= user_min_sal

	def get_angel_salaries
		job_postings = []
		angel_salaries = JSON.parse(RestClient.get 'https://api.angel.co/1/jobs')
 		
 		angel_salaries['jobs'].each do |info| 
 			job_postings << {min: info['salary_min'], title: info['title']} unless info['salary_min'] == nil 
		end

		job_postings.sort_by! { |k| k[:min] }

		possibilities = []

		job_postings.each do |job| 
	 		if job[:min] > user_min_sal 
	 			possibilities << "#{job[:title]}:, #{job[:min]}"
		end

		# puts possibilities

	end	

puts "MAGIC TECH JOBS 8-BALL SAYS: THIS IS YOUR JOB"

puts possibilities.sample

end
	
	get_angel_salaries

	# def find_jobs_with_salary(users_salary)
	# 	get_angel_salaries.each do |jobs|
	# 		if jobs[0] == users_salary
	# 			puts jobs
	# 		end
	# 	end
	# end

	# def acceptable_jobs
	# end

# puts get_angel_salaries

# puts get_angel_titles.titles
	# puts get_angel_low_salaries.salary_min

# salaries_array <= get_angel_low_salaries.salary_min.each

# puts '========== Angel Jobs ========='
# get_angel_roles