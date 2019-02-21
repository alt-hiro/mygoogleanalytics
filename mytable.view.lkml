view: mytable {
  sql_table_name: ga.mytable ;;

  dimension: _30_day_users {
    type: number
    sql: ${TABLE}._30_day_users ;;
  }

  dimension_group: date {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date ;;
  }

  dimension: profile {
    type: string
    sql: ${TABLE}.profile ;;
  }

  dimension: unique_id {
    type: number
    sql: ${TABLE}.unique_id ;;
  }

  dimension: visits {
    type: number
    sql: ${TABLE}.visits ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
