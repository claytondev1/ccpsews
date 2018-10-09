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
}

explore: cohort_rate {
  label: "cohort"
  description: "Use this for cohort information"
}


explore: esstud_countper_rosterby_teacher {
  label: "Elementary Student Count Per Roster By teacher"
  description: "Use this for Roster By Teacher"
}

explore: rosters_by_elementary
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
  label: "DES High School Student Totals"
  description: "Use this to see the total of DES students in each High Schools"

  always_filter: {
    filters: {
      field: active
      value: "True"
    }
  }
   sql_always_where:${end_date} is 'null'  and ${end_status} is 'null'
  ${no_show} is 'false' and ${sped_exit_date} is 'null' and
  ${state_exclude} is 'false' and ${special_ed_status} is 'Y';;


    join: calendar {
    type: left_outer
    sql_on: ${calendar.calendar_id} = ${enrollment.calendar_id} ;;
    relationship: one_to_one
  }
  join: person {
    type: left_outer
    sql_on: ${person.person_id} = ${enrollment.person_id} } ;;
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
