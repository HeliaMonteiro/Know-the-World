require 'pg'

def run_sql(sql, sql_params = [])
  db = PG.connect(dbname: 'know_the_world_db')
  results = db.exec_params(sql, sql_params)
  db.close
  results
end 