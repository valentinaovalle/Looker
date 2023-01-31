view: missings {
  sql_table_name: public.missings ;;

  dimension: complete {
    type: yesno
    sql: ${TABLE}."complete" ;;
  }

  dimension_group: finished {
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
    sql: ${TABLE}."finished_at" ;;
  }

  dimension: generated {
    type: yesno
    sql: ${TABLE}."generated" ;;
  }
  dimension: products {
    type: string
    sql: ${TABLE}."products" ;;
  }

  dimension: session_id {
    type: string
    sql: ${TABLE}."session_id" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
