\echo 'Delete and recreate eye_book db?'
\prompt 'Return for yes or control-C to cancel > ' answer

DROP DATABASE eye_book;
CREATE DATABASE eye_book;
\connect eye_book

\i eye-book-schema.sql