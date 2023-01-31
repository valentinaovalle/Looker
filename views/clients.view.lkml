view: clients {
  sql_table_name: public.clients ;;
  drill_fields: [client_id]

  dimension: client_id {
    primary_key: yes
    type: number
    sql: ${TABLE}."client_id" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."name" ;;
  }

  dimension: tipology {
    type: string
    sql: ${TABLE}."tipology" ;;
  }

  measure: count {
    type: count
    drill_fields: [client_id, name, stores.count, stores_backup.count, stores_backup_2.count]
  }
}
