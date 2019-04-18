view: language {
  sql_table_name: dbo.Language ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: language_code {
    type: string
    sql: ${TABLE}.LanguageCode ;;
  }

  dimension: language_name {
    type: string
    sql: ${TABLE}.LanguageName ;;
  }

  measure: count {
    type: count
    drill_fields: [id, language_name]
  }
}
