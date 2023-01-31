view: img_review {
  sql_table_name: public.img_review ;;
  drill_fields: [img_review_id]

  dimension: img_review_id {
    primary_key: yes
    type: number
    sql: ${TABLE}."img_review_id" ;;
  }

  dimension: channel {
    type: string
    sql: ${TABLE}."channel" ;;
  }

  dimension: completed_class {
    type: yesno
    sql: ${TABLE}."completed_class" ;;
  }

  dimension: completed_yolo {
    type: number
    sql: ${TABLE}."completed_yolo" ;;
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

  dimension: data {
    type: string
    sql: ${TABLE}."data" ;;
  }

  dimension: original_url {
    type: string
    sql: ${TABLE}."original_url" ;;
  }

  dimension: resp_id {
    type: string
    sql: ${TABLE}."resp_id" ;;
  }

  dimension: week {
    type: number
    sql: ${TABLE}."week" ;;
  }

  measure: count {
    type: count
    drill_fields: [img_review_id]
  }
}
