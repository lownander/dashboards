
require "date"
require "simple_analytics"

today = Date.today
yesterday = today - 1
dateRange = 28;
startDate = (yesterday - dateRange).to_s
endDate = (yesterday).to_s

analytics = SimpleAnalytics::Api.authenticate('emil.lownander@gmail.com', '2580625806')
options = { :accountType => 'GOOGLE', :source => 'emils-dashboard' }

# Unique Visitors
SCHEDULER.every '1m', :first_in => 0 do |job|
	analytics.fetch(
	  'ids'        => 'ga:65059244',
	  'metrics'    => 'ga:visitors',
	  'start-date' => startDate,
	  'end-date'   => endDate
	)
	x = analytics.rows[0][0]
	send_event('unique-visitors', { :value => x })
end

# Visits Graph

SCHEDULER.every '1m', :first_in => '3s' do |job|

	visits = []
	dateRange.downto(1) do |n|
		date = today - n
		
		analytics.fetch(
		  'ids'        => 'ga:65059244',
		  'metrics'    => 'ga:visits',
		  'start-date' => date,
		  'end-date'   => date
		)
		visitCount = analytics.rows
		visits << { :x => n, :y => visitCount }
	end
	send_event('visits', { :points => visits })
end

# Keywords List

SCHEDULER.every '1m', :first_in => '6s' do |job|
	analytics.fetch(
	  'ids'        => 'ga:65059244',
	  'metrics'    => 'ga:visits',
	  'dimensions' => 'ga:keyword',
	  'filters'    => 'ga:medium==organic',
	  'sort'       => '-ga:visits',
	  'max-results'=> 15,
	  'start-date' => startDate,
	  'end-date'   => endDate
	)
	keywords = get_keywords analytics.rows
	send_event('keywords', { items: keywords })

end

def get_keywords(rows)
	keywords = []
	rows.each do |row|
		keyword = row[0]
		visits = row[1]
		unless keyword == "(not provided)"
			keywords << { :label => keyword, value: visits }
		end
	end
	keywords
end