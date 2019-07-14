-- First, remove the table if it exists
drop table if exists bookmarks;

-- Create the table anew
create table bookmarks (
   id SERIAL PRIMARY KEY,
    title TEXT UNIQUE NOT NULL,
    url TEXT UNIQUE NOT NULL,
    rating NUMERIC,
    descr TEXT
);

-- insert some test data
-- Using a multi-row insert statement here
insert into bookmarks (title, url, rating, descr)
values
  ('Thinkful', 'https://www.thinkful.com', '5', 'Think outside the classroom'),
  ('Google', 'https://www.google.com', '4', 'Where we find everything else'),
  ('MDN', 'https://developer.mozilla.org', '5', 'The only place to find web documentation'),
  ('Github',
  'http://www.github.com',
  4,
  'brings together the world largest community of developers.'
);
