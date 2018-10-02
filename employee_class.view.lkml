view: employee_class {
  sql_table_name: dbo.EmployeeClass ;;
dimension:  pk {
  type: string
  primary_key: yes
  hidden: yes
  sql: ${emp}+${class} + cast(${class_start_date} as varchar(255));;
}
  dimension: class {
    type: string
    sql: ${TABLE}.Class ;;
  }

  dimension: class_end_date {
    type: string
    sql: ${TABLE}."Class End Date" ;;
  }

  dimension: class_orig_start_date {
    type: string
    sql: ${TABLE}."Class Orig Start Date" ;;
  }

  dimension: class_start_date {
    type: string
    sql: ${TABLE}."Class Start Date" ;;
  }

  dimension: dept {
    type: string
    sql: ${TABLE}.Dept ;;
  }

  dimension: emp {
    type: number
    sql: ${TABLE}."Emp#" ;;
  }

  dimension: loc {
    type: string
    sql: ${TABLE}.Loc ;;
  }

  dimension: pay_step {
    type: string
    sql: ${TABLE}."Pay Step" ;;
  }

  dimension: position {
    type: string
    sql: ${TABLE}."Position#" ;;
  }

  dimension: primary_class {
    type: string
    sql: ${TABLE}."Primary Class" ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.Status ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
