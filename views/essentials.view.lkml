view: essentials {
  sql_table_name: public.essentials ;;

  dimension: group_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."group_id" ;;
  }

  dimension: prods {
    type: string
    sql: ${TABLE}."prods" ;;
  }

  measure: count {
    type: count
    drill_fields: [groups.name, groups.id]
  }
}
