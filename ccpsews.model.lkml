connection: "edficcps"

include: "*.view.lkml"         # include all views in this project
include: "*.dashboard.lookml"  # include all dashboards in this project

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#
# explore: order_items {
#   join: orders {
#     relationship: many_to_one
#     sql_on: ${orders.id} = ${order_items.order_id} ;;
#   }
#
#   join: users {
#     relationship: many_to_one
#     sql_on: ${users.id} = ${orders.user_id} ;;
#   }
# }

###
datagroup: cachingpolicy {
  max_cache_age: "4 hours"
  sql_trigger: select getdate() ;;
}

explore: behavior_detail {
  label: "Behavior"
  description: "Use this for behavior information"
  join: individual {
    type: left_outer
    sql_on: right('0000000'+ cast( ${behavior_detail.student_number} as varchar ),7) = ${individual.student_number} ;;
    relationship: many_to_one
  }
  join: school {
    type: left_outer
    sql_on:right('000'+ cast( ${behavior_detail.school_code} as varchar ),3) = ${school.legacy_key_number} ;;
    relationship: many_to_one
  }
}


explore: attendance_detail {
  label: "Attendance"
  description: "Use this for attendance information"
  join: individual {
    type: left_outer
    sql_on: right('0000000'+ cast( ${attendance_detail.student_number} as varchar ),7) = ${individual.student_number} ;;
    relationship: many_to_one
  }
  join: school {
    type: left_outer
    sql_on:right('000'+ cast( ${attendance_detail.school_code} as varchar ),3) = ${school.legacy_key_number} ;;
    relationship: many_to_one
  }
}




explore: course_detail {
  label: "Course"
  description: "Use this for course information"
  join: individual {
    type: left_outer
    sql_on: right('0000000'+ cast( ${course_detail.student_number} as varchar ),7) = ${individual.student_number} ;;
    relationship: many_to_one
  }
  join: school {
    type: left_outer
    sql_on:right('000'+ cast( ${course_detail.school_number} as varchar ),3) = ${school.legacy_key_number} ;;
    relationship: many_to_one
  }
}



explore: employee {
 # sql_always_where: ${employee_class.status} <> 'T' ;;
always_filter: {
  filters: {
    field: employee_class.status
    value: "A,N,P"
    }
  filters: {
    field: employee_class.primary_class
    value: "P"
  }
}
  join: employee_class {
    sql_on: ${employee.emp} = ${employee_class.emp} ;;
    type: left_outer
    relationship: many_to_one
  }
  join: class {
    sql_on: ${employee_class.class} = ${class.class_code} ;;
    type: left_outer
    relationship: many_to_one
  }
  join: position {
    sql_on: ${employee_class.position} = ${position.position_nbr} ;;
    type: left_outer
    relationship: many_to_many
  }

join: location
{
  sql_on: ${employee.loc} = ${location.location_cd} ;;
  type: inner
  relationship: one_to_one
}

}

explore: cohort_rate {
  label: "cohort"
  description: "Use this for cohort information"
}


explore: esstud_countper_rosterby_teacher {
  label: "Elementary Student Count Per Roster By teacher"
  description: "Use this for Roster By Teacher"
}

explore: rosters_by_elementary_static
{
  label: "Roster by Elementary"
  description: "Use this for roster in elementary ( class size) "

}

explore: rosters_by_middle
{
  label: "Roster by Middle School"
  description: "Use this for roster in Middle ( class size) "
 }

explore: rosters_by_high
{
  label: "Roster by High School"
  description: "Use this for roster in High ( class size) "
}

explore: worker {
  from: employee
  label: " Total Employees By Race"
  description: "Use this for Total Employees By Race"
  join: employee_class {
    type: left_outer
    sql_on: ${worker.emp} = ${employee_class.emp};;
    relationship: many_to_one
  }
}

explore: enrollment {
  from: enrollment
  label: "Enrollment"
  description: "Use this to see enrollment for current year"
 always_join: [calendar]
   sql_always_where:(enrollment.active = 'true')
AND ((enrollment.endDate IS NULL) OR (enrollment.endDate IS NULL OR LEN(enrollment.endDate ) = 0 ))
AND ((enrollment.endStatus IS NULL) OR (enrollment.endStatus IS NULL OR LEN(enrollment.endStatus ) = 0 ))
AND (((enrollment.noShow IS NULL OR LEN(enrollment.noShow ) = 0 ) OR enrollment.noShow = 'false'))
AND (enrollment.stateExclude = 'false')

AND calendar.endyear = 2019 ;;

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

  }

explore: individual {
  label: "Student information"

  sql_always_where: ${enrollment.active} = 1 ;;





  join: enrollment {

    type: left_outer
    sql_on:  ${individual.person_id} = ${enrollment.person_id}  ;;
  relationship: one_to_many
  }
}

explore: position {

  from: position
  label: "active position"
  join: employee_class {
      sql_on: ${position.position_nbr} = ${employee_class.position} ;;
      relationship: one_to_one

  }
}
explore: vacant_positions {
  from: vacant_positions
  label: "vacant position"
}


########################################
# Explores for Dr. Tappler's Analyisis #
########################################

# explore: student_achievement {
#   from: district_addresses
#
#   join: actdata {
#     type: left_outer
#     sql_on:  ;;
#   }
# }

explore: act_data {
label: "SAT and ACT Scores"
  join: sat_data {
    type: inner
    sql_on: ${act_data.school_code} = ${sat_data.school_code};;
    relationship: many_to_many
  }

  join: school {
    type: left_outer
    relationship: many_to_many
    sql_on: ${act_data.school_code} = ${school.legacy_key_number} ;;
  }
  join: district_addresses {
    type: inner
    relationship: many_to_many
    sql_on: ${school.zip} = ${district_addresses.zip} ;;

  }
}

#
# explore: sat_data {}
#
# explore: actdata_2 {
#   from: actdata
# }


explore: v_dual_enrollment {
  label: "Student Dual Enrollment"
}

explore: v_vacant_positions_teacher
{
  label: "Vacant Position for Teacher"


}
