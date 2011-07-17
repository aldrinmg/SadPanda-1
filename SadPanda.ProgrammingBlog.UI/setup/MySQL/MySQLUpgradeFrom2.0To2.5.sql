
ALTER TABLE be_Users ADD BlogID varchar(36) NOT NULL DEFAULT '';
UPDATE be_Users SET BlogID = '27604F05-86AD-47EF-9E05-950BB762570C';

ALTER TABLE be_UserRoles ADD BlogID varchar(36) NOT NULL DEFAULT '';
UPDATE be_UserRoles SET BlogID = '27604F05-86AD-47EF-9E05-950BB762570C';
ALTER TABLE be_UserRoles ADD UserName nvarchar(100) NOT NULL DEFAULT '';
ALTER TABLE be_UserRoles ADD Role nvarchar(100) NOT NULL DEFAULT '';

UPDATE be_UserRoles
SET UserName =
(
SELECT UserName
FROM be_Users
WHERE be_Users.UserID = be_UserRoles.UserID
),
Role = 
(
SELECT Role
FROM be_Roles
WHERE be_Roles.RoleID = be_UserRoles.RoleID
);

ALTER TABLE be_UserRoles DROP COLUMN UserID;
ALTER TABLE be_UserRoles DROP COLUMN RoleID;

ALTER TABLE be_StopWords DROP PRIMARY KEY;
ALTER TABLE be_StopWords ADD StopWordRowId int(10) UNSIGNED NOT NULL AUTO_INCREMENT, ADD PRIMARY KEY (StopWordRowId);
ALTER TABLE be_StopWords ADD BlogId varchar(36) NOT NULL DEFAULT '';
UPDATE be_StopWords SET BlogId = '27604F05-86AD-47EF-9E05-950BB762570C';

ALTER TABLE be_Settings DROP PRIMARY KEY;
ALTER TABLE be_Settings ADD SettingRowId int(10) UNSIGNED NOT NULL AUTO_INCREMENT, ADD PRIMARY KEY (SettingRowId);
ALTER TABLE be_Settings ADD BlogId varchar(36) NOT NULL DEFAULT '';
UPDATE be_Settings SET BlogId = '27604F05-86AD-47EF-9E05-950BB762570C';

ALTER TABLE be_Roles ADD BlogID varchar(36) NOT NULL DEFAULT '';
UPDATE be_Roles SET BlogID = '27604F05-86AD-47EF-9E05-950BB762570C';

ALTER TABLE be_Rights DROP PRIMARY KEY;
ALTER TABLE be_Rights ADD RightRowId int(10) UNSIGNED NOT NULL AUTO_INCREMENT, ADD PRIMARY KEY (RightRowId);
ALTER TABLE be_Rights ADD BlogId varchar(36) NOT NULL DEFAULT '';
UPDATE be_Rights SET BlogId = '27604F05-86AD-47EF-9E05-950BB762570C';

ALTER TABLE be_RightRoles DROP PRIMARY KEY;
ALTER TABLE be_RightRoles ADD RightRoleRowId int(10) UNSIGNED NOT NULL AUTO_INCREMENT, ADD PRIMARY KEY (RightRoleRowId);
ALTER TABLE be_RightRoles ADD BlogId varchar(36) NOT NULL DEFAULT '';
UPDATE be_RightRoles SET BlogId = '27604F05-86AD-47EF-9E05-950BB762570C';

ALTER TABLE be_Referrers DROP PRIMARY KEY;
ALTER TABLE be_Referrers ADD ReferrerRowId int(10) UNSIGNED NOT NULL AUTO_INCREMENT, ADD PRIMARY KEY (ReferrerRowId);

ALTER TABLE be_Referrers ADD BlogId varchar(36) NOT NULL DEFAULT '';
UPDATE be_Referrers SET BlogId = '27604F05-86AD-47EF-9E05-950BB762570C';

ALTER TABLE be_Profiles ADD BlogID varchar(36) NOT NULL DEFAULT '';
UPDATE be_Profiles SET BlogID = '27604F05-86AD-47EF-9E05-950BB762570C';

ALTER TABLE be_Posts DROP PRIMARY KEY;
ALTER TABLE be_Posts ADD PostRowID int(10) UNSIGNED NOT NULL AUTO_INCREMENT, ADD PRIMARY KEY (PostRowID);
ALTER TABLE be_Posts ADD BlogID varchar(36) NOT NULL DEFAULT '';
UPDATE be_Posts SET BlogID = '27604F05-86AD-47EF-9E05-950BB762570C';

