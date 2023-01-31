view: review {
  sql_table_name: public.review ;;

  dimension: bounding_box {
    type: string
    sql: ${TABLE}."bounding_box" ;;
  }

  dimension: class_index {
    type: number
    sql: ${TABLE}."class_index" ;;
  }

  dimension: class_pred {
    type: string
    sql: ${TABLE}."class_pred" ;;
  }

  dimension: class_true {
    type: string
    sql: ${TABLE}."class_true" ;;
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

  dimension: family_pred {
    type: string
    sql: ${TABLE}."family_pred" ;;
  }

  dimension: family_true {
    type: string
    sql: ${TABLE}."family_true" ;;
  }

  dimension: img_review {
    type: number
    sql: ${TABLE}."img_review" ;;
  }

  dimension: prod_index {
    type: number
    sql: ${TABLE}."prod_index" ;;
  }

  dimension: revision_id {
    type: number
    sql: ${TABLE}."revision_id" ;;
  }

  dimension: score {
    type: number
    sql: ${TABLE}."score" ;;
  }

  dimension: valid {
    type: yesno
    sql: ${TABLE}."valid" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
