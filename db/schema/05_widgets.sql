-- Drop and recreate Widgets table (Example)

DROP TABLE IF EXISTS tasks CASCADE;
CREATE TABLE tasks (
  id SERIAL PRIMARY KEY NOT NULL,
  user_id INTEGER REFERENCES users(id),
  task_title VARCHAR(255) NOT NULL,
  due_date DATE,
  priority SMALLINT,
  task_category VARCHAR(255),
  is_complete BOOLEAN
);
