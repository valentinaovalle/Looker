view: images {
  sql_table_name: public.images ;;

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

  dimension: error {
    type: string
    sql: ${TABLE}."error" ;;
  }

  dimension: mark_url {
    type: string
    sql: ${TABLE}."mark_url" ;;
  }

  dimension: migrated {
    type: yesno
    sql: ${TABLE}."migrated" ;;
  }

  dimension: original_url {
    type: string
    sql: ${TABLE}."original_url" ;;
  }

  dimension: resp_id {
    type: string
    sql: ${TABLE}."resp_id" ;;
  }

  dimension: schema {
    type: string
    sql: ${TABLE}."schema" ;;
  }

  dimension: session_id {
    type: string
    sql: ${TABLE}."session_id" ;;
  }

  dimension_group: updated {
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
    sql: ${TABLE}."updated_at" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
