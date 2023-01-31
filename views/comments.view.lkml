view: comments {
  sql_table_name: public.comments ;;
  drill_fields: [comment_id]

  dimension: comment_id {
    primary_key: yes
    type: number
    sql: ${TABLE}."comment_id" ;;
  }

  dimension: comment {
    type: string
    sql: ${TABLE}."comment" ;;
  }

  dimension_group: created {
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
    sql: ${TABLE}."created_at" ;;
  }

  dimension: event {
    type: string
    sql: ${TABLE}."event" ;;
  }

  dimension: img_id {
    type: string
    sql: ${TABLE}."img_id" ;;
  }

  dimension: session_id {
    type: string
    sql: ${TABLE}."session_id" ;;
  }

  dimension: user_id {
    type: string
    sql: ${TABLE}."user_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [comment_id]
  }
}
