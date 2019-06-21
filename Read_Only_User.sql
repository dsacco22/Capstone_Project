---- Creating RO Database user
CREATE USER READ_ONLY WITH PASSWORD 'password';

--- Granting priviledges to RO user ----
GRANT CONNECT ON DATABASE capstonedba TO READ_ONLY;
GRANT USAGE ON SCHEMA public TO READ_ONLY;
GRANT SELECT ON ALL TABLES IN SCHEMA public TO READ_ONLY;

--- Creating Roles for RO User ----
CREATE ROLE readonly;
GRANT SELECT ON ALL TABLES IN SCHEMA public TO readonly;

--- Granting role to RO user ---
GRANT readonly to READ_ONLY;


--- THIS CODE IS TO SEE WHAT ROLES HAVE BEEN GRANTED TO USERS ---
SELECT
      r.rolname,
      ARRAY(SELECT b.rolname
            FROM pg_catalog.pg_auth_members m
            JOIN pg_catalog.pg_roles b ON (m.roleid = b.oid)
            WHERE m.member = r.oid) as memberof
FROM pg_catalog.pg_roles r
WHERE r.rolname NOT IN ('pg_signal_backend','rds_iam',
                        'rds_replication','rds_superuser',
                        'rdsadmin','rdsrepladmin')
ORDER BY 1;
