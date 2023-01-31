view: stores_backup_2 {
  sql_table_name: public.stores_backup_2 ;;

  dimension: add_exhibition {
    type: string
    sql: ${TABLE}."add_exhibition" ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}."category" ;;
  }

  dimension: chain_distributor {
    type: string
    sql: ${TABLE}."chain_distributor" ;;
  }

  dimension: channel {
    type: string
    sql: ${TABLE}."channel" ;;
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

  dimension: group {
    type: string
    sql: ${TABLE}."group" ;;
  }

  dimension: lat {
    type: number
    sql: ${TABLE}."lat" ;;
  }

  dimension: leader {
    type: string
    sql: ${TABLE}."leader" ;;
  }

  dimension: lon {
    type: number
    sql: ${TABLE}."lon" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."name" ;;
  }

  dimension: store_key {
    type: string
    sql: ${TABLE}."store_key" ;;
  }

  dimension: subchannel {
    type: string
    sql: ${TABLE}."subchannel" ;;
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
