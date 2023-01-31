view: configs {
  sql_table_name: public.configs ;;
  drill_fields: [config_id]

  dimension: config_id {
    primary_key: yes
    type: number
    sql: ${TABLE}."config_id" ;;
  }

  dimension: key {
    type: string
    sql: ${TABLE}."key" ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}."value" ;;
  }

  measure: count {
    type: count
    drill_fields: [config_id]
  }
}
