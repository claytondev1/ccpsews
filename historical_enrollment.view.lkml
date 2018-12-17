view: historical_enrollment {
  sql_table_name: dbo.HistoricalEnrollment ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension_group: record {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.RecordDate ;;
  }

  dimension: report_type {
    type: string
    sql: ${TABLE}.ReportType ;;
  }

  dimension: value {
    type: number
    sql: ${TABLE}.Value ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
