/*CREATE TABLE job_applied(
    job_id INT,
    application_sent_date DATE,
    custom_resume BOOLEAN,
    resume_file_name VARCHAR(225),
    cover_letter_sent BOOLEAN,
    cover_letter_file_name VARCHAR(225),
    status VARCHAR(50)
);*/

/*INSERT INTO job_applied 
         (job_id,
         application_sent_date,
         custom_resume,
         resume_file_name,
         cover_letter_sent,
         cover_letter_file_name,
         status)
VALUES  (1,
         '2024-02-01',
         true,
         'resume_01.pdf',
         true,
         'cover_letter_01.pdf',
         'submitted');*/

/*SELECT*
FROM job_applied*/

/*ALTER TABLE job_applied
ADD CONTACT VARCHAR(50)*/

UPDATE job_applied
SET contact = 'Erlich bachman'
WHERE job_id = 1 ;

SELECT*
FROM job_applied

ALTER TABLE job_applied
RENAME COLUMN contact TO contact_name;

SELECT*
FROM job_applied

ALTER TABLE job_applied
ALTER COLUMN contact_name TYPE TEXT;