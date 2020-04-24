require 'chartmogul'

ChartMogul.account_token = ''
ChartMogul.secret_key = ''

months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]


result = ChartMogul::Metrics.mrr(start_date: '2019-01-01', end_date: '2019-04-30', interval: 'month')

print("Total MRR for Q1 2019 \n\n")

i = 0

while i < result.entries.size

month = result.entries[i].date.month

print("#{months[month - 1]} : #{result.entries[i].mrr} \n")


i = i + 1

end


