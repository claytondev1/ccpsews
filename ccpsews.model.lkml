connection: "bisqldb"

#include: "*.view.lkml"         # include all views in this project
#include: "*.dashboard.lookml"  # include all dashboards in this project

include: "*.view"
#include: "*.dashboard"

datagroup: cachingpolicy {
  max_cache_age: "4 hours"
  sql_trigger: select getdate() ;;
}
##### Start Student information ######

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
                    end
                    ;;

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

    join: identity {
      type: inner
      sql_on: ${identity.identity_id} = ${person.current_identity_id} ;;
      relationship: one_to_one
    }

    join: lep { #might need additional logic in join - see query: https://dashboard.clayton.k12.ga.us:9999/sql/s67wbxgzzxps85
      view_label: "LEP"
      type: left_outer
      sql_on: ${lep.person_id}=${person.person_id}
        and ${lep.program_status} = 'LEP'
        and ${lep.exit_date} is null
        ;;
      relationship: one_to_one
    }
    join: lepservice {
      view_label: "LEP"
      fields: [lepservice.start_date]
      sql_on: ${lepservice.person_id}=${person_id}
      and ${lepservice.start_date} =
          (select max(leps2.startDate) from lepService leps2 where leps2.personID = ${lepservice.person_id})
      and ${lepservice.start_date} is not null
  ;;
      relationship: one_to_one
    }
    join: lepservice_type {
      view_label: "LEP"
      fields: [] #This brings in NO fields to explore
      sql_on: ${lepservice.lep_service_type_id}=${lepservice_type.lep_service_type_id}
      and ${lepservice_type.code} not like 'NonESOL%';;
      relationship: one_to_many
    }
    join: enrollment_ga {
      sql_on: ${enrollment.enrollment_id} =${enrollment_ga.enrollment_id}   ;;
      relationship: one_to_one
    }

#     join: section {
#       sql_on: ${section.course_id} = ${course.course_id};;
#       relationship: one_to_many
#     }
#
#     join: trial {
#
#       sql_on:  ${trial.trial_id} = ${section.trial_id} and ${trial.calendar_id} = ${calendar.calendar_id}
#       and ${trial.active} = '1' ;;
#       relationship: many_to_many
#     }
#     join: roster {
#       sql_on: ${roster.trial_id} = ${trial.trial_id}
#       and  ${roster.person_id} = ${person.person_id}
#       and ${roster.section_id} = ${section.section_id}
#       and ${roster.end_date} is null;;
#
#       relationship: many_to_many
#     }


  }

explore: min_max_table {

  label: "Min Max Enrollment"



}

explore: v_dual_enrollment {
  access_filter: {

    field: school.legacy_key_number
    user_attribute: school

  }

  label: "Student Dual Enrollment"
  join: school {
    type:  inner
    sql_on: ${school.school_id} = ${v_dual_enrollment.school_id} ;;
    relationship: one_to_one
  }
}

explore: historical_enrollment {
  label: "Hitorical Enrollment"
}

explore: v_enrollment_in_foreig_language {
  label: "Enrollment In Foreign Language"

  access_filter: {
    field: school.legacy_key_number
    user_attribute: school
  }

  join: school {
    type:  inner
    sql_on: ${school.school_id} = ${v_enrollment_in_foreig_language.school_id};;
    relationship: one_to_one
  }
}

explore: v_enrollment_in_apcourse {
  label: "Enrollment By AP Course"
  access_filter: {
    field: school.legacy_key_number
    user_attribute: school
  }

  join: school {
    type:  inner
    sql_on: ${school.school_id} = ${v_enrollment_in_apcourse.school_id};;
    relationship: one_to_one
  }

}

explore: individual {
  label: "Student information"

#   access_filter: {
#     field:
#     user_attribute: school
#   }

  sql_always_where: ${enrollment.active} = 1 ;;





  join: enrollment {

    type: left_outer
    sql_on:  ${individual.person_id} = ${enrollment.person_id}  ;;
    relationship: one_to_many
  }
}

# TAYLOR (not Dax) Deleted explore: v_enrollment_lep

explore: attendance_detail {

  access_filter: {
    field: school.legacy_key_number
    user_attribute: school
  }

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
  join: location {

    type: inner
    sql_on: right('000'+ cast( ${attendance_detail.school_code} as varchar ),3) = ${location.location_cd}  ;;
    relationship: one_to_one
  }
}

explore: course_detail {

  access_filter: {
    field: school.legacy_key_number
    user_attribute: school
  }

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

explore: cohort_rate {
  label: "cohort"
  description: "Use this for cohort information"
}

explore: esstud_countper_rosterby_teacher {
  label: "Elementary Student Count Per Roster By teacher"
  description: "Use this for Roster By Teacher"
}

explore: rosters_by_elementary_static {
  label: "Roster by Elementary"
  description: "Use this for roster in elementary ( class size) "

}

explore: rosters_by_middle {
  label: "Roster by Middle School"
  description: "Use this for roster in Middle ( class size) "
}

explore: rosters_by_high  {
  label: "Roster by High School"
  description: "Use this for roster in High ( class size) "
}

explore: behavior_detail {

  access_filter: {
    field: school.legacy_key_number
    user_attribute: school
  }

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

##### End Student information ######

##### Start Employee information ######

explore: employee {

  access_filter: {
    field: location.location_cd
    user_attribute: school
  }

  sql_always_where: ${employee_class.status} <> 'T' and ${employee_class.primary_class} = 'P' and
    ${class.fiscal_year} =  'FY' +  substring
                (Cast(
                   (Case when ( MONTH(getdate()) >=7 and MONTH(getdate()) <= 12 )
                    then year(getdate()) + 1
                  else
                  year(getdate())
                  end )
                       as varchar
                  )
                  , 3, 2 )
    ;;
  #always_filter: {
   # filters: {
    #  field: employee_class.status
    #  value: "A,N,P"
     # }
    #filters: {
    #  field: employee_class.primary_class
    #  value: "P"
    #}
  #}
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

explore: employee_by_degree {
  from: employee
  sql_always_where: ${employee_class.status} <> 'T' and ${employee_class.pay_cert_lvl} like 'Master'
                and ${employee_class.pay_cert_lvl} like 'Bachelor'
                and ${employee_class.pay_cert_lvl} like 'Specialist'
                and ${employee_class.pay_cert_lvl} like 'Doctorate';;
  join: employee_class {
    sql_on: ${employee_by_degree.emp} = ${employee_class.emp} ;;
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

explore: teacher {
  from: employee

  access_filter: {
    field: location.location_cd
    user_attribute: school
  }

  sql_always_where: ${position.class} not like 'M%' and  ${position.class} not like 'H%' and  ${position.class} not like 'E%'

                        and ${employee_class.status} <> 'T' and  ( ${position.class}  like '50%' or  ${position.class}  like '498%' or  ${position.class} = '4990' )
                      and (${class.class_code} like '50%' or ${class.class_code} like '498%' or ${class.class_code} ='4990')
                       ;;

           # always_filter: {
            #  filters: {
             #   field: employee_class.status
            #    value: "A,N,P"
            #  }
            #  filters: {
            #    field: employee_class.primary_class
            #    value: "P"
            #  }


          #  }
    join: employee_class {
      sql_on: ${teacher.emp} = ${employee_class.emp} ;;

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
      sql_on: ${teacher.loc} = ${location.location_cd} ;;
      type: inner
      relationship: one_to_one
    }

  }

explore: worker {
#   fields: [ALL_FIELDS*, -worker.location_name]
from: employee

access_filter: {
  field: employee_class.loc
  user_attribute: school
}

label: " Total Employees By Race"
description: "Use this for Total Employees By Race"
join: employee_class {
  type: left_outer
  sql_on: ${worker.emp} = ${employee_class.emp};;
  relationship: many_to_one
}
}

explore: activeposition {

  access_filter: {
    field: location.location_cd
    user_attribute: school
  }

  from: position
  label: "active position"
  sql_always_where:   ${activeposition.status} = 'A' and


          ${class.fiscal_year} =  'FY' +  substring
                      (Cast(
                         (Case when ( MONTH(getdate()) >=7 and MONTH(getdate()) <= 12 )
                          then year(getdate()) + 1
                        else
                        year(getdate())
                        end )
                             as varchar
                        )
                        , 3, 2 ) and

          ${activeposition.class} not like 'M%' and  ${activeposition.class} not like 'H%' and  ${activeposition.class} not like 'E%'

          ;;

    join: class {
      sql_on: ${activeposition.class} = ${class.class_code} ;;
      type: left_outer
      relationship: many_to_one
    }

    join: location
    {
      sql_on: ${activeposition.site} = ${location.location_cd} ;;
      type: inner
      relationship: one_to_one
    }

  }

explore: vacant_positions {
  from: vacant_positions
  label: "vacant position"

  access_filter: {
    field: location.location_cd
    user_attribute: school
  }

  join: location {
    sql_on: ${location.location_cd} = ${vacant_positions.site} ;;
    type: inner
    relationship: one_to_many
  }
}

explore: v_vacant_positions_teacher{
  label: "Teacher Vacancies"

  access_filter: {
    field: location.location_cd
    user_attribute: school
  }

  join: location {
    sql_on: ${location.location_cd} = ${v_vacant_positions_teacher.site} ;;
    type: inner
    relationship: one_to_many
  }
}

##### End Employee information ######

#explore: position1 {

      # from: position
#  label: "active position"
#  join: employee_class {
#      sql_on: ${position.position_nbr} = ${employee_class.position} ;;
#      relationship: one_to_one

      # }
#}


##### This was commented out #####
# explore: v_intervention_programs {
#
#   label: "Enrollment By Intervention Programs"
#
#   join: school {
#     type: inner
#     sql_on: ${school.school_id} = ${v_intervention_programs.school_id}  ;;
#     relationship: one_to_one
#   }
# }
