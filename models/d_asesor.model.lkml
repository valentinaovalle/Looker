connection: "alpunto"

# include all the views
include: "/views/**/*.view"

datagroup: d_asesor_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: d_asesor_default_datagroup

explore: admin_users {}

explore: challenges {}

explore: clients {}

explore: comments {}

explore: configs {}

explore: essentials {
  join: groups {
    type: left_outer
    sql_on: ${essentials.group_id} = ${groups.id} ;;
    relationship: many_to_one
  }
}

explore: groups {}

explore: images {}

explore: img_review {}

explore: missings {}

explore: products {}

explore: recognitions {}

explore: review {}

explore: stores {
  join: clients {
    type: left_outer
    sql_on: ${stores.client_id} = ${clients.client_id} ;;
    relationship: many_to_one
  }
}

explore: stores_backup {
  join: clients {
    type: left_outer
    sql_on: ${stores_backup.client_id} = ${clients.client_id} ;;
    relationship: many_to_one
  }
}

explore: stores_backup_2 {
  join: clients {
    type: left_outer
    sql_on: ${stores_backup_2.client_id} = ${clients.client_id} ;;
    relationship: many_to_one
  }
}

explore: users {}

explore: visits {}
