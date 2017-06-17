require 'json'
require 'text-table'

class UAI
  def initialize
    subjects_string = File.read('subjects.json')
    @subjects = JSON.parse(subjects_string)
    @days = %w(SEGUNDA-FEIRA TERÇA-FEIRA QUARTA-FEIRA QUINTA-FEIRA SEXTA-FEIRA)
    @start_times = %w(07:00:00 07:50:00 08:40:00 09:50:00 10:40:00 11:30:00 13:00:00 13:50:00 14:40:00 15:50:00 16:40:00 17:30:00 18:20:00 19:10:00 20:00:00 20:50:00 21:40:00)
    @end_times = %w(07:50:00 08:40:00 09:50:00 10:40:00 11:30:00 12:20:00 13:50:00 14:40:00 15:50:00 16:40:00 17:30:00 18:20:00 19:10:00 20:00:00 20:50:00 21:40:00 22:30:00)
  end

  def list_teachers course_name: nil
    @subjects
      .select{|subject|
        course_name.nil? ? true : course_name.eql?(subject['course'])
      }
      .map{|subject|
        subject['instructor']['name'].split(' - ').first
      }
      .uniq
      .sort
  end

  def list_courses_involved
    @subjects
      .map{|subject| subject['course'] }
      .uniq
      .sort
  end

  def list_schedule teacher_name
    subjects = @subjects
      .select{|subject|
        name = subject['instructor']['name'].split(' - ').first
        teacher_name.eql?(name)
      }
      .map{|subject|
        subject['times'].map{|time|
          name = subject['instructor']['name'].split(' - ').first
          time['course'] = subject['course']
          time['subject'] = subject['name']
          time['teacher'] = name
          time
        }
      }
      .reduce(:concat)
      .sort{|x, y|
        days = %w(SEGUNDA-FEIRA TERÇA-FEIRA QUARTA-FEIRA QUINTA-FEIRA SEXTA-FEIRA)
        [days.index(x['day']), x['start']] <=> [days.index(y['day']), y['start']]
      }
  end

  def list_occupied_schedule *teachers
    teachers
      .map{|teacher_name|
        list_schedule teacher_name
      }
      .reduce(:concat)
      .sort{|x, y|
        [@days.index(x['day']), x['start']] <=> [@days.index(y['day']), y['start']]
      }
  end

  def show_avaliable_times *teachers
    avaliable_times = {}

    @days.each{|day|
      avaliable_times[day] ||= {}
      @start_times.each{|star_time|
        avaliable_times[day][star_time] = 'sem aula'
      }
    }

    times = list_occupied_schedule *teachers

    times.each{|subject|
      day = subject['day']
      start_time = subject['start']
      avaliable_times[day][start_time] = ''
    }

    schedules = @start_times
      .map{|star_time|
        @days
        .map{|day| avaliable_times[day][star_time] }
        .unshift(star_time)
      }

    schedules.unshift @days.unshift('')

    schedules.to_table(:first_row_is_head => true).to_s
  end
end
