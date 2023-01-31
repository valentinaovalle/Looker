view: recognitions {
  sql_table_name: public.recognitions ;;

  dimension: bounding_box {
    type: string
    sql: ${TABLE}."bounding_box" ;;
  }

  dimension: prod_id {
    type: number
    sql: ${TABLE}."prod_id" ;;
  }

  dimension: recon_id {
    type: number
    sql: ${TABLE}."recon_id" ;;
  }

  dimension: resp_id {
    type: string
    sql: ${TABLE}."resp_id" ;;
  }

  dimension: score {
    type: number
    sql: ${TABLE}."score" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
