view: derivetableview {
# normal derive table it does not store data in sql server
derived_table: {
  sql:  select * from enrollment where endyear = '2019';;
  # it keeps table in db for 24 hr and recreates after that ...
datagroup_trigger: cachingpolicy

}

#
}
