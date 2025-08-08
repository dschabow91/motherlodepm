CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  email TEXT UNIQUE NOT NULL,
  password TEXT NOT NULL,
  role TEXT CHECK(role IN ('admin', 'tech')) NOT NULL
);
CREATE TABLE reports (
  id SERIAL PRIMARY KEY,
  user_id INTEGER REFERENCES users(id),
  content TEXT,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE inventory (
  id SERIAL PRIMARY KEY,
  part_name TEXT,
  quantity INTEGER,
  reorder_level INTEGER
);
CREATE TABLE pm_tasks (
  id SERIAL PRIMARY KEY,
  title TEXT,
  due_date DATE,
  completed BOOLEAN DEFAULT FALSE
);
