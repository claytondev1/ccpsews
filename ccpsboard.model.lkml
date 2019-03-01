connection: "bisqldb"

include: "*.view.lkml"                       # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#
explore: enrollment {

  access_filter: {
    field: school.legacy_key_number
    user_attribute: school
  }

  from: enrollment
  label: "Enrollment"
  description: "Use this to see enrollment for current year"
  always_join: [calendar]
  sql_always_where:(enrollment.active = 'true')
    AND ((enrollment.endDate IS NULL) OR (enrollment.endDate IS NULL OR LEN(enrollment.endDate ) = 0 ))
    AND ((enrollment.endStatus IS NULL) OR (enrollment.endStatus IS NULL OR LEN(enrollment.endStatus ) = 0 ))
    AND (((enrollment.noShow IS NULL OR LEN(enrollment.noShow ) = 0 ) OR enrollment.noShow = 'false'))
    AND (enrollment.stateExclude = 'false')

    AND calendar.endyear = Case when ( MONTH(getdate()) >=7 and MONTH(getdate()) <= 12 )
                      then year(getdate()) + 1
                    else
                    year(getdate())
                    end   ;;

    join: calendar {
      type: left_outer
      sql_on: ${calendar.calendar_id} = ${enrollment.calendar_id} ;;
      relationship: many_to_one
    }

    join: individual {
      type: left_outer
      sql_on:   ${enrollment.person_id} = ${individual.person_id} ;;
      relationship: many_to_one
    }

    join: person {
      type: left_outer
      sql_on: ${person.person_id} = ${enrollment.person_id} ;;
      relationship: one_to_one
    }
    join: school {
      type:  left_outer
      sql_on: ${school.school_id} = ${calendar.school_id};;
      relationship: one_to_one
    }
    join: school_year {
      type: left_outer
      sql_on: ${school_year.end_year} = ${calendar.end_year};;
      relationship:  one_to_one
    }
    join: course {
      type: left_outer
      sql_on: ${course.calendar_id} = ${enrollment.calendar_id} ;;
      relationship: many_to_many
    }

  }
