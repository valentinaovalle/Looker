view: visits {
  sql_table_name: public.visits ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
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

  dimension: document_id {
    type: string
    sql: ${TABLE}."document_id" ;;
  }

  dimension: endpoint {
    type: string
    sql: ${TABLE}."endpoint" ;;
  }

  dimension: id_task {
    type: number
    sql: ${TABLE}."id_task" ;;
  }

  dimension: imgs {
    type: string
    sql: ${TABLE}."imgs" ;;
  }

  dimension: lat {
    type: number
    sql: ${TABLE}."lat" ;;
  }

  dimension: lon {
    type: number
    sql: ${TABLE}."lon" ;;
  }

  dimension: resp {
    type: string
    sql: ${TABLE}."resp" ;;
  }
  dimension: location {
    type: location
    sql_latitude: ${lat};;
    sql_longitude: ${lon};;
  }
  dimension: session_id {
    type: string
    sql: ${TABLE}."session_id" ;;
  }

  dimension: store {
    type: string
    sql: ${TABLE}."store" ;;
  }

  dimension: uid {
    type: string
    sql: ${TABLE}."uid" ;;
  }
  dimension: store_id {
    type: string
    sql: ${TABLE}."store_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
