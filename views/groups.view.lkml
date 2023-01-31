view: groups {
  sql_table_name: public.groups ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: challenge {
    type: number
    sql: ${TABLE}."challenge" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."name" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name, essentials.count]
  }
}
