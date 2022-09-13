def all_travels
  run_sql("SELECT * FROM travels ORDER BY id")
end

def create_travel(city, country, title, image_url)
  run_sql("INSERT INTO travels(city, country, title, image_url) VALUES($1, $2, $3, $4)",[city, country, title, image_url])
end

def get_travel(id)
  run_sql("SELECT * FROM travels WHERE id = $1", [id])[0]
end

def update_travel(id, city, country, title, image_url)
  run_sql("UPDATE travels SET city = $2, country = $3, title = $4, image_url = $5 WHERE id = $1",[id, city, country, title, image_url])
end

def delete_travel(id)
  run_sql("DELETE FROM travels WHERE id = $1", [id])
end