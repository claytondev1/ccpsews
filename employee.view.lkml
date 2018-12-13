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
    primary_key: yes
    type: number
    sql: ${TABLE}."Emp#" ;;
  }

  dimension: ethnicity {
    type: string
    sql: case when ${TABLE}.Ethnicity = 'B'
             then 'Black'
              when ${TABLE}.Ethnicity = 'C'
             then 'White'
              when ${TABLE}.Ethnicity = 'H'
             then 'Hispanic'
              when ${TABLE}.Ethnicity = 'A'
             then 'Asian'
              when ${TABLE}.Ethnicity = 'M'
             then 'Multi-Race'
              when ${TABLE}.Ethnicity = 'I'
             then 'American Indian'
              else 'Other'
          end
          ;;
  }

  dimension: fname {
    type: string
    label: "First Name"
    sql: ${TABLE}.Fname ;;
  }

  dimension: gender {
    type: string
    sql: case when ${TABLE}.Gender = 'M'
             then 'Male'
             when ${TABLE}.Gender = 'F'
             then 'Female'
             else 'Other'
         end
        ;;
  }

  dimension: lname {
    type: string
    label: "Last Name"
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

  dimension_group: hired_at {
    type: time
    timeframes: [date
        ,week
        ,month
        ,year
        ]
    sql: cast(${TABLE}."Original Hire Date" as date) ;;
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

  dimension_group: terminated_at {
    type: time
    timeframes: [date
        ,week
        ,month
        ,year
        ]
    sql: cast(${TABLE}."Termination Date" as date) ;;
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

  dimension: zip5digit
  {

    type: zipcode
    label: "Zipcode"
    sql: left(${TABLE}.zip,5);;
    map_layer_name: us_zipcode_tabulation_areas
    drill_fields: [site_count*]

  }

dimension: location_name  {

  type: string
  sql: ${location.location_nm} ;;
#   link: {
#     label: "View School Info"
#     url: "https://looker:9999/dashboards/11?School%20Name={{ value | url_encode }}"
#   }

}
  measure: count {


    type: count_distinct
    sql: ${emp} ;;
    label: "Total Employees"
    drill_fields: [emp_detail*]
    }
    set: emp_detail {
      fields: [lname, fname, class.class_title]
    }


  measure: unique_employee {
    type: count_distinct
    label: "Total Employees"
    sql: ${emp} ;;
    value_format_name: decimal_0
    drill_fields: [site_count*]
  }

  set: site_count {
    fields: [ location_name , count]
    }
}