ALTER TABLE be_PostTag ADD BlogID varchar(36) NOT NULL DEFAULT '';
UPDATE be_PostTag SET BlogID = '27604F05-86AD-47EF-9E05-950BB762570C';

ALTER TABLE be_PostNotify ADD BlogID varchar(36) NOT NULL DEFAULT '';
UPDATE be_PostNotify SET BlogID = '27604F05-86AD-47EF-9E05-950BB762570C';

ALTER TABLE be_PostComment DROP PRIMARY KEY;
ALTER TABLE be_PostComment ADD PostCommentRowID int(10) UNSIGNED NOT NULL AUTO_INCREMENT, ADD PRIMARY KEY (PostCommentRowID);
ALTER TABLE be_PostComment ADD BlogID varchar(36) NOT NULL DEFAULT '';
UPDATE be_PostComment SET BlogID = '27604F05-86AD-47EF-9E05-950BB762570C';

ALTER TABLE be_PingService ADD BlogID varchar(36) NOT NULL DEFAULT '';
UPDATE be_PingService SET BlogID = '27604F05-86AD-47EF-9E05-950BB762570C';

ALTER TABLE be_Pages DROP PRIMARY KEY;
ALTER TABLE be_Pages ADD PageRowID int(10) UNSIGNED NOT NULL AUTO_INCREMENT, ADD PRIMARY KEY (PageRowID);
ALTER TABLE be_Pages ADD BlogID varchar(36) NOT NULL DEFAULT '';
UPDATE be_Pages SET BlogID = '27604F05-86AD-47EF-9E05-950BB762570C';

ALTER TABLE be_DataStoreSettings ADD DataStoreSettingRowId int(10) UNSIGNED NOT NULL AUTO_INCREMENT, ADD PRIMARY KEY (DataStoreSettingRowId);
ALTER TABLE be_DataStoreSettings ADD BlogId varchar(36) NOT NULL DEFAULT '';
UPDATE be_DataStoreSettings SET BlogId = '27604F05-86AD-47EF-9E05-950BB762570C';

ALTER TABLE be_Categories DROP PRIMARY KEY;
ALTER TABLE be_Categories ADD CategoryRowID int(10) UNSIGNED NOT NULL AUTO_INCREMENT, ADD PRIMARY KEY (CategoryRowID);
ALTER TABLE be_Categories ADD BlogID varchar(36) NOT NULL DEFAULT '';
UPDATE be_Categories SET BlogID = '27604F05-86AD-47EF-9E05-950BB762570C';

ALTER TABLE be_PostCategory ADD BlogID varchar(36) NOT NULL DEFAULT '';
UPDATE be_PostCategory SET BlogID = '27604F05-86AD-47EF-9E05-950BB762570C';

CREATE TABLE `be_Blogs` (
  `BlogRowId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `BlogId` varchar(36) NOT NULL DEFAULT '',
  `BlogName` varchar(255) NOT NULL DEFAULT '',
  `Hostname` varchar(255) NOT NULL DEFAULT '',
  `IsAnyTextBeforeHostnameAccepted` tinyint(1) NOT NULL DEFAULT 1,
  `StorageContainerName` varchar(255) NOT NULL DEFAULT '',
  `VirtualPath` varchar(255) NOT NULL DEFAULT '',
  `IsPrimary` tinyint(1) NOT NULL DEFAULT 0,
  `IsActive` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`BlogRowId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO be_Blogs (BlogId, BlogName, Hostname, IsAnyTextBeforeHostnameAccepted, StorageContainerName, VirtualPath, IsPrimary, IsActive) VALUES ('27604f05-86ad-47ef-9e05-950bb762570c', 'Primary', '', 0, '', '~/', 1, 1);

ALTER TABLE be_BlogRollItems DROP PRIMARY KEY;
ALTER TABLE be_BlogRollItems ADD BlogRollRowId int(10) UNSIGNED NOT NULL AUTO_INCREMENT, ADD PRIMARY KEY (BlogRollRowId);
ALTER TABLE be_BlogRollItems ADD BlogId varchar(36) NOT NULL DEFAULT '';
UPDATE be_BlogRollItems SET BlogId = '27604F05-86AD-47EF-9E05-950BB762570C';
