
SET DEFINE OFF;

UPDATE ACT_CMMN_DATABASECHANGELOGLOCK SET LOCKED = 1, LOCKEDBY = '192.168.1.5 (192.168.1.5)', LOCKGRANTED = to_timestamp('2019-03-13 20:31:09.340', 'YYYY-MM-DD HH24:MI:SS.FF') WHERE ID = 1 AND LOCKED = 0;

CREATE UNIQUE INDEX ACT_IDX_CASE_DEF_UNIQ ON ACT_CMMN_CASEDEF(KEY_, VERSION_, TENANT_ID_);

INSERT INTO ACT_CMMN_DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('6', 'flowable', 'org/flowable/cmmn/db/liquibase/flowable-cmmn-db-changelog.xml', SYSTIMESTAMP, 5, '7:2b33c819a1ef81d793f7ef82bed8b1ac', 'createIndex indexName=ACT_IDX_CASE_DEF_UNIQ, tableName=ACT_CMMN_CASEDEF', '', 'EXECUTED', NULL, NULL, '3.5.3', '2509069538');

ALTER TABLE ACT_CMMN_RU_PLAN_ITEM_INST RENAME COLUMN START_TIME_ TO CREATE_TIME_;

ALTER TABLE ACT_CMMN_HI_PLAN_ITEM_INST RENAME COLUMN CREATED_TIME_ TO CREATE_TIME_;

ALTER TABLE ACT_CMMN_RU_PLAN_ITEM_INST ADD LAST_AVAILABLE_TIME_ TIMESTAMP(3);

ALTER TABLE ACT_CMMN_RU_PLAN_ITEM_INST ADD LAST_ENABLED_TIME_ TIMESTAMP(3);

ALTER TABLE ACT_CMMN_RU_PLAN_ITEM_INST ADD LAST_DISABLED_TIME_ TIMESTAMP(3);

ALTER TABLE ACT_CMMN_RU_PLAN_ITEM_INST ADD LAST_STARTED_TIME_ TIMESTAMP(3);

ALTER TABLE ACT_CMMN_RU_PLAN_ITEM_INST ADD LAST_SUSPENDED_TIME_ TIMESTAMP(3);

ALTER TABLE ACT_CMMN_RU_PLAN_ITEM_INST ADD COMPLETED_TIME_ TIMESTAMP(3);

ALTER TABLE ACT_CMMN_RU_PLAN_ITEM_INST ADD OCCURRED_TIME_ TIMESTAMP(3);

ALTER TABLE ACT_CMMN_RU_PLAN_ITEM_INST ADD TERMINATED_TIME_ TIMESTAMP(3);

ALTER TABLE ACT_CMMN_RU_PLAN_ITEM_INST ADD EXIT_TIME_ TIMESTAMP(3);

ALTER TABLE ACT_CMMN_RU_PLAN_ITEM_INST ADD ENDED_TIME_ TIMESTAMP(3);

ALTER TABLE ACT_CMMN_RU_PLAN_ITEM_INST ADD ENTRY_CRITERION_ID_ VARCHAR2(255);

ALTER TABLE ACT_CMMN_RU_PLAN_ITEM_INST ADD EXIT_CRITERION_ID_ VARCHAR2(255);

ALTER TABLE ACT_CMMN_HI_PLAN_ITEM_INST ADD ENTRY_CRITERION_ID_ VARCHAR2(255);

ALTER TABLE ACT_CMMN_HI_PLAN_ITEM_INST ADD EXIT_CRITERION_ID_ VARCHAR2(255);

INSERT INTO ACT_CMMN_DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('7', 'flowable', 'org/flowable/cmmn/db/liquibase/flowable-cmmn-db-changelog.xml', SYSTIMESTAMP, 6, '7:ff6d918908599427d849c1f3b109cf1c', 'renameColumn newColumnName=CREATE_TIME_, oldColumnName=START_TIME_, tableName=ACT_CMMN_RU_PLAN_ITEM_INST; renameColumn newColumnName=CREATE_TIME_, oldColumnName=CREATED_TIME_, tableName=ACT_CMMN_HI_PLAN_ITEM_INST; addColumn tableName=ACT_CMMN_RU_P...', '', 'EXECUTED', NULL, NULL, '3.5.3', '2509069538');

UPDATE ACT_CMMN_DATABASECHANGELOGLOCK SET LOCKED = 0, LOCKEDBY = NULL, LOCKGRANTED = NULL WHERE ID = 1;

