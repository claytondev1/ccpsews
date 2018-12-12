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

  dimension: pay_cert_Type{
    type: string
    sql: case when  ${TABLE}."Pay Cert Type" = 'SRT'
              then 'Standard Professional Teaching'
              when  ${TABLE}."Pay_Cert_Type" = 'R'
              then 'Paraprofessional'
              when  ${TABLE}."Pay_Cert_Type" = 'IN4T'
              then 'Induction Pathway 4'
              when  ${TABLE}."Pay_Cert_Type" = 'SRS'
              then 'Standard Professional Service'
              when  ${TABLE}."Pay_Cert_Type" = 'IN1T'
              then 'Induction Pathway 1'
              when  ${TABLE}."Pay_Cert_Type" = 'PRT'
              then 'Performance Based Professional Teaching'
              when  ${TABLE}."Pay_Cert_Type" = 'SRL'
              then 'Standard Paraprofessional Leadership'
              when  ${TABLE}."Pay_Cert_Type" = 'IN3T'
              then 'Induction Pathway 3'
              when  ${TABLE}."Pay_Cert_Type" = 'WT'
              then 'Waiver'
              when  ${TABLE}."Pay_Cert_Type" = 'P'
              then 'Provisional Permit'
              when  ${TABLE}."Pay_Cert_Type" = 'XT'
              then 'International Exchange Teacher'
              when  ${TABLE}."Pay_Cert_Type" = 'SIT'
              then 'Supplemental Induction Teaching'
              when  ${TABLE}."Pay_Cert_Type" = 'NT'
              then 'Nonrenewable Teaching'
              when  ${TABLE}."Pay_Cert_Type" = 'NL'
              then 'Nonrenewable Leadership'
              when  ${TABLE}."Pay_Cert_Type" = 'NPL'
              then 'Nonerenewable Leadership'
              when  ${TABLE}."Pay_Cert_Type" = 'NCER'
              then 'Non-Certification'
              when  ${TABLE}."Pay_Cert_Type" = 'IN4S'
              then 'Induction Pathway 4 Services'
              when  ${TABLE}."Pay_Cert_Type" = 'NTS'
              then 'Nonrenewable Teaching'
              when  ${TABLE}."Pay_Cert_Type" = 'PBT'
              then 'Performance Based Teaching'
              when  ${TABLE}."Pay_Cert_Type" = 'T'
              then 'Teaching Certification'
              when  ${TABLE}."Pay_Cert_Type" = 'IN2T'
              then 'Induction Pathway 2'
              when  ${TABLE}."Pay_Cert_Type" = 'PRL'
              then 'Performance Based Professional Leadership'
              else 'other'
        end
        ;;
  }

  dimension: pay_cert_lvl {
    type: string
    sql: case when ${TABLE}."Pay Cert Lvl" = '4'
              then 'Bachelor'
              when ${TABLE}."Pay Cert Lvl" = '5'
              then 'Master'
              when ${TABLE}."Pay Cert Lvl" = '6'
              then 'Specialist'
              when ${TABLE}."Pay Cert Lvl" = '7'
              then 'Doctorate'
              else 'other'
        end
        ;;
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
