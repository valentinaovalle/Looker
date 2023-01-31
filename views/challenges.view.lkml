view: challenges {
  sql_table_name: public.challenges ;;
  drill_fields: [challenge_id]

  dimension: challenge_id {
    primary_key: yes
    type: number
    sql: ${TABLE}."challenge_id" ;;
  }

  dimension: duration {
    type: number
    sql: ${TABLE}."duration" ;;
  }

  dimension_group: expire {
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
    sql: ${TABLE}."expire" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."name" ;;
  }

  dimension: tasks {
    type: string
    sql: ${TABLE}."tasks" ;;
  }

  measure: count {
    type: count
    drill_fields: [challenge_id, name]
  }
}
