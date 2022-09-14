def all_travels
  run_sql("SELECT * FROM travels ORDER BY id")
end

def create_travel(city, country, image_url, title, description)
  run_sql("INSERT INTO travels(city, country, image_url, title, description) VALUES($1, $2, $3, $4, $5)",[city, country, image_url, title, description])
end

def get_travel(id)
  run_sql("SELECT * FROM travels WHERE id = $1", [id])[0]
end

def update_travel(id, city, country, image_url, title, description)
  run_sql("UPDATE travels SET city = $2, country = $3, image_url = $4, title = $5, description = $6 WHERE id = $1",[id, city, country, image_url, title, description])
end

def delete_travel(id)
  run_sql("DELETE FROM travels WHERE id = $1", [id])
end