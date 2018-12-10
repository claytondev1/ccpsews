view: v_intervention_programs {
  sql_table_name: dbo.vInterventionPrograms ;;



  dimension: first_name {
    type: string
    sql: ${TABLE}.firstName ;;
  }

  dimension: lastname {
    type: string
    sql: ${TABLE}.lastname ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: studentnumber {
    type: string
    sql: ${TABLE}.studentnumber ;;
  }

  dimension: school_id {
    type: string
    sql: ${TABLE}.SchoolID ;;

  }

  measure: count {
    type: count_distinct
    sql: ${studentnumber} ;;
    label: "Total Students"
    drill_fields: [school.name, count]
  }
}
