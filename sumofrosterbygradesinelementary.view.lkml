view: sumofrosterbygradesinelementary {
  derived_table: {
    sql: WITH sql_runner_query AS (SELECT

        r."Grade Level"  AS "Grades",
        Sum(r.NoofRosters)  AS "Sum Of Roster",
        r.Std_Enrolled  AS "Enrolled"
      FROM dbo.RostersByElementary  AS r

      GROUP BY r."Grade Level" ,r.Std_Enrolled
      )
      SELECT

        sql_runner_query.Grades AS "sql_runner_query.grades",
        sql_runner_query."Sum Of Roster" AS "sql_runner_query.sum_of_roster",
        sql_runner_query.Enrolled AS "sql_runner_query.enrolled"
      FROM sql_runner_query

      GROUP BY sql_runner_query.Grades,sql_runner_query."Sum Of Roster",sql_runner_query.Enrolled
      ORDER BY 1
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: sql_runner_query_grades {
    type: string
    sql: ${TABLE}."sql_runner_query.grades" ;;
  }

  dimension: sql_runner_query_sum_of_roster {
    type: number
    sql: ${TABLE}."sql_runner_query.sum_of_roster" ;;
  }

  dimension: sql_runner_query_enrolled {
    type: number
    sql: ${TABLE}."sql_runner_query.enrolled" ;;
  }

  set: detail {
    fields: [sql_runner_query_grades, sql_runner_query_sum_of_roster, sql_runner_query_enrolled]
  }
}
