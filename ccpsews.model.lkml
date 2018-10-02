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
  sql_always_where: ${employee_class.status} <> 'T' ;;
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

explore: mid_school_class_size_totalsby_schoolby_grade {
  label: "Middle School Class Size Total By School"
  description: "Use this for Middle School Class Size"
}

explore: high_school_class_size_totalby_schoolby_grade {
  label: "High School Class Size Total"
  description: "Use this for High School Class Size Total"
}

explore: mid_school_student_countper_rosterby_teacher {
  label: "Middle School Student Count Roster By Teacher"
  description: "Use this for Student Count by Roster"
}

explore: rosters_by_elementary
{
  label: "Roster by Elementary"
  description: "Use this for roster in elementary ( class size) "

}

explore: msct {
  label: "Sample Summary"
  description: "Use Sample"

  }
