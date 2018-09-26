view: employee {
  sql_table_name: dbo.Employee ;;

  dimension: birth_date {
    type: string
    sql: ${TABLE}."Birth Date" ;;
  }

  dimension: age {
    type: number
    sql: DATEDIFF(year, ${birth_date}, getdate()) ;;
    value_format_name: decimal_0
  }

  dimension: age_tier {
    type: tier
    style: integer
    tiers: [20, 30, 40, 50, 60, 70, 100]
    sql: ${age} ;;
  }

  measure: average_age {
    type: average
    sql: ${age} ;;
    value_format_name: decimal_0
  }


  dimension: certified {
    type: string
    sql: ${TABLE}.Certified ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.City ;;
  }

  dimension: county_years_exp {
    description: "This includes only years of experience within Clayton County"
    type: number
    sql: ${TABLE}."County Years Exp" ;;
  }

  dimension: current_hire_date {
    type: string
    sql: ${TABLE}."Current Hire Date" ;;
  }

  dimension: dept {
    type: string
    sql: ${TABLE}.Dept ;;
  }

  dimension: emp {
    label: "Employee #"
    type: number
    sql: ${TABLE}."Emp#" ;;
  }

  dimension: ethnicity {
    type: string
    sql: ${TABLE}.Ethnicity ;;
  }

  dimension: fname {
    type: string
    sql: ${TABLE}.Fname ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.Gender ;;
  }

  dimension: lname {
    type: string
    sql: ${TABLE}.Lname ;;
  }

  dimension: loc {
    type: string
    sql: ${TABLE}.Loc ;;
  }

  dimension: mname {
    type: string
    sql: ${TABLE}.Mname ;;
  }

  dimension: original_hire_date {
    type: string
    sql: ${TABLE}."Original Hire Date" ;;
  }

  dimension: phone {
    type: number
    sql: ${TABLE}.Phone ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.State ;;
  }

  dimension: street {
    type: string
    sql: ${TABLE}.Street ;;
  }

  dimension: street_2 {
    type: string
    sql: ${TABLE}."Street 2" ;;
  }

  dimension: termination_date {
    type: string
    sql: ${TABLE}."Termination Date" ;;
  }

  dimension: total_years_exp {
    description: "This includes years outside of Clayton County"
    type: number
    sql: ${TABLE}."Total Years Exp" ;;
  }

  dimension: zip {
    type: zipcode
    sql: ${TABLE}.Zip ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: [lname, fname, mname]
  }

  measure: unique_employee {
    type: count_distinct
    sql: ${emp} ;;
    value_format_name: decimal_0
    drill_fields: [lname, fname, age, county_years_exp]
  }
}