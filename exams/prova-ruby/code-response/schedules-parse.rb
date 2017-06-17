require 'csv'
require 'json'
require 'byebug'
require 'pp'

subjects = []
records = CSV.read('schedules.csv', { headers: true, col_sep: "," })
records.each{|record|

  subject_index = nil

  subjects
    .each_with_index { |subject, index|
      if subject[:name] == record["disciplina"] and
        subject[:course] == record["curso"] and
        subject[:instructor][:id] == record["codigo"]
        subject_index = index
        break
      end
    }

  time = {
    day: record["dia"],
    start: record["inicio"],
    end: record["fim"]
  }

  if subject_index.nil?
    subject = {
      name: record["disciplina"],
      course: record["curso"],
      instructor: {
        id: record["codigo"],
        name: record["professor"]
      },
      times: [ time ]
    }
    subjects << subject
  else
    subjects[subject_index][:times] << time
  end

}

File.write('subjects.json', JSON.pretty_generate(subjects))
