view: addresses {
  sql_table_name: public.addresses ;;
  drill_fields: [pk1_address_id]

  dimension: pk1_address_id {
    hidden: yes
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

   dimension: address_line_1 {
    type: string
    sql: ${TABLE}."address_line_1" ;;
  }

  dimension: address_line_2 {
    type: string
    sql: ${TABLE}."address_line_2" ;;
  }
}