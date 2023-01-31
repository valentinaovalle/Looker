view: stores_backup {
  sql_table_name: public.stores_backup ;;

  dimension: add_exhibition {
    type: string
    sql: ${TABLE}."add_exhibition" ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}."category" ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}."city" ;;
  }

  dimension: client_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."client_id" ;;
  }

  dimension: day_route {
    type: string
    sql: ${TABLE}."day_route" ;;
  }

  dimension: direction {
    type: string
    sql: ${TABLE}."direction" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."name" ;;
  }

  dimension: tipology {
    type: string
    sql: ${TABLE}."tipology" ;;
  }

  dimension: user_id {
    type: string
    sql: ${TABLE}."user_id" ;;
  }

  dimension: zone_id {
    type: string
    sql: ${TABLE}."zone_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [name, clients.client_id, clients.name]
  }
}
