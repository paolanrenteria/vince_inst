connection: "faa"

# include all the views
include: "*.view"

datagroup: paola_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: paola_default_datagroup

explore: aircraft {}

#   joins:
#     - join: aircraft_types
#       type: left_outer
#       sql_on: ${aircraft.aircraft_type_id} = ${aircraft_types.aircraft_type_id}
#       relationship: many_to_one

#     - join: aircraft_engine_types
#       type: left_outer
#       sql_on: ${aircraft.aircraft_engine_type_id} = ${aircraft_engine_types.aircraft_engine_type_id}
#       relationship: many_to_one


# - explore: accidents

# - explore: aircraft_engine_types

# - explore: aircraft_engines
#   joins:
#     - join: aircraft_engine_types
#       type: left_outer
#       sql_on: ${aircraft_engines.aircraft_engine_type_id} = ${aircraft_engine_types.aircraft_engine_type_id}
#       relationship: many_to_one


# - explore: aircraft_models
#   joins:
#     - join: aircraft_types
#       type: left_outer
#       sql_on: ${aircraft_models.aircraft_type_id} = ${aircraft_types.aircraft_type_id}
#       relationship: many_to_one

#     - join: aircraft_engine_types
#       type: left_outer
#       sql_on: ${aircraft_models.aircraft_engine_type_id} = ${aircraft_engine_types.aircraft_engine_type_id}
#       relationship: many_to_one


# - explore: aircraft_types

# - explore: airport_remarks

# - explore: airports

# - explore: carriers

# - explore: exceptions

# - explore: ontime

# - explore: states

# - explore: zipcodes
