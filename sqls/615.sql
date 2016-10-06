drop database if exists testdb;

create database testdb default character set utf8;

use testdb;

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for action
-- ----------------------------
DROP TABLE IF EXISTS `action`;
CREATE TABLE `action` (
  `ActionKey` int(32) unsigned NOT NULL AUTO_INCREMENT,
  `ActionId` varchar(255) NOT NULL,
  `parentActionId` varchar(255) DEFAULT NULL,
  `ActionType` varchar(255) DEFAULT NULL,
  `ActionName` varchar(255) DEFAULT NULL,
  `ActionStartDate` date DEFAULT NULL,
  `ActionDeadlineDate` date DEFAULT NULL,
  `ActionFinishDate` date DEFAULT NULL,
  `ActionState` int(32) DEFAULT NULL,
  `ActionResource` varchar(255) DEFAULT NULL,
  `ControllerDepartment` varchar(255) DEFAULT NULL,
  `ControllerDepartmentId` varchar(255) DEFAULT NULL,
  `ActionController` varchar(255) DEFAULT NULL,
  `ActionControllerId` varchar(255) DEFAULT NULL,
  `ActionApprover` varchar(255) DEFAULT NULL,
  `ActionApproverId` varchar(255) DEFAULT NULL,
  `ActionAuditor` varchar(255) DEFAULT NULL,
  `ActionAuditorId` varchar(255) DEFAULT NULL,
  `ActionContent` varchar(1024) DEFAULT NULL,
  `ActionOutput` varchar(1024) DEFAULT NULL,
  `Remark` varchar(1024) DEFAULT NULL,
  `EmployeeId` varchar(255) DEFAULT NULL,
  `ProjectId` varchar(255) DEFAULT NULL,
  `ProjectName` varchar(255) DEFAULT NULL,
  `back` tinyint(1) unsigned zerofill DEFAULT '0',
  `leaf` tinyint(32) DEFAULT NULL,
  `level` int(32) DEFAULT NULL,
  `DeleteMark` tinyint(1) unsigned zerofill DEFAULT '0',
  PRIMARY KEY (`ActionKey`)
) ENGINE=InnoDB AUTO_INCREMENT=191 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of action
-- ----------------------------
INSERT INTO `action` VALUES ('174', 'actionDir1437987560497', null, null, '201507例会', null, null, null, '2', null, null, null, '项目经理一', 'M01', '项目经理一', 'M01', '部门领导一', 'D01', null, null, '', null, 'PRJ2015614994576', null, null, '0', '1', '0');
INSERT INTO `action` VALUES ('175', 'action1437987697204', 'actionDir1437987560497', '', '201507例会', '2015-07-27', '2015-07-31', '2015-07-27', '3', '', '', '', '我是组员', '200', null, 'M01', null, 'D01', '两周例会', '', '完成两周例会', '', 'PRJ2015614994576', null, '0', '1', '2', '0');
INSERT INTO `action` VALUES ('176', 'action1437987697773', 'actionDir1437987560497', '', '201507例会', '2015-07-27', '2015-07-29', null, '2', '', '', '', '技术负责人', '008', '项目经理一', 'M01', '部门领导一', 'D01', '三周例会', '', '', '', 'PRJ2015614994576', null, '0', '1', '2', '0');
INSERT INTO `action` VALUES ('177', 'action1437988111540', 'actionDir1437987560497', '', '201507例会', '2015-07-27', '2015-07-31', '2015-07-27', '3', '', '', '', '我是组员', '200', null, 'M01', null, 'D01', '四周例会', '', '', '', 'PRJ2015614994576', null, '0', '1', '2', '0');
INSERT INTO `action` VALUES ('178', 'actionDir1437989350044', null, null, '201507例会', null, null, null, '2', null, null, null, '项目经理', '203', '项目经理', '203', '我是组长', '202', null, null, '', null, 'PRJ2015619133005', null, null, '0', '1', '0');
INSERT INTO `action` VALUES ('179', 'action1437990295353', 'actionDir1437989350044', '', '201507例会', '2015-07-27', '2015-07-31', '2015-07-27', '5', '', '', '', '我是组员', '200', null, '203', null, '202', '正常', '', '完成正常', '', 'PRJ2015619133005', null, '0', '1', '2', '0');
INSERT INTO `action` VALUES ('180', 'action1437990296024', 'actionDir1437989350044', '', '201507例会', '2015-07-27', '2015-07-29', null, '5', '', '', '', '我是组员', '200', null, '203', null, '202', '提醒', '', '', '', 'PRJ2015619133005', null, '0', '1', '2', '0');
INSERT INTO `action` VALUES ('181', 'actionDir1437993467312', null, null, '201507例会', null, null, null, '2', null, null, null, '项目经理', '203', '项目经理', '203', '我是组长', '202', null, null, '', null, 'PRJ2015613360777', null, null, '0', '1', '0');
INSERT INTO `action` VALUES ('182', 'action1437993522799', 'actionDir1437993467312', '', '201507例会', '2015-07-27', '2015-08-01', null, '5', '', '', '', '我是组员', '200', null, '203', null, '202', '正常', '', '二次审核通过', '', 'PRJ2015613360777', null, '0', '1', '2', '0');
INSERT INTO `action` VALUES ('183', 'action1437993523391', 'actionDir1437993467312', '', '201507例会', '2015-07-27', '2015-07-29', '2015-07-27', '5', '', '', '', '我是组员', '200', null, '203', null, '202', '提醒', '', '完成提醒', '', 'PRJ2015613360777', null, '0', '1', '2', '0');
INSERT INTO `action` VALUES ('184', 'actionDir1438006313849', null, null, '周二例会', null, null, null, '2', null, null, null, '项目经理', '203', '项目经理', '203', '我是组长', '202', null, null, '', null, 'PRJ2015613360777', null, null, '0', '1', '0');
INSERT INTO `action` VALUES ('185', 'action1438006344880', 'actionDir1438006313849', '', '周二例会', '2015-07-27', '2015-07-31', null, '2', '', '', '', '我是组员', '200', '项目经理', '203', '我是组长', '202', '上午例会', '', '', '', 'PRJ2015613360777', null, '0', '1', '2', '0');
INSERT INTO `action` VALUES ('186', 'action1438006345560', 'actionDir1438006313849', '', '周二例会', '2015-07-27', '2015-07-29', '2015-07-27', '5', '', '', '', '我是组员', '200', null, '203', null, '202', '下午例会', '', '', '', 'PRJ2015613360777', null, '0', '1', '2', '0');
INSERT INTO `action` VALUES ('187', 'actionDir1463320430754', null, null, 'qqqqqqq', null, null, null, '1', null, null, null, '项目经理', '203', '我是项目领导', '204', '所领导一', 'I01', null, null, 'qweqwrqwrfqwsacd', null, 'PRJ2015619133005', null, null, '0', '1', '0');
INSERT INTO `action` VALUES ('188', 'actionDir1463326541695', null, null, '24234', null, null, null, '2', null, null, null, '项目经理', '203', '我是项目领导', '204', '部门领导一', 'D01', null, null, '25444444', null, 'PRJ2015619133005', null, null, '0', '1', '0');
INSERT INTO `action` VALUES ('189', 'action1466333127855', 'actionDir1466333119400', '新行动', '123', null, '2016-06-20', null, '1', 'sd', null, null, '我是组员', '200', null, 'null', null, 'null', null, null, 'asdsadadsasadsada', null, 'PRJ2015619133005', null, '0', '1', '2', '0');
INSERT INTO `action` VALUES ('190', 'actionDir1466336090489', null, null, '新建目录11111', null, null, null, '2', null, null, null, '项目经理', '203', '项目经理', '203', '我是组长', '202', null, null, 'wwwwweeeee', null, 'PRJ2016506734062', null, null, '0', '1', '0');

-- ----------------------------
-- Table structure for amprivilege
-- ----------------------------
DROP TABLE IF EXISTS `amprivilege`;
CREATE TABLE `amprivilege` (
  `roleId` int(16) NOT NULL,
  `roleName` varchar(255) DEFAULT NULL,
  `index` int(2) DEFAULT NULL,
  `prjOverview` int(2) DEFAULT NULL,
  `createPrj` int(2) DEFAULT NULL,
  `grpMaintain` int(2) DEFAULT NULL,
  `addPlan` int(2) DEFAULT NULL,
  `publishPlan` int(2) DEFAULT NULL,
  `changePlan` int(2) DEFAULT NULL,
  `auditPlanChange` int(2) DEFAULT NULL,
  `planChangeImplement` int(2) DEFAULT NULL,
  `resolveTask` int(2) DEFAULT NULL,
  `publishTask` int(2) DEFAULT NULL,
  `feedBackTask` int(2) DEFAULT NULL,
  `readPlan` int(2) DEFAULT NULL,
  `statistics` int(2) DEFAULT NULL,
  `addActionDir` int(2) DEFAULT NULL,
  `publishActionDir` int(2) DEFAULT NULL,
  `addAction` int(2) DEFAULT NULL,
  `publishAction` int(2) DEFAULT NULL,
  `feedBackAction` int(2) DEFAULT NULL,
  `auditAction` int(2) DEFAULT NULL,
  `readAction` int(2) DEFAULT NULL,
  `commMgm` int(2) DEFAULT NULL,
  `templateMaintain` int(2) DEFAULT NULL,
  `downloadTemplate` int(2) DEFAULT NULL,
  `importPlan` int(2) DEFAULT NULL,
  `exportPlan` int(2) DEFAULT NULL,
  `addProject` int(2) DEFAULT NULL,
  `addGroup` int(2) DEFAULT NULL,
  `addGroupMember` int(2) DEFAULT NULL,
  `deleteMark` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of amprivilege
-- ----------------------------
INSERT INTO `amprivilege` VALUES ('1', '组员', '2', '1', '0', '1', '0', '0', '0', '0', '0', '2', '2', '2', '1', '1', '0', '0', '2', '2', '2', '2', '1', '1', '0', '2', '0', '0', '0', '0', '0', '0');
INSERT INTO `amprivilege` VALUES ('2', '组长', '2', '1', '0', '1', '0', '0', '2', '0', '0', '2', '2', '2', '1', '1', '0', '0', '2', '2', '2', '2', '1', '1', '0', '2', '0', '0', '0', '0', '1', '0');
INSERT INTO `amprivilege` VALUES ('3', '项目经理', '2', '1', '0', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '1', '2', '2', '2', '1', '1', '0', '1', '1', '0');
INSERT INTO `amprivilege` VALUES ('7', '超级管理员', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '0');
INSERT INTO `amprivilege` VALUES ('15', '项目领导', '2', '1', '0', '1', '0', '0', '0', '2', '0', '0', '0', '0', '1', '1', '0', '0', '2', '2', '2', '2', '1', '1', '0', '2', '0', '0', '0', '0', '0', '0');
INSERT INTO `amprivilege` VALUES ('16', '部门领导', '2', '1', '2', '1', '0', '0', '0', '0', '0', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '1', '1', '0', '2', '0', '0', '0', '0', '0', '0');
INSERT INTO `amprivilege` VALUES ('17', '所领导', '2', '1', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '1', '1', '0', '2', '0', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for correctiveactionreport
-- ----------------------------
DROP TABLE IF EXISTS `correctiveactionreport`;
CREATE TABLE `correctiveactionreport` (
  `CarID` varchar(100) NOT NULL,
  `FailureReportNo` varchar(100) DEFAULT NULL,
  `ProgramID` varchar(100) DEFAULT NULL,
  `FailedItemPartNo` varchar(100) DEFAULT NULL,
  `FailedItemName` varchar(256) DEFAULT NULL,
  `FailedItemBatchNo` varchar(100) DEFAULT NULL,
  `FailedItemSerialNo` varchar(100) DEFAULT NULL,
  `ImpltGroup` varchar(100) DEFAULT NULL,
  `ImpltDate` date DEFAULT NULL,
  `ShopFindingReportNo` varchar(100) DEFAULT NULL,
  `UnitRemoveName` varchar(256) DEFAULT NULL,
  `UnitRemovePartNo` varchar(100) DEFAULT NULL,
  `UnitRemoveSerialNo` varchar(100) DEFAULT NULL,
  `UnitRemoveManufct` varchar(256) DEFAULT NULL,
  `UnitRemoveProdDate` date DEFAULT NULL,
  `UnitReplaceName` varchar(256) DEFAULT NULL,
  `UnitReplacePartNo` varchar(100) DEFAULT NULL,
  `UnitReplaceSerialNo` varchar(100) DEFAULT NULL,
  `UnitReplaceManufct` varchar(256) DEFAULT NULL,
  `UnitReplaceProcDate` date DEFAULT NULL,
  `UnitRepairName` varchar(256) DEFAULT NULL,
  `UnitRepairPartNo` varchar(100) DEFAULT NULL,
  `UnitRepairSerialNo` varchar(100) DEFAULT NULL,
  `UnitRepairManufct` varchar(256) DEFAULT NULL,
  `UnitRepairProdDate` date DEFAULT NULL,
  `SoftwareName` varchar(256) DEFAULT NULL,
  `SoftwarePartyNo` varchar(100) DEFAULT NULL,
  `RevisionBfChange` varchar(100) DEFAULT NULL,
  `RevisionAftChange` varchar(100) DEFAULT NULL,
  `CaImpltSummary` text,
  `CaImpltSummarySigner` varchar(100) DEFAULT NULL,
  `CaImpltSummarySignDate` date DEFAULT NULL,
  `ActionValidation` varchar(1024) DEFAULT NULL,
  `DepartmentManager` varchar(100) DEFAULT NULL,
  `ActionValidationDate` date DEFAULT NULL,
  `TechLeaderVerification` varchar(1024) DEFAULT NULL,
  `TechLeader` varchar(100) DEFAULT NULL,
  `TechLeaderVerifyDate` date DEFAULT NULL,
  `QaManagerVerification` varchar(1024) DEFAULT NULL,
  `QaManager` varchar(100) DEFAULT NULL,
  `QaManagerVerifyDate` date DEFAULT NULL,
  `MrbVerification` varchar(1024) DEFAULT NULL,
  `MrbLeader` varchar(100) DEFAULT NULL,
  `MrbVerifyDate` date DEFAULT NULL,
  `DeleteMark` tinyint(1) DEFAULT NULL,
  `Column_46` char(10) DEFAULT NULL,
  `Column_47` char(10) DEFAULT NULL,
  `Status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`CarID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of correctiveactionreport
-- ----------------------------
INSERT INTO `correctiveactionreport` VALUES ('CAR1438143072259', 'FR1437984544839', 'C919', null, null, '', '', '', null, '', 'a', 'c', 'd', 's', null, '', '', '', '', null, '', '', '', '', null, '', '', '', '', '', '', null, 'aaaaaaaa', '', null, 'bbbb', '', null, 'ccc', '', null, 'asdf', '', null, '0', null, null, 'done');
INSERT INTO `correctiveactionreport` VALUES ('CAR1438150309816', 'FR1437984544839', 'C919', null, null, '', 'asdf', '', null, '', '', '', '', '', null, '', '', '', '', null, '', '', '', '', null, '', '', '', '', '', '', null, 'aaaaaa', '', null, 'bbbb', '', null, 'ccc', '', null, 'ddd', '', null, '0', null, null, 'done');
INSERT INTO `correctiveactionreport` VALUES ('CAR1438150656920', 'FR1437984544839', 'C919', null, null, '', 'asdfasdf', '', null, '', '', '', '', '', null, '', '', '', '', null, '', '', '', '', null, '', '', '', '', '', '', null, 'aaaaaa', '', null, 'bbb', '', null, 'ccc', '', null, 'ddd', '', null, '0', null, null, 'done');

-- ----------------------------
-- Table structure for department
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL,
  `Leader` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of department
-- ----------------------------
INSERT INTO `department` VALUES ('1', '测试部门', null);
INSERT INTO `department` VALUES ('2', '软件部', null);
INSERT INTO `department` VALUES ('3', '硬件部', null);
INSERT INTO `department` VALUES ('4', '管理层', null);
INSERT INTO `department` VALUES ('5', '项目部', null);
INSERT INTO `department` VALUES ('11', '2222', null);

-- ----------------------------
-- Table structure for doclibrary
-- ----------------------------
DROP TABLE IF EXISTS `doclibrary`;
CREATE TABLE `doclibrary` (
  `UUID` varchar(255) NOT NULL,
  `Title` varchar(255) NOT NULL,
  `Type` varchar(255) NOT NULL,
  `Size` bigint(11) NOT NULL,
  `OwnerId` varchar(11) DEFAULT NULL,
  `OwnerName` varchar(11) DEFAULT NULL,
  `ModifiedDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `ProjectId` varchar(255) NOT NULL,
  `AttachmentName` varchar(255) NOT NULL,
  `DeleteMark` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`UUID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of doclibrary
-- ----------------------------
INSERT INTO `doclibrary` VALUES ('cec5eb0e-81cf-4a4e-b666-a81f1aff3ae7', '行动项跟踪表.xlsx', 'xlsx', '10340891', '203', '项目经理', '2016-05-23 14:50:10', 'PRJ2015613360777', 'C:\\Users\\Lenovo\\workspace1\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\615Project\\docLibrary\\cec5eb0e-81cf-4a4e-b666-a81f1aff3ae7-行动项跟踪表.xlsx', '\0');
INSERT INTO `doclibrary` VALUES ('ee6adb11-9e37-4a9c-ae51-e7ae7b4cc982', 'A2015-0727.xls', 'xls', '5508', '203', '项目经理', '2016-06-19 18:34:51', 'PRJ2016506734062', 'C:\\Users\\Lenovo\\workspace1\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\615Project\\docLibrary\\ee6adb11-9e37-4a9c-ae51-e7ae7b4cc982-A2015-0727.xls', '');

-- ----------------------------
-- Table structure for employee
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee` (
  `EmployeeNumber` varchar(255) NOT NULL,
  `EmployeeName` varchar(255) DEFAULT NULL,
  `EmployeeEmail` varchar(255) DEFAULT NULL,
  `DepartmentId` int(11) DEFAULT NULL,
  `DepartMentName` varchar(255) DEFAULT NULL,
  `Major` varchar(255) DEFAULT NULL,
  `LoginPassword` varchar(255) DEFAULT NULL,
  `DeleteMark` tinyint(1) DEFAULT '0',
  `ActionDirListOpt` varchar(1000) DEFAULT '{actionFinishDate:0,actionResource:1,actionController:1,actionState:0,actionControllerId:0,actionDeadlineDate:1,controllerDepartment:1,projectId:1,actionName:0,actionRemainingDate:0,state:0}',
  `ActionListOpt` varchar(1000) DEFAULT '{actionFinishDate:0,actionResource:1,actionController:1,actionState:0,actionControllerId:0,actionDeadlineDate:1,controllerDepartment:1,projectId:1,actionName:0,actionRemainingDate:0,state:0}',
  `ActionWaitingListOpt` varchar(1000) DEFAULT '{actionFinishDate:0,actionResource:1,actionController:1,actionState:0,actionControllerId:0,actionDeadlineDate:1,controllerDepartment:1,projectId:1,actionName:0,actionRemainingDate:0,state:0}',
  `PlanListOpt` varchar(1000) DEFAULT '{planName:1,taskWeight:1,planSource:1,planController:1,remainingDuration:1,cashSubject:0,budget:0,cashReal:0,completePercentage:0,planFinishDate:0,projectName:0,cashSource:0,cashFlow:0,planStartDate:0,controlDepartment:0,planDeadlineDate:0,state:0}',
  `TaskListOpt` varchar(1000) DEFAULT '{planName:1,taskWeight:1,planSource:1,planController:1,remainingDuration:1,cashSubject:0,budget:0,cashReal:0,completePercentage:0,planFinishDate:0,projectName:0,cashSource:0,cashFlow:0,planStartDate:0,controlDepartment:0,planDeadlineDate:0,state:0}',
  `PlanWaitingListOpt` varchar(1000) DEFAULT '{planName:1,taskWeight:1,planSource:1,planController:1,remainingDuration:1,cashSubject:0,budget:0,cashReal:0,completePercentage:0,planFinishDate:0,projectName:0,cashSource:0,cashFlow:0,planStartDate:0,controlDepartment:0,planDeadlineDate:0,state:0}',
  `HomePageOpt` varchar(1000) DEFAULT NULL,
  `roleId` int(16) DEFAULT NULL,
  PRIMARY KEY (`EmployeeNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO `employee` VALUES ('008', '技术负责人', 'XX', null, '软件部', '开发', '1234', '0', '{actionFinishDate:0,actionResource:0,actionController:1,actionControllerId:1,actionDeadlineDate:1,controllerDepartment:1,projectId:0,actionName:0,actionRemainingDate:0,state:1,}', '{actionFinishDate:0,actionResource:0,actionController:1,actionControllerId:0,actionDeadlineDate:1,controllerDepartment:1,projectId:1,actionName:0,actionRemainingDate:0,state:1,}', '{actionFinishDate:0,actionResource:0,actionController:1,actionControllerId:0,actionDeadlineDate:1,controllerDepartment:1,projectId:1,actionName:0,actionRemainingDate:0,state:1,}', '{taskWeight:1,planSource:0,planController:1,remainingDuration:1,cashSubject:0,budget:0,cashReal:0,completePercentage:0,planFinishDate:0,projectName:0,cashSource:0,cashFlow:0,planStartDate:0,controlDepartment:0,planDeadlineDate:1,state:1,}', '{taskWeight:1,planSource:0,planController:1,remainingDuration:1,cashSubject:0,budget:0,cashReal:0,completePercentage:0,planFinishDate:0,projectName:0,cashSource:0,cashFlow:0,planStartDate:0,controlDepartment:0,planDeadlineDate:0,state:1,}', '{taskWeight:1,planSource:0,planController:1,remainingDuration:1,cashSubject:0,budget:0,cashReal:0,completePercentage:0,planFinishDate:0,projectName:0,cashSource:0,cashFlow:0,planStartDate:0,controlDepartment:0,planDeadlineDate:0,state:1,}', null, '8');
INSERT INTO `employee` VALUES ('009', '质量负责人', 'XX', null, '软件部', '开发', '1234', '0', '{actionFinishDate:0,actionResource:1,actionController:1,actionState:0,actionControllerId:0,actionDeadlineDate:1,controllerDepartment:1,projectId:1,actionName:0,actionRemainingDate:0,state:0}', '{actionFinishDate:0,actionResource:0,actionController:1,actionControllerId:0,actionDeadlineDate:1,controllerDepartment:1,projectId:1,actionName:0,actionRemainingDate:0,state:1,}', '{actionFinishDate:0,actionResource:0,actionController:1,actionControllerId:0,actionDeadlineDate:1,controllerDepartment:1,projectId:1,actionName:0,actionRemainingDate:0,state:1,}', '{taskWeight:1,planSource:0,planController:1,remainingDuration:1,cashSubject:0,budget:0,cashReal:0,completePercentage:0,planFinishDate:0,projectName:0,cashSource:0,cashFlow:0,planStartDate:0,controlDepartment:0,planDeadlineDate:0,state:1,}', '{taskWeight:1,planSource:0,planController:1,remainingDuration:1,cashSubject:0,budget:0,cashReal:0,completePercentage:0,planFinishDate:0,projectName:0,cashSource:0,cashFlow:0,planStartDate:0,controlDepartment:0,planDeadlineDate:0,state:1,}', '{planName:1,taskWeight:1,planSource:1,planController:1,remainingDuration:1,cashSubject:0,budget:0,cashReal:0,completePercentage:0,planFinishDate:0,projectName:0,cashSource:0,cashFlow:0,planStartDate:0,controlDepartment:0,planDeadlineDate:0,state:0}', null, '9');
INSERT INTO `employee` VALUES ('010', 'MRB', 'XX', null, '软件部', '开发', '1234', '0', '{actionFinishDate:0,actionResource:1,actionController:1,actionState:0,actionControllerId:0,actionDeadlineDate:1,controllerDepartment:1,projectId:1,actionName:0,actionRemainingDate:0,state:0}', '{actionFinishDate:0,actionResource:1,actionController:1,actionState:0,actionControllerId:0,actionDeadlineDate:1,controllerDepartment:1,projectId:1,actionName:0,actionRemainingDate:0,state:0}', '{actionFinishDate:0,actionResource:0,actionController:1,actionControllerId:0,actionDeadlineDate:1,controllerDepartment:1,projectId:1,actionName:0,actionRemainingDate:0,state:1,}', '{planName:1,taskWeight:1,planSource:1,planController:1,remainingDuration:1,cashSubject:0,budget:0,cashReal:0,completePercentage:0,planFinishDate:0,projectName:0,cashSource:0,cashFlow:0,planStartDate:0,controlDepartment:0,planDeadlineDate:0,state:0}', '{taskWeight:1,planSource:0,planController:1,remainingDuration:1,cashSubject:0,budget:0,cashReal:0,completePercentage:0,planFinishDate:0,projectName:0,cashSource:0,cashFlow:0,planStartDate:0,controlDepartment:0,planDeadlineDate:0,state:1,}', '{planName:1,taskWeight:1,planSource:1,planController:1,remainingDuration:1,cashSubject:0,budget:0,cashReal:0,completePercentage:0,planFinishDate:0,projectName:0,cashSource:0,cashFlow:0,planStartDate:0,controlDepartment:0,planDeadlineDate:0,state:0}', null, '10');
INSERT INTO `employee` VALUES ('012', '元数据管理员', null, null, '软件部', '维护', '1234', '0', '{actionFinishDate:0,actionResource:1,actionController:1,actionState:0,actionControllerId:0,actionDeadlineDate:1,controllerDepartment:1,projectId:1,actionName:0,actionRemainingDate:0,state:0}', '{actionFinishDate:0,actionResource:1,actionController:1,actionState:0,actionControllerId:0,actionDeadlineDate:1,controllerDepartment:1,projectId:1,actionName:0,actionRemainingDate:0,state:0}', '{actionFinishDate:0,actionResource:0,actionController:1,actionControllerId:0,actionDeadlineDate:1,controllerDepartment:1,projectId:1,actionName:0,actionRemainingDate:0,state:1,}', '{planName:1,taskWeight:1,planSource:1,planController:1,remainingDuration:1,cashSubject:0,budget:0,cashReal:0,completePercentage:0,planFinishDate:0,projectName:0,cashSource:0,cashFlow:0,planStartDate:0,controlDepartment:0,planDeadlineDate:0,state:0}', '{planName:1,taskWeight:1,planSource:1,planController:1,remainingDuration:1,cashSubject:0,budget:0,cashReal:0,completePercentage:0,planFinishDate:0,projectName:0,cashSource:0,cashFlow:0,planStartDate:0,controlDepartment:0,planDeadlineDate:0,state:0}', '{planName:1,taskWeight:1,planSource:1,planController:1,remainingDuration:1,cashSubject:0,budget:0,cashReal:0,completePercentage:0,planFinishDate:0,projectName:0,cashSource:0,cashFlow:0,planStartDate:0,controlDepartment:0,planDeadlineDate:0,state:0}', null, '12');
INSERT INTO `employee` VALUES ('016', '部门主管', null, null, null, 'null', '1234', '0', null, null, '{actionFinishDate:0,actionResource:0,actionController:1,actionControllerId:0,actionDeadlineDate:1,controllerDepartment:1,projectId:1,actionName:0,actionRemainingDate:0,state:1,}', null, null, null, null, '16');
INSERT INTO `employee` VALUES ('200', '我是组员', 'sunba@sjtu.edu.cn', null, '软件部', '开发', '1234', '0', '{actionFinishDate:0,actionResource:1,actionController:1,actionState:0,actionControllerId:0,actionDeadlineDate:1,controllerDepartment:1,projectId:1,actionName:0,actionRemainingDate:0,state:0}', '{actionFinishDate:0,actionResource:0,actionController:1,actionControllerId:0,actionDeadlineDate:1,controllerDepartment:1,projectId:1,actionName:0,actionRemainingDate:0,state:1,}', '{actionFinishDate:0,actionResource:0,actionController:1,actionControllerId:0,actionDeadlineDate:1,controllerDepartment:1,projectId:1,actionName:0,actionRemainingDate:0,state:1,}', '{taskWeight:1,planSource:0,planController:1,remainingDuration:1,cashSubject:0,budget:0,cashReal:0,completePercentage:0,planFinishDate:0,projectName:0,cashSource:0,cashFlow:0,planStartDate:0,controlDepartment:0,planDeadlineDate:0,state:1,}', '{taskWeight:1,planSource:0,planController:1,remainingDuration:1,cashSubject:0,budget:0,cashReal:0,completePercentage:0,planFinishDate:0,projectName:0,cashSource:0,cashFlow:0,planStartDate:0,controlDepartment:0,planDeadlineDate:0,state:1,}', '{taskWeight:1,planSource:1,planController:1,remainingDuration:1,cashSubject:0,budget:0,cashReal:0,completePercentage:0,planFinishDate:0,projectName:0,cashSource:0,cashFlow:0,planStartDate:0,controlDepartment:0,planDeadlineDate:0,state:1,}', null, '1');
INSERT INTO `employee` VALUES ('202', '我是组长', 'sunba@sjtu.edu.cn', null, '软件部', '开发', '1234', '0', '{actionFinishDate:0,actionResource:1,actionController:1,actionControllerId:0,actionDeadlineDate:1,controllerDepartment:0,projectId:0,actionName:0,actionRemainingDate:0,state:1,}', '{actionFinishDate:0,actionResource:0,actionController:1,actionControllerId:0,actionDeadlineDate:1,controllerDepartment:0,projectId:0,actionName:0,actionRemainingDate:0,state:1,}', '{actionFinishDate:0,actionResource:0,actionController:1,actionControllerId:0,actionDeadlineDate:1,controllerDepartment:1,projectId:1,actionName:0,actionRemainingDate:0,state:1,}', '{taskWeight:0,planSource:0,planController:1,remainingDuration:0,cashSubject:0,budget:0,cashReal:0,completePercentage:0,planFinishDate:0,projectName:1,cashSource:0,cashFlow:0,planStartDate:0,controlDepartment:0,planDeadlineDate:0,state:1,}', '{taskWeight:1,planSource:0,planController:1,remainingDuration:1,cashSubject:0,budget:0,cashReal:0,completePercentage:0,planFinishDate:0,projectName:0,cashSource:0,cashFlow:0,planStartDate:0,controlDepartment:0,planDeadlineDate:0,state:1,}', '{taskWeight:1,planSource:0,planController:1,remainingDuration:1,cashSubject:0,budget:0,cashReal:0,completePercentage:0,planFinishDate:0,projectName:1,cashSource:0,cashFlow:0,planStartDate:0,controlDepartment:0,planDeadlineDate:0,state:1,}', null, '2');
INSERT INTO `employee` VALUES ('203', '项目经理', 'xxx@gmail.com', null, '软件部', '开发', '1234', '0', '{}', '{actionFinishDate:0,actionResource:1,actionController:1,actionControllerId:0,actionDeadlineDate:1,controllerDepartment:1,projectId:0,actionName:0,actionRemainingDate:0,state:1,}', '{actionFinishDate:0,actionResource:0,actionController:1,actionControllerId:0,actionDeadlineDate:1,controllerDepartment:1,projectId:1,actionName:0,actionRemainingDate:0,state:1,}', '{taskWeight:1,planSource:0,planController:1,remainingDuration:0,cashSubject:0,budget:0,cashReal:0,completePercentage:0,planFinishDate:0,projectName:1,cashSource:0,cashFlow:0,planStartDate:0,controlDepartment:0,planDeadlineDate:1,state:1,}', '{planName:1,taskWeight:1,planSource:1,planController:1,remainingDuration:0,cashSubject:0,budget:0,cashReal:0,completePercentage:0,planFinishDate:0,projectName:0,cashSource:0,cashFlow:0,planStartDate:0,controlDepartment:0,planDeadlineDate:0,state:1,}', '{taskWeight:0,planSource:0,planController:1,remainingDuration:0,cashSubject:0,budget:0,cashReal:0,completePercentage:1,planFinishDate:0,projectName:1,cashSource:0,cashFlow:0,planStartDate:0,controlDepartment:0,planDeadlineDate:1,state:1,}', null, '3');
INSERT INTO `employee` VALUES ('204', '我是项目领导', 'xxx@gmail.com', null, '软件部', '开发', '1234', '0', '{actionFinishDate:0,actionResource:1,actionController:1,actionState:0,actionControllerId:0,actionDeadlineDate:1,controllerDepartment:1,projectId:1,actionName:0,actionRemainingDate:0,state:0}', '{actionFinishDate:0,actionResource:1,actionController:1,actionState:0,actionControllerId:0,actionDeadlineDate:1,controllerDepartment:1,projectId:1,actionName:0,actionRemainingDate:0,state:0}', '{actionFinishDate:0,actionResource:0,actionController:1,actionControllerId:0,actionDeadlineDate:1,controllerDepartment:1,projectId:1,actionName:0,actionRemainingDate:0,state:1,}', '{planName:1,taskWeight:1,planSource:1,planController:1,remainingDuration:1,cashSubject:0,budget:0,cashReal:0,completePercentage:0,planFinishDate:0,projectName:0,cashSource:0,cashFlow:0,planStartDate:0,controlDepartment:0,planDeadlineDate:0,state:0}', '{planName:1,taskWeight:1,planSource:1,planController:1,remainingDuration:1,cashSubject:0,budget:0,cashReal:0,completePercentage:0,planFinishDate:0,projectName:0,cashSource:0,cashFlow:0,planStartDate:0,controlDepartment:0,planDeadlineDate:0,state:0}', '{planName:1,taskWeight:1,planSource:1,planController:1,remainingDuration:1,cashSubject:0,budget:0,cashReal:0,completePercentage:0,planFinishDate:0,projectName:0,cashSource:0,cashFlow:0,planStartDate:0,controlDepartment:0,planDeadlineDate:0,state:0}', null, '15');
INSERT INTO `employee` VALUES ('210', '张新', 'zhang_xin@careri.com', null, '软件部', '开发', '1234', '0', '{actionFinishDate:0,actionResource:1,actionController:1,actionState:0,actionControllerId:0,actionDeadlineDate:1,controllerDepartment:1,projectId:1,actionName:0,actionRemainingDate:0,state:0}', '{actionFinishDate:0,actionResource:1,actionController:1,actionState:0,actionControllerId:0,actionDeadlineDate:1,controllerDepartment:1,projectId:1,actionName:0,actionRemainingDate:0,state:0}', '{actionFinishDate:0,actionResource:0,actionController:1,actionControllerId:0,actionDeadlineDate:1,controllerDepartment:1,projectId:1,actionName:0,actionRemainingDate:0,state:1,}', '{planName:1,taskWeight:1,planSource:1,planController:1,remainingDuration:1,cashSubject:0,budget:0,cashReal:0,completePercentage:0,planFinishDate:0,projectName:0,cashSource:0,cashFlow:0,planStartDate:0,controlDepartment:0,planDeadlineDate:0,state:0}', '{planName:1,taskWeight:1,planSource:1,planController:1,remainingDuration:1,cashSubject:0,budget:0,cashReal:0,completePercentage:0,planFinishDate:0,projectName:0,cashSource:0,cashFlow:0,planStartDate:0,controlDepartment:0,planDeadlineDate:0,state:0}', '{planName:1,taskWeight:1,planSource:1,planController:1,remainingDuration:1,cashSubject:0,budget:0,cashReal:0,completePercentage:0,planFinishDate:0,projectName:0,cashSource:0,cashFlow:0,planStartDate:0,controlDepartment:0,planDeadlineDate:0,state:0}', null, '4');
INSERT INTO `employee` VALUES ('333', 'tomcat', '333@qq.com', null, '项目部', 'tttt', null, '1', '{actionFinishDate:0,actionResource:1,actionController:1,actionState:0,actionControllerId:0,actionDeadlineDate:1,controllerDepartment:1,projectId:1,actionName:0,actionRemainingDate:0,state:0}', '{actionFinishDate:0,actionResource:1,actionController:1,actionState:0,actionControllerId:0,actionDeadlineDate:1,controllerDepartment:1,projectId:1,actionName:0,actionRemainingDate:0,state:0}', '{actionFinishDate:0,actionResource:1,actionController:1,actionState:0,actionControllerId:0,actionDeadlineDate:1,controllerDepartment:1,projectId:1,actionName:0,actionRemainingDate:0,state:0}', '{planName:1,taskWeight:1,planSource:1,planController:1,remainingDuration:1,cashSubject:0,budget:0,cashReal:0,completePercentage:0,planFinishDate:0,projectName:0,cashSource:0,cashFlow:0,planStartDate:0,controlDepartment:0,planDeadlineDate:0,state:0}', '{planName:1,taskWeight:1,planSource:1,planController:1,remainingDuration:1,cashSubject:0,budget:0,cashReal:0,completePercentage:0,planFinishDate:0,projectName:0,cashSource:0,cashFlow:0,planStartDate:0,controlDepartment:0,planDeadlineDate:0,state:0}', '{planName:1,taskWeight:1,planSource:1,planController:1,remainingDuration:1,cashSubject:0,budget:0,cashReal:0,completePercentage:0,planFinishDate:0,projectName:0,cashSource:0,cashFlow:0,planStartDate:0,controlDepartment:0,planDeadlineDate:0,state:0}', null, '0');
INSERT INTO `employee` VALUES ('334', 'ewd', 'qwd', null, '硬件部', 'wqd', '1234', '0', '{actionFinishDate:0,actionResource:1,actionController:1,actionState:0,actionControllerId:0,actionDeadlineDate:1,controllerDepartment:1,projectId:1,actionName:0,actionRemainingDate:0,state:0}', '{actionFinishDate:0,actionResource:1,actionController:1,actionState:0,actionControllerId:0,actionDeadlineDate:1,controllerDepartment:1,projectId:1,actionName:0,actionRemainingDate:0,state:0}', '{actionFinishDate:0,actionResource:1,actionController:1,actionState:0,actionControllerId:0,actionDeadlineDate:1,controllerDepartment:1,projectId:1,actionName:0,actionRemainingDate:0,state:0}', '{planName:1,taskWeight:1,planSource:1,planController:1,remainingDuration:1,cashSubject:0,budget:0,cashReal:0,completePercentage:0,planFinishDate:0,projectName:0,cashSource:0,cashFlow:0,planStartDate:0,controlDepartment:0,planDeadlineDate:0,state:0}', '{planName:1,taskWeight:1,planSource:1,planController:1,remainingDuration:1,cashSubject:0,budget:0,cashReal:0,completePercentage:0,planFinishDate:0,projectName:0,cashSource:0,cashFlow:0,planStartDate:0,controlDepartment:0,planDeadlineDate:0,state:0}', '{planName:1,taskWeight:1,planSource:1,planController:1,remainingDuration:1,cashSubject:0,budget:0,cashReal:0,completePercentage:0,planFinishDate:0,projectName:0,cashSource:0,cashFlow:0,planStartDate:0,controlDepartment:0,planDeadlineDate:0,state:0}', null, '0');
INSERT INTO `employee` VALUES ('678', '34213', 'sad@we.com', null, '硬件部', 'sahd', null, '1', '{actionFinishDate:0,actionResource:1,actionController:1,actionState:0,actionControllerId:0,actionDeadlineDate:1,controllerDepartment:1,projectId:1,actionName:0,actionRemainingDate:0,state:0}', '{actionFinishDate:0,actionResource:1,actionController:1,actionState:0,actionControllerId:0,actionDeadlineDate:1,controllerDepartment:1,projectId:1,actionName:0,actionRemainingDate:0,state:0}', '{actionFinishDate:0,actionResource:1,actionController:1,actionState:0,actionControllerId:0,actionDeadlineDate:1,controllerDepartment:1,projectId:1,actionName:0,actionRemainingDate:0,state:0}', '{planName:1,taskWeight:1,planSource:1,planController:1,remainingDuration:1,cashSubject:0,budget:0,cashReal:0,completePercentage:0,planFinishDate:0,projectName:0,cashSource:0,cashFlow:0,planStartDate:0,controlDepartment:0,planDeadlineDate:0,state:0}', '{planName:1,taskWeight:1,planSource:1,planController:1,remainingDuration:1,cashSubject:0,budget:0,cashReal:0,completePercentage:0,planFinishDate:0,projectName:0,cashSource:0,cashFlow:0,planStartDate:0,controlDepartment:0,planDeadlineDate:0,state:0}', '{planName:1,taskWeight:1,planSource:1,planController:1,remainingDuration:1,cashSubject:0,budget:0,cashReal:0,completePercentage:0,planFinishDate:0,projectName:0,cashSource:0,cashFlow:0,planStartDate:0,controlDepartment:0,planDeadlineDate:0,state:0}', null, '1');
INSERT INTO `employee` VALUES ('99', 'qw', 'qwe', null, '管理层', 'wqe', '1234', '1', '{actionFinishDate:0,actionResource:1,actionController:1,actionState:0,actionControllerId:0,actionDeadlineDate:1,controllerDepartment:1,projectId:1,actionName:0,actionRemainingDate:0,state:0}', '{actionFinishDate:0,actionResource:1,actionController:1,actionState:0,actionControllerId:0,actionDeadlineDate:1,controllerDepartment:1,projectId:1,actionName:0,actionRemainingDate:0,state:0}', '{actionFinishDate:0,actionResource:1,actionController:1,actionState:0,actionControllerId:0,actionDeadlineDate:1,controllerDepartment:1,projectId:1,actionName:0,actionRemainingDate:0,state:0}', '{planName:1,taskWeight:1,planSource:1,planController:1,remainingDuration:1,cashSubject:0,budget:0,cashReal:0,completePercentage:0,planFinishDate:0,projectName:0,cashSource:0,cashFlow:0,planStartDate:0,controlDepartment:0,planDeadlineDate:0,state:0}', '{planName:1,taskWeight:1,planSource:1,planController:1,remainingDuration:1,cashSubject:0,budget:0,cashReal:0,completePercentage:0,planFinishDate:0,projectName:0,cashSource:0,cashFlow:0,planStartDate:0,controlDepartment:0,planDeadlineDate:0,state:0}', '{planName:1,taskWeight:1,planSource:1,planController:1,remainingDuration:1,cashSubject:0,budget:0,cashReal:0,completePercentage:0,planFinishDate:0,projectName:0,cashSource:0,cashFlow:0,planStartDate:0,controlDepartment:0,planDeadlineDate:0,state:0}', null, '0');
INSERT INTO `employee` VALUES ('adsafds17', 'adsfasdf17', 'adsfadsf', null, '硬件部', 'asdfasdf', '1234', '0', '{actionFinishDate:0,actionResource:1,actionController:1,actionState:0,actionControllerId:0,actionDeadlineDate:1,controllerDepartment:1,projectId:1,actionName:0,actionRemainingDate:0,state:0}', '{actionFinishDate:0,actionResource:1,actionController:1,actionState:0,actionControllerId:0,actionDeadlineDate:1,controllerDepartment:1,projectId:1,actionName:0,actionRemainingDate:0,state:0}', '{actionFinishDate:0,actionResource:1,actionController:1,actionState:0,actionControllerId:0,actionDeadlineDate:1,controllerDepartment:1,projectId:1,actionName:0,actionRemainingDate:0,state:0}', '{planName:1,taskWeight:1,planSource:1,planController:1,remainingDuration:1,cashSubject:0,budget:0,cashReal:0,completePercentage:0,planFinishDate:0,projectName:0,cashSource:0,cashFlow:0,planStartDate:0,controlDepartment:0,planDeadlineDate:0,state:0}', '{planName:1,taskWeight:1,planSource:1,planController:1,remainingDuration:1,cashSubject:0,budget:0,cashReal:0,completePercentage:0,planFinishDate:0,projectName:0,cashSource:0,cashFlow:0,planStartDate:0,controlDepartment:0,planDeadlineDate:0,state:0}', '{planName:1,taskWeight:1,planSource:1,planController:1,remainingDuration:1,cashSubject:0,budget:0,cashReal:0,completePercentage:0,planFinishDate:0,projectName:0,cashSource:0,cashFlow:0,planStartDate:0,controlDepartment:0,planDeadlineDate:0,state:0}', null, '4');
INSERT INTO `employee` VALUES ('adsfasdf15', 'adsadsf15', 'adsfasdf', null, '硬件部', 'adsfasfd', '1234', '0', '{actionFinishDate:0,actionResource:1,actionController:1,actionState:0,actionControllerId:0,actionDeadlineDate:1,controllerDepartment:1,projectId:1,actionName:0,actionRemainingDate:0,state:0}', '{actionFinishDate:0,actionResource:1,actionController:1,actionState:0,actionControllerId:0,actionDeadlineDate:1,controllerDepartment:1,projectId:1,actionName:0,actionRemainingDate:0,state:0}', '{actionFinishDate:0,actionResource:1,actionController:1,actionState:0,actionControllerId:0,actionDeadlineDate:1,controllerDepartment:1,projectId:1,actionName:0,actionRemainingDate:0,state:0}', '{planName:1,taskWeight:1,planSource:1,planController:1,remainingDuration:1,cashSubject:0,budget:0,cashReal:0,completePercentage:0,planFinishDate:0,projectName:0,cashSource:0,cashFlow:0,planStartDate:0,controlDepartment:0,planDeadlineDate:0,state:0}', '{planName:1,taskWeight:1,planSource:1,planController:1,remainingDuration:1,cashSubject:0,budget:0,cashReal:0,completePercentage:0,planFinishDate:0,projectName:0,cashSource:0,cashFlow:0,planStartDate:0,controlDepartment:0,planDeadlineDate:0,state:0}', '{planName:1,taskWeight:1,planSource:1,planController:1,remainingDuration:1,cashSubject:0,budget:0,cashReal:0,completePercentage:0,planFinishDate:0,projectName:0,cashSource:0,cashFlow:0,planStartDate:0,controlDepartment:0,planDeadlineDate:0,state:0}', null, '4');
INSERT INTO `employee` VALUES ('asdasdf14', 'adsfadsf14', 'adsf', null, '硬件部', 'asdf', '1234', '0', '{actionFinishDate:0,actionResource:1,actionController:1,actionState:0,actionControllerId:0,actionDeadlineDate:1,controllerDepartment:1,projectId:1,actionName:0,actionRemainingDate:0,state:0}', '{actionFinishDate:0,actionResource:1,actionController:1,actionState:0,actionControllerId:0,actionDeadlineDate:1,controllerDepartment:1,projectId:1,actionName:0,actionRemainingDate:0,state:0}', '{actionFinishDate:0,actionResource:1,actionController:1,actionState:0,actionControllerId:0,actionDeadlineDate:1,controllerDepartment:1,projectId:1,actionName:0,actionRemainingDate:0,state:0}', '{planName:1,taskWeight:1,planSource:1,planController:1,remainingDuration:1,cashSubject:0,budget:0,cashReal:0,completePercentage:0,planFinishDate:0,projectName:0,cashSource:0,cashFlow:0,planStartDate:0,controlDepartment:0,planDeadlineDate:0,state:0}', '{planName:1,taskWeight:1,planSource:1,planController:1,remainingDuration:1,cashSubject:0,budget:0,cashReal:0,completePercentage:0,planFinishDate:0,projectName:0,cashSource:0,cashFlow:0,planStartDate:0,controlDepartment:0,planDeadlineDate:0,state:0}', '{planName:1,taskWeight:1,planSource:1,planController:1,remainingDuration:1,cashSubject:0,budget:0,cashReal:0,completePercentage:0,planFinishDate:0,projectName:0,cashSource:0,cashFlow:0,planStartDate:0,controlDepartment:0,planDeadlineDate:0,state:0}', null, '4');
INSERT INTO `employee` VALUES ('asdfadsf16', 'adsfads16', 'adf', null, '硬件部', 'asdf', '1234', '0', '{actionFinishDate:0,actionResource:1,actionController:1,actionState:0,actionControllerId:0,actionDeadlineDate:1,controllerDepartment:1,projectId:1,actionName:0,actionRemainingDate:0,state:0}', '{actionFinishDate:0,actionResource:1,actionController:1,actionState:0,actionControllerId:0,actionDeadlineDate:1,controllerDepartment:1,projectId:1,actionName:0,actionRemainingDate:0,state:0}', '{actionFinishDate:0,actionResource:1,actionController:1,actionState:0,actionControllerId:0,actionDeadlineDate:1,controllerDepartment:1,projectId:1,actionName:0,actionRemainingDate:0,state:0}', '{planName:1,taskWeight:1,planSource:1,planController:1,remainingDuration:1,cashSubject:0,budget:0,cashReal:0,completePercentage:0,planFinishDate:0,projectName:0,cashSource:0,cashFlow:0,planStartDate:0,controlDepartment:0,planDeadlineDate:0,state:0}', '{planName:1,taskWeight:1,planSource:1,planController:1,remainingDuration:1,cashSubject:0,budget:0,cashReal:0,completePercentage:0,planFinishDate:0,projectName:0,cashSource:0,cashFlow:0,planStartDate:0,controlDepartment:0,planDeadlineDate:0,state:0}', '{planName:1,taskWeight:1,planSource:1,planController:1,remainingDuration:1,cashSubject:0,budget:0,cashReal:0,completePercentage:0,planFinishDate:0,projectName:0,cashSource:0,cashFlow:0,planStartDate:0,controlDepartment:0,planDeadlineDate:0,state:0}', null, '4');
INSERT INTO `employee` VALUES ('asdfasdf13', 'adsfads13', 'adsf', null, '管理层', 'asdf', '1234', '0', '{actionFinishDate:0,actionResource:1,actionController:1,actionState:0,actionControllerId:0,actionDeadlineDate:1,controllerDepartment:1,projectId:1,actionName:0,actionRemainingDate:0,state:0}', '{actionFinishDate:0,actionResource:1,actionController:1,actionState:0,actionControllerId:0,actionDeadlineDate:1,controllerDepartment:1,projectId:1,actionName:0,actionRemainingDate:0,state:0}', '{actionFinishDate:0,actionResource:1,actionController:1,actionState:0,actionControllerId:0,actionDeadlineDate:1,controllerDepartment:1,projectId:1,actionName:0,actionRemainingDate:0,state:0}', '{planName:1,taskWeight:1,planSource:1,planController:1,remainingDuration:1,cashSubject:0,budget:0,cashReal:0,completePercentage:0,planFinishDate:0,projectName:0,cashSource:0,cashFlow:0,planStartDate:0,controlDepartment:0,planDeadlineDate:0,state:0}', '{planName:1,taskWeight:1,planSource:1,planController:1,remainingDuration:1,cashSubject:0,budget:0,cashReal:0,completePercentage:0,planFinishDate:0,projectName:0,cashSource:0,cashFlow:0,planStartDate:0,controlDepartment:0,planDeadlineDate:0,state:0}', '{planName:1,taskWeight:1,planSource:1,planController:1,remainingDuration:1,cashSubject:0,budget:0,cashReal:0,completePercentage:0,planFinishDate:0,projectName:0,cashSource:0,cashFlow:0,planStartDate:0,controlDepartment:0,planDeadlineDate:0,state:0}', null, '4');
INSERT INTO `employee` VALUES ('asdfasdfasdf18', 'asdfadsf18', null, null, '管理层', null, '1234', '0', '{actionFinishDate:0,actionResource:1,actionController:1,actionState:0,actionControllerId:0,actionDeadlineDate:1,controllerDepartment:1,projectId:1,actionName:0,actionRemainingDate:0,state:0}', '{actionFinishDate:0,actionResource:1,actionController:1,actionState:0,actionControllerId:0,actionDeadlineDate:1,controllerDepartment:1,projectId:1,actionName:0,actionRemainingDate:0,state:0}', '{actionFinishDate:0,actionResource:1,actionController:1,actionState:0,actionControllerId:0,actionDeadlineDate:1,controllerDepartment:1,projectId:1,actionName:0,actionRemainingDate:0,state:0}', '{planName:1,taskWeight:1,planSource:1,planController:1,remainingDuration:1,cashSubject:0,budget:0,cashReal:0,completePercentage:0,planFinishDate:0,projectName:0,cashSource:0,cashFlow:0,planStartDate:0,controlDepartment:0,planDeadlineDate:0,state:0}', '{planName:1,taskWeight:1,planSource:1,planController:1,remainingDuration:1,cashSubject:0,budget:0,cashReal:0,completePercentage:0,planFinishDate:0,projectName:0,cashSource:0,cashFlow:0,planStartDate:0,controlDepartment:0,planDeadlineDate:0,state:0}', '{planName:1,taskWeight:1,planSource:1,planController:1,remainingDuration:1,cashSubject:0,budget:0,cashReal:0,completePercentage:0,planFinishDate:0,projectName:0,cashSource:0,cashFlow:0,planStartDate:0,controlDepartment:0,planDeadlineDate:0,state:0}', null, '4');
INSERT INTO `employee` VALUES ('asdfasdfasdf19', 'asdfadsf19', null, null, '测试部门', null, '1234', '0', '{actionFinishDate:0,actionResource:1,actionController:1,actionState:0,actionControllerId:0,actionDeadlineDate:1,controllerDepartment:1,projectId:1,actionName:0,actionRemainingDate:0,state:0}', '{actionFinishDate:0,actionResource:1,actionController:1,actionState:0,actionControllerId:0,actionDeadlineDate:1,controllerDepartment:1,projectId:1,actionName:0,actionRemainingDate:0,state:0}', '{actionFinishDate:0,actionResource:1,actionController:1,actionState:0,actionControllerId:0,actionDeadlineDate:1,controllerDepartment:1,projectId:1,actionName:0,actionRemainingDate:0,state:0}', '{planName:1,taskWeight:1,planSource:1,planController:1,remainingDuration:1,cashSubject:0,budget:0,cashReal:0,completePercentage:0,planFinishDate:0,projectName:0,cashSource:0,cashFlow:0,planStartDate:0,controlDepartment:0,planDeadlineDate:0,state:0}', '{planName:1,taskWeight:1,planSource:1,planController:1,remainingDuration:1,cashSubject:0,budget:0,cashReal:0,completePercentage:0,planFinishDate:0,projectName:0,cashSource:0,cashFlow:0,planStartDate:0,controlDepartment:0,planDeadlineDate:0,state:0}', '{planName:1,taskWeight:1,planSource:1,planController:1,remainingDuration:1,cashSubject:0,budget:0,cashReal:0,completePercentage:0,planFinishDate:0,projectName:0,cashSource:0,cashFlow:0,planStartDate:0,controlDepartment:0,planDeadlineDate:0,state:0}', null, '4');
INSERT INTO `employee` VALUES ('D01', '部门领导一', null, null, '软件部', '开发', '1234', '0', '{actionFinishDate:0,actionResource:1,actionController:1,actionState:0,actionControllerId:0,actionDeadlineDate:1,controllerDepartment:1,projectId:1,actionName:0,actionRemainingDate:0,state:0}', '{actionFinishDate:0,actionResource:0,actionController:1,actionControllerId:0,actionDeadlineDate:1,controllerDepartment:1,projectId:1,actionName:0,actionRemainingDate:0,state:1,}', '{actionFinishDate:0,actionResource:0,actionController:1,actionControllerId:0,actionDeadlineDate:1,controllerDepartment:1,projectId:1,actionName:0,actionRemainingDate:0,state:1,}', '{planName:1,taskWeight:1,planSource:1,planController:1,remainingDuration:1,cashSubject:0,budget:0,cashReal:0,completePercentage:0,planFinishDate:0,projectName:0,cashSource:0,cashFlow:0,planStartDate:0,controlDepartment:0,planDeadlineDate:0,state:0}', '{planName:1,taskWeight:1,planSource:1,planController:1,remainingDuration:1,cashSubject:0,budget:0,cashReal:0,completePercentage:0,planFinishDate:0,projectName:0,cashSource:0,cashFlow:0,planStartDate:0,controlDepartment:0,planDeadlineDate:0,state:0}', '{planName:1,taskWeight:1,planSource:1,planController:1,remainingDuration:1,cashSubject:0,budget:0,cashReal:0,completePercentage:0,planFinishDate:0,projectName:0,cashSource:0,cashFlow:0,planStartDate:0,controlDepartment:0,planDeadlineDate:0,state:0}', null, '16');
INSERT INTO `employee` VALUES ('D02', '部门领导二', null, null, '硬件部', '开发', '1234', '0', '{actionFinishDate:0,actionResource:1,actionController:1,actionState:0,actionControllerId:0,actionDeadlineDate:1,controllerDepartment:1,projectId:1,actionName:0,actionRemainingDate:0,state:0}', '{actionFinishDate:0,actionResource:1,actionController:1,actionState:0,actionControllerId:0,actionDeadlineDate:1,controllerDepartment:1,projectId:1,actionName:0,actionRemainingDate:0,state:0}', '{actionFinishDate:0,actionResource:0,actionController:1,actionControllerId:0,actionDeadlineDate:1,controllerDepartment:1,projectId:1,actionName:0,actionRemainingDate:0,state:1,}', '{planName:1,taskWeight:1,planSource:1,planController:1,remainingDuration:1,cashSubject:0,budget:0,cashReal:0,completePercentage:0,planFinishDate:0,projectName:0,cashSource:0,cashFlow:0,planStartDate:0,controlDepartment:0,planDeadlineDate:0,state:0}', '{planName:1,taskWeight:1,planSource:1,planController:1,remainingDuration:1,cashSubject:0,budget:0,cashReal:0,completePercentage:0,planFinishDate:0,projectName:0,cashSource:0,cashFlow:0,planStartDate:0,controlDepartment:0,planDeadlineDate:0,state:0}', '{planName:1,taskWeight:1,planSource:1,planController:1,remainingDuration:1,cashSubject:0,budget:0,cashReal:0,completePercentage:0,planFinishDate:0,projectName:0,cashSource:0,cashFlow:0,planStartDate:0,controlDepartment:0,planDeadlineDate:0,state:0}', null, '16');
INSERT INTO `employee` VALUES ('dsfasdf12', 'aaad12', 'sdf', null, '软件部', 'sdf', '1234', '0', '{actionFinishDate:0,actionResource:1,actionController:1,actionState:0,actionControllerId:0,actionDeadlineDate:1,controllerDepartment:1,projectId:1,actionName:0,actionRemainingDate:0,state:0}', '{actionFinishDate:0,actionResource:1,actionController:1,actionState:0,actionControllerId:0,actionDeadlineDate:1,controllerDepartment:1,projectId:1,actionName:0,actionRemainingDate:0,state:0}', '{actionFinishDate:0,actionResource:1,actionController:1,actionState:0,actionControllerId:0,actionDeadlineDate:1,controllerDepartment:1,projectId:1,actionName:0,actionRemainingDate:0,state:0}', '{planName:1,taskWeight:1,planSource:1,planController:1,remainingDuration:1,cashSubject:0,budget:0,cashReal:0,completePercentage:0,planFinishDate:0,projectName:0,cashSource:0,cashFlow:0,planStartDate:0,controlDepartment:0,planDeadlineDate:0,state:0}', '{planName:1,taskWeight:1,planSource:1,planController:1,remainingDuration:1,cashSubject:0,budget:0,cashReal:0,completePercentage:0,planFinishDate:0,projectName:0,cashSource:0,cashFlow:0,planStartDate:0,controlDepartment:0,planDeadlineDate:0,state:0}', '{planName:1,taskWeight:1,planSource:1,planController:1,remainingDuration:1,cashSubject:0,budget:0,cashReal:0,completePercentage:0,planFinishDate:0,projectName:0,cashSource:0,cashFlow:0,planStartDate:0,controlDepartment:0,planDeadlineDate:0,state:0}', null, '4');
INSERT INTO `employee` VALUES ('E001', '项目经理范', '222@222.com', null, '项目部', '软件', '1234', '1', '{actionFinishDate:0,actionResource:1,actionController:1,actionState:0,actionControllerId:0,actionDeadlineDate:1,controllerDepartment:1,projectId:1,actionName:0,actionRemainingDate:0,state:0}', '{actionFinishDate:0,actionResource:1,actionController:1,actionState:0,actionControllerId:0,actionDeadlineDate:1,controllerDepartment:1,projectId:1,actionName:0,actionRemainingDate:0,state:0}', '{actionFinishDate:0,actionResource:0,actionController:1,actionControllerId:0,actionDeadlineDate:1,controllerDepartment:1,projectId:1,actionName:0,actionRemainingDate:0,state:1,}', '{planName:1,taskWeight:1,planSource:1,planController:1,remainingDuration:1,cashSubject:0,budget:0,cashReal:0,completePercentage:0,planFinishDate:0,projectName:0,cashSource:0,cashFlow:0,planStartDate:0,controlDepartment:0,planDeadlineDate:0,state:0}', '{planName:1,taskWeight:1,planSource:1,planController:1,remainingDuration:1,cashSubject:0,budget:0,cashReal:0,completePercentage:0,planFinishDate:0,projectName:0,cashSource:0,cashFlow:0,planStartDate:0,controlDepartment:0,planDeadlineDate:0,state:0}', '{planName:1,taskWeight:1,planSource:1,planController:1,remainingDuration:1,cashSubject:0,budget:0,cashReal:0,completePercentage:0,planFinishDate:0,projectName:0,cashSource:0,cashFlow:0,planStartDate:0,controlDepartment:0,planDeadlineDate:0,state:0}', null, '3');
INSERT INTO `employee` VALUES ('E01', '组员一', null, null, '软件部', '开发', '1234', '0', '{actionFinishDate:0,actionResource:1,actionController:1,actionState:0,actionControllerId:0,actionDeadlineDate:1,controllerDepartment:1,projectId:1,actionName:0,actionRemainingDate:0,state:0}', '{actionFinishDate:0,actionResource:1,actionController:1,actionState:0,actionControllerId:0,actionDeadlineDate:1,controllerDepartment:1,projectId:1,actionName:0,actionRemainingDate:0,state:0}', '{actionFinishDate:0,actionResource:0,actionController:1,actionControllerId:0,actionDeadlineDate:1,controllerDepartment:1,projectId:1,actionName:0,actionRemainingDate:0,state:1,}', '{planName:1,taskWeight:1,planSource:1,planController:1,remainingDuration:1,cashSubject:0,budget:0,cashReal:0,completePercentage:0,planFinishDate:0,projectName:0,cashSource:0,cashFlow:0,planStartDate:0,controlDepartment:0,planDeadlineDate:0,state:0}', '{planName:1,taskWeight:1,planSource:1,planController:1,remainingDuration:1,cashSubject:0,budget:0,cashReal:0,completePercentage:0,planFinishDate:0,projectName:0,cashSource:0,cashFlow:0,planStartDate:0,controlDepartment:0,planDeadlineDate:0,state:0}', '{planName:1,taskWeight:1,planSource:1,planController:1,remainingDuration:1,cashSubject:0,budget:0,cashReal:0,completePercentage:0,planFinishDate:0,projectName:0,cashSource:0,cashFlow:0,planStartDate:0,controlDepartment:0,planDeadlineDate:0,state:0}', null, '4');
INSERT INTO `employee` VALUES ('E02', '组员二', null, null, '软件部', '开发', '1234', '0', '{actionFinishDate:0,actionResource:1,actionController:1,actionState:0,actionControllerId:0,actionDeadlineDate:1,controllerDepartment:1,projectId:1,actionName:0,actionRemainingDate:0,state:0}', '{actionFinishDate:0,actionResource:1,actionController:1,actionState:0,actionControllerId:0,actionDeadlineDate:1,controllerDepartment:1,projectId:1,actionName:0,actionRemainingDate:0,state:0}', '{actionFinishDate:0,actionResource:0,actionController:1,actionControllerId:0,actionDeadlineDate:1,controllerDepartment:1,projectId:1,actionName:0,actionRemainingDate:0,state:1,}', '{planName:1,taskWeight:1,planSource:1,planController:1,remainingDuration:1,cashSubject:0,budget:0,cashReal:0,completePercentage:0,planFinishDate:0,projectName:0,cashSource:0,cashFlow:0,planStartDate:0,controlDepartment:0,planDeadlineDate:0,state:0}', '{planName:1,taskWeight:1,planSource:1,planController:1,remainingDuration:1,cashSubject:0,budget:0,cashReal:0,completePercentage:0,planFinishDate:0,projectName:0,cashSource:0,cashFlow:0,planStartDate:0,controlDepartment:0,planDeadlineDate:0,state:0}', '{planName:1,taskWeight:1,planSource:1,planController:1,remainingDuration:1,cashSubject:0,budget:0,cashReal:0,completePercentage:0,planFinishDate:0,projectName:0,cashSource:0,cashFlow:0,planStartDate:0,controlDepartment:0,planDeadlineDate:0,state:0}', null, '1');
INSERT INTO `employee` VALUES ('E03', '组员三', null, null, '硬件部', '开发', '1234', '0', '{actionFinishDate:0,actionResource:1,actionController:1,actionState:0,actionControllerId:0,actionDeadlineDate:1,controllerDepartment:1,projectId:1,actionName:0,actionRemainingDate:0,state:0}', '{actionFinishDate:0,actionResource:1,actionController:1,actionState:0,actionControllerId:0,actionDeadlineDate:1,controllerDepartment:1,projectId:1,actionName:0,actionRemainingDate:0,state:0}', '{actionFinishDate:0,actionResource:0,actionController:1,actionControllerId:0,actionDeadlineDate:1,controllerDepartment:1,projectId:1,actionName:0,actionRemainingDate:0,state:1,}', '{planName:1,taskWeight:1,planSource:1,planController:1,remainingDuration:1,cashSubject:0,budget:0,cashReal:0,completePercentage:0,planFinishDate:0,projectName:0,cashSource:0,cashFlow:0,planStartDate:0,controlDepartment:0,planDeadlineDate:0,state:0}', '{planName:1,taskWeight:1,planSource:1,planController:1,remainingDuration:1,cashSubject:0,budget:0,cashReal:0,completePercentage:0,planFinishDate:0,projectName:0,cashSource:0,cashFlow:0,planStartDate:0,controlDepartment:0,planDeadlineDate:0,state:0}', '{planName:1,taskWeight:1,planSource:1,planController:1,remainingDuration:1,cashSubject:0,budget:0,cashReal:0,completePercentage:0,planFinishDate:0,projectName:0,cashSource:0,cashFlow:0,planStartDate:0,controlDepartment:0,planDeadlineDate:0,state:0}', null, '4');
INSERT INTO `employee` VALUES ('E04', '组员四', null, null, '硬件部', '开发', '1234', '0', '{actionFinishDate:0,actionResource:1,actionController:1,actionState:0,actionControllerId:0,actionDeadlineDate:1,controllerDepartment:1,projectId:1,actionName:0,actionRemainingDate:0,state:0}', '{actionFinishDate:0,actionResource:1,actionController:1,actionState:0,actionControllerId:0,actionDeadlineDate:1,controllerDepartment:1,projectId:1,actionName:0,actionRemainingDate:0,state:0}', '{actionFinishDate:0,actionResource:0,actionController:1,actionControllerId:0,actionDeadlineDate:1,controllerDepartment:1,projectId:1,actionName:0,actionRemainingDate:0,state:1,}', '{planName:1,taskWeight:1,planSource:1,planController:1,remainingDuration:1,cashSubject:0,budget:0,cashReal:0,completePercentage:0,planFinishDate:0,projectName:0,cashSource:0,cashFlow:0,planStartDate:0,controlDepartment:0,planDeadlineDate:0,state:0}', '{planName:1,taskWeight:1,planSource:1,planController:1,remainingDuration:1,cashSubject:0,budget:0,cashReal:0,completePercentage:0,planFinishDate:0,projectName:0,cashSource:0,cashFlow:0,planStartDate:0,controlDepartment:0,planDeadlineDate:0,state:0}', '{planName:1,taskWeight:1,planSource:1,planController:1,remainingDuration:1,cashSubject:0,budget:0,cashReal:0,completePercentage:0,planFinishDate:0,projectName:0,cashSource:0,cashFlow:0,planStartDate:0,controlDepartment:0,planDeadlineDate:0,state:0}', null, '4');
INSERT INTO `employee` VALUES ('G01', '组长一', 'xxx@qq.com', null, '软件部', '开发', '1234', '0', '{actionFinishDate:0,actionResource:1,actionController:1,actionState:0,actionControllerId:0,actionDeadlineDate:1,controllerDepartment:1,projectId:1,actionName:0,actionRemainingDate:0,state:0}', '{actionFinishDate:0,actionResource:1,actionController:1,actionState:0,actionControllerId:0,actionDeadlineDate:1,controllerDepartment:1,projectId:1,actionName:0,actionRemainingDate:0,state:0}', '{actionFinishDate:0,actionResource:0,actionController:1,actionControllerId:0,actionDeadlineDate:1,controllerDepartment:1,projectId:1,actionName:0,actionRemainingDate:0,state:1,}', '{planName:1,taskWeight:1,planSource:1,planController:1,remainingDuration:1,cashSubject:0,budget:0,cashReal:0,completePercentage:0,planFinishDate:0,projectName:0,cashSource:0,cashFlow:0,planStartDate:0,controlDepartment:0,planDeadlineDate:0,state:0}', '{planName:1,taskWeight:1,planSource:1,planController:1,remainingDuration:1,cashSubject:0,budget:0,cashReal:0,completePercentage:0,planFinishDate:0,projectName:0,cashSource:0,cashFlow:0,planStartDate:0,controlDepartment:0,planDeadlineDate:0,state:0}', '{planName:1,taskWeight:1,planSource:1,planController:1,remainingDuration:1,cashSubject:0,budget:0,cashReal:0,completePercentage:0,planFinishDate:0,projectName:0,cashSource:0,cashFlow:0,planStartDate:0,controlDepartment:0,planDeadlineDate:0,state:0}', null, '1');
INSERT INTO `employee` VALUES ('G02', '组长二', 'xxx@qq.com', null, '硬件部', '开发', '1234', '0', '{actionFinishDate:0,actionResource:1,actionController:1,actionState:0,actionControllerId:0,actionDeadlineDate:1,controllerDepartment:1,projectId:1,actionName:0,actionRemainingDate:0,state:0}', '{actionFinishDate:0,actionResource:1,actionController:1,actionState:0,actionControllerId:0,actionDeadlineDate:1,controllerDepartment:1,projectId:1,actionName:0,actionRemainingDate:0,state:0}', '{actionFinishDate:0,actionResource:0,actionController:1,actionControllerId:0,actionDeadlineDate:1,controllerDepartment:1,projectId:1,actionName:0,actionRemainingDate:0,state:1,}', '{planName:1,taskWeight:1,planSource:1,planController:1,remainingDuration:1,cashSubject:0,budget:0,cashReal:0,completePercentage:0,planFinishDate:0,projectName:0,cashSource:0,cashFlow:0,planStartDate:0,controlDepartment:0,planDeadlineDate:0,state:0}', '{planName:1,taskWeight:1,planSource:1,planController:1,remainingDuration:1,cashSubject:0,budget:0,cashReal:0,completePercentage:0,planFinishDate:0,projectName:0,cashSource:0,cashFlow:0,planStartDate:0,controlDepartment:0,planDeadlineDate:0,state:0}', '{planName:1,taskWeight:1,planSource:1,planController:1,remainingDuration:1,cashSubject:0,budget:0,cashReal:0,completePercentage:0,planFinishDate:0,projectName:0,cashSource:0,cashFlow:0,planStartDate:0,controlDepartment:0,planDeadlineDate:0,state:0}', null, '3');
INSERT INTO `employee` VALUES ('I01', '所领导一', null, null, '管理层', '开发', '1234', '0', '{actionFinishDate:0,actionResource:1,actionController:1,actionState:0,actionControllerId:0,actionDeadlineDate:1,controllerDepartment:1,projectId:1,actionName:0,actionRemainingDate:0,state:0}', '{actionFinishDate:0,actionResource:1,actionController:1,actionState:0,actionControllerId:0,actionDeadlineDate:1,controllerDepartment:1,projectId:1,actionName:0,actionRemainingDate:0,state:0}', '{actionFinishDate:0,actionResource:0,actionController:1,actionControllerId:0,actionDeadlineDate:1,controllerDepartment:1,projectId:1,actionName:0,actionRemainingDate:0,state:1,}', '{planName:1,taskWeight:1,planSource:1,planController:1,remainingDuration:1,cashSubject:0,budget:0,cashReal:0,completePercentage:0,planFinishDate:0,projectName:0,cashSource:0,cashFlow:0,planStartDate:0,controlDepartment:0,planDeadlineDate:0,state:0}', '{planName:1,taskWeight:1,planSource:1,planController:1,remainingDuration:1,cashSubject:0,budget:0,cashReal:0,completePercentage:0,planFinishDate:0,projectName:0,cashSource:0,cashFlow:0,planStartDate:0,controlDepartment:0,planDeadlineDate:0,state:0}', '{planName:1,taskWeight:1,planSource:1,planController:1,remainingDuration:1,cashSubject:0,budget:0,cashReal:0,completePercentage:0,planFinishDate:0,projectName:0,cashSource:0,cashFlow:0,planStartDate:0,controlDepartment:0,planDeadlineDate:0,state:0}', null, '17');
INSERT INTO `employee` VALUES ('M01', '项目经理一', 'xxx@qq.com', null, '软件部', '开发', '1234', '0', '{actionFinishDate:0,actionResource:0,actionController:1,actionControllerId:0,actionDeadlineDate:0,controllerDepartment:1,projectId:1,actionName:1,actionRemainingDate:0,state:1,}', '{actionFinishDate:0,actionResource:0,actionController:1,actionControllerId:0,actionDeadlineDate:1,controllerDepartment:1,projectId:1,actionName:0,actionRemainingDate:0,state:1,}', '{actionFinishDate:0,actionResource:0,actionController:1,actionControllerId:0,actionDeadlineDate:1,controllerDepartment:1,projectId:1,actionName:0,actionRemainingDate:0,state:1,}', '{taskWeight:1,planSource:0,planController:1,remainingDuration:1,cashSubject:0,budget:0,cashReal:0,completePercentage:0,planFinishDate:0,projectName:0,cashSource:0,cashFlow:0,planStartDate:0,controlDepartment:0,planDeadlineDate:1,state:1,}', '{taskWeight:1,planSource:0,planController:1,remainingDuration:1,cashSubject:0,budget:0,cashReal:0,completePercentage:0,planFinishDate:0,projectName:0,cashSource:0,cashFlow:0,planStartDate:0,controlDepartment:0,planDeadlineDate:0,state:1,}', '{taskWeight:1,planSource:1,planController:1,remainingDuration:1,cashSubject:0,budget:0,cashReal:0,completePercentage:0,planFinishDate:0,projectName:0,cashSource:0,cashFlow:0,planStartDate:0,controlDepartment:0,planDeadlineDate:0,state:1,}', null, '3');
INSERT INTO `employee` VALUES ('M02', '项目经理二', 'xxx@qq.com', null, '硬件部', '开发', '1234', '0', '{actionFinishDate:0,actionResource:1,actionController:1,actionState:0,actionControllerId:0,actionDeadlineDate:1,controllerDepartment:1,projectId:1,actionName:0,actionRemainingDate:0,state:0}', '{actionFinishDate:0,actionResource:0,actionController:1,actionControllerId:0,actionDeadlineDate:1,controllerDepartment:1,projectId:1,actionName:0,actionRemainingDate:0,state:1,}', '{actionFinishDate:0,actionResource:1,actionController:1,actionState:0,actionControllerId:0,actionDeadlineDate:1,controllerDepartment:1,projectId:1,actionName:0,actionRemainingDate:0,state:0}', '{planName:1,taskWeight:1,planSource:1,planController:1,remainingDuration:1,cashSubject:0,budget:0,cashReal:0,completePercentage:0,planFinishDate:0,projectName:0,cashSource:0,cashFlow:0,planStartDate:0,controlDepartment:0,planDeadlineDate:0,state:0}', '{taskWeight:1,planSource:0,planController:1,remainingDuration:1,cashSubject:0,budget:0,cashReal:0,completePercentage:0,planFinishDate:0,projectName:0,cashSource:0,cashFlow:0,planStartDate:0,controlDepartment:0,planDeadlineDate:0,state:1,}', '{planName:1,taskWeight:1,planSource:1,planController:1,remainingDuration:1,cashSubject:0,budget:0,cashReal:0,completePercentage:0,planFinishDate:0,projectName:0,cashSource:0,cashFlow:0,planStartDate:0,controlDepartment:0,planDeadlineDate:0,state:0}', null, '3');
INSERT INTO `employee` VALUES ('MVP', '超级管理员', null, null, '测试部', '管理', '1234', '0', '{actionFinishDate:0,actionResource:1,actionController:1,actionState:0,actionControllerId:0,actionDeadlineDate:1,controllerDepartment:1,projectId:1,actionName:0,actionRemainingDate:0,state:0}', '{actionFinishDate:0,actionResource:1,actionController:1,actionState:0,actionControllerId:0,actionDeadlineDate:1,controllerDepartment:1,projectId:1,actionName:0,actionRemainingDate:0,state:0}', '{actionFinishDate:0,actionResource:1,actionController:1,actionState:0,actionControllerId:0,actionDeadlineDate:1,controllerDepartment:1,projectId:1,actionName:0,actionRemainingDate:0,state:0}', '{planName:1,taskWeight:1,planSource:1,planController:1,remainingDuration:1,cashSubject:0,budget:0,cashReal:0,completePercentage:0,planFinishDate:0,projectName:0,cashSource:0,cashFlow:0,planStartDate:0,controlDepartment:0,planDeadlineDate:0,state:0}', '{planName:1,taskWeight:1,planSource:1,planController:1,remainingDuration:1,cashSubject:0,budget:0,cashReal:0,completePercentage:0,planFinishDate:0,projectName:0,cashSource:0,cashFlow:0,planStartDate:0,controlDepartment:0,planDeadlineDate:0,state:0}', '{planName:1,taskWeight:1,planSource:1,planController:1,remainingDuration:1,cashSubject:0,budget:0,cashReal:0,completePercentage:0,planFinishDate:0,projectName:0,cashSource:0,cashFlow:0,planStartDate:0,controlDepartment:0,planDeadlineDate:0,state:0}', null, '7');
INSERT INTO `employee` VALUES ('P01', '项目领导一', null, null, '项目部', '开发', '1234', '0', '{actionFinishDate:0,actionResource:1,actionController:1,actionState:0,actionControllerId:0,actionDeadlineDate:1,controllerDepartment:1,projectId:1,actionName:0,actionRemainingDate:0,state:0}', '{actionFinishDate:0,actionResource:1,actionController:1,actionState:0,actionControllerId:0,actionDeadlineDate:1,controllerDepartment:1,projectId:1,actionName:0,actionRemainingDate:0,state:0}', '{actionFinishDate:0,actionResource:1,actionController:1,actionState:0,actionControllerId:0,actionDeadlineDate:1,controllerDepartment:1,projectId:1,actionName:0,actionRemainingDate:0,state:0}', '{planName:1,taskWeight:1,planSource:1,planController:1,remainingDuration:1,cashSubject:0,budget:0,cashReal:0,completePercentage:0,planFinishDate:0,projectName:0,cashSource:0,cashFlow:0,planStartDate:0,controlDepartment:0,planDeadlineDate:0,state:0}', '{planName:1,taskWeight:1,planSource:1,planController:1,remainingDuration:1,cashSubject:0,budget:0,cashReal:0,completePercentage:0,planFinishDate:0,projectName:0,cashSource:0,cashFlow:0,planStartDate:0,controlDepartment:0,planDeadlineDate:0,state:0}', '{planName:1,taskWeight:1,planSource:1,planController:1,remainingDuration:1,cashSubject:0,budget:0,cashReal:0,completePercentage:0,planFinishDate:0,projectName:0,cashSource:0,cashFlow:0,planStartDate:0,controlDepartment:0,planDeadlineDate:0,state:0}', null, '15');
INSERT INTO `employee` VALUES ('P02', '项目领导二', null, null, '项目部', '开发', '1234', '0', '{actionFinishDate:0,actionResource:1,actionController:1,actionState:0,actionControllerId:0,actionDeadlineDate:1,controllerDepartment:1,projectId:1,actionName:0,actionRemainingDate:0,state:0}', '{actionFinishDate:0,actionResource:1,actionController:1,actionState:0,actionControllerId:0,actionDeadlineDate:1,controllerDepartment:1,projectId:1,actionName:0,actionRemainingDate:0,state:0}', '{actionFinishDate:0,actionResource:1,actionController:1,actionState:0,actionControllerId:0,actionDeadlineDate:1,controllerDepartment:1,projectId:1,actionName:0,actionRemainingDate:0,state:0}', '{planName:1,taskWeight:1,planSource:1,planController:1,remainingDuration:1,cashSubject:0,budget:0,cashReal:0,completePercentage:0,planFinishDate:0,projectName:0,cashSource:0,cashFlow:0,planStartDate:0,controlDepartment:0,planDeadlineDate:0,state:0}', '{planName:1,taskWeight:1,planSource:1,planController:1,remainingDuration:1,cashSubject:0,budget:0,cashReal:0,completePercentage:0,planFinishDate:0,projectName:0,cashSource:0,cashFlow:0,planStartDate:0,controlDepartment:0,planDeadlineDate:0,state:0}', '{planName:1,taskWeight:1,planSource:1,planController:1,remainingDuration:1,cashSubject:0,budget:0,cashReal:0,completePercentage:0,planFinishDate:0,projectName:0,cashSource:0,cashFlow:0,planStartDate:0,controlDepartment:0,planDeadlineDate:0,state:0}', null, '15');

-- ----------------------------
-- Table structure for failureanalysisreport
-- ----------------------------
DROP TABLE IF EXISTS `failureanalysisreport`;
CREATE TABLE `failureanalysisreport` (
  `FarNumber` varchar(100) NOT NULL,
  `FrNumberRefer` varchar(100) DEFAULT NULL,
  `FrComponentModel` varchar(100) DEFAULT NULL,
  `FrComponentCode` varchar(100) DEFAULT NULL,
  `FrComponentName` varchar(256) DEFAULT NULL,
  `FailureCause` varchar(512) DEFAULT NULL,
  `FailureAnalysis` text,
  `CorrectSuggestion` varchar(1024) DEFAULT NULL,
  `FailureCategory` varchar(1024) DEFAULT NULL,
  `ResponsibleDepartmentLeader` varchar(100) DEFAULT NULL,
  `DepartmentOpinion` text,
  `FrProjectLeader` varchar(100) DEFAULT NULL,
  `FarLeaderOpinion` varchar(1024) DEFAULT NULL,
  `FarMrbLeader` varchar(100) DEFAULT NULL,
  `MrbSuggestions` varchar(1024) DEFAULT NULL,
  `FarMrbDate` datetime DEFAULT NULL,
  `UserOpinion` text,
  `DeleteMark` tinyint(1) DEFAULT NULL,
  `Status` varchar(100) DEFAULT NULL,
  `Attribute_78` char(10) DEFAULT NULL,
  `FarAnalyst` varchar(100) DEFAULT NULL,
  `Tag` varchar(100) DEFAULT NULL,
  `LastEditer` varchar(100) DEFAULT NULL,
  `Project` varchar(100) DEFAULT NULL,
  `FailureHandler` varchar(100) DEFAULT NULL,
  `FarCreateDate` datetime DEFAULT NULL,
  PRIMARY KEY (`FarNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of failureanalysisreport
-- ----------------------------
INSERT INTO `failureanalysisreport` VALUES ('FAR1437984697612', 'FR1437984544839', 'C919-A', '', 'C919-A', '虚焊(Void)', 'qqq', '', '设计(Design)', null, 'kkk', null, 'ooo', null, 'ppp', null, null, '0', 'wait for car', null, 'MRB', '', '010', 'C919', 'MRB', '2015-07-27 00:00:00');
INSERT INTO `failureanalysisreport` VALUES ('FAR1438142921512', 'FR1437984544839', 'C919-A', '', 'C919-A', '从属故障(Dependent Failure)', 'ddd', '设计更改(Change Design)', '供方产品(Supplier)', null, 'aaaa', null, 'bbb', null, 'ccc', null, null, '0', 'wait for car', null, 'MRB', '', '010', 'C919', 'MRB', '2015-07-29 12:08:41');

-- ----------------------------
-- Table structure for failuredescriptionattachments
-- ----------------------------
DROP TABLE IF EXISTS `failuredescriptionattachments`;
CREATE TABLE `failuredescriptionattachments` (
  `FrNumber` varchar(100) NOT NULL,
  `DescriptionAttachs` varchar(128) NOT NULL,
  `DeleteMark` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`DescriptionAttachs`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of failuredescriptionattachments
-- ----------------------------

-- ----------------------------
-- Table structure for failurereport
-- ----------------------------
DROP TABLE IF EXISTS `failurereport`;
CREATE TABLE `failurereport` (
  `FrNumber` varchar(100) NOT NULL,
  `Project` varchar(100) DEFAULT NULL,
  `Type` varchar(100) DEFAULT NULL,
  `ComponentModel` varchar(100) DEFAULT NULL,
  `ComponentCode` varchar(100) DEFAULT NULL,
  `ComponentName` varchar(256) DEFAULT NULL,
  `ComponentSruLot` varchar(100) DEFAULT NULL,
  `SystemType` varchar(100) DEFAULT NULL,
  `SystemSn` varchar(100) DEFAULT NULL,
  `Code` varchar(100) DEFAULT NULL,
  `CardNumber` varchar(100) DEFAULT NULL,
  `CaseCode` varchar(100) DEFAULT NULL,
  `SoftwareConfig` varchar(1024) DEFAULT NULL,
  `Producer` varchar(256) DEFAULT NULL,
  `Provider` varchar(256) DEFAULT NULL,
  `HappenTime` datetime DEFAULT NULL,
  `Location` varchar(256) DEFAULT NULL,
  `WorkingHours` int(11) DEFAULT NULL,
  `Environment` varchar(1024) DEFAULT NULL,
  `Process` varchar(100) DEFAULT NULL,
  `TestEquipmentNumber` varchar(100) DEFAULT NULL,
  `WireNumber` varchar(100) DEFAULT NULL,
  `TestEquipmentInfo` varchar(1024) DEFAULT NULL,
  `FailureMode` varchar(1024) DEFAULT NULL,
  `Description` varchar(1024) DEFAULT NULL,
  `Effection` varchar(1024) DEFAULT NULL,
  `QualityIssueCategory` varchar(1024) DEFAULT NULL,
  `ProjectLeader` varchar(100) DEFAULT NULL,
  `LeaderOpinion` varchar(1024) DEFAULT NULL,
  `QaLeader` varchar(100) DEFAULT NULL,
  `QaLeaderOpinion` varchar(1024) DEFAULT NULL,
  `FrCreater` varchar(1024) DEFAULT NULL,
  `FrCreateDate` datetime DEFAULT NULL,
  `Reporter` varchar(100) DEFAULT NULL,
  `MrbLeader` varchar(100) DEFAULT NULL,
  `MrbOpinion` varchar(1024) DEFAULT NULL,
  `MrbDate` datetime DEFAULT NULL,
  `DeleteMark` tinyint(1) DEFAULT NULL,
  `Status` varchar(100) DEFAULT NULL,
  `Attribute_99` char(10) DEFAULT NULL,
  `Tag` varchar(100) DEFAULT NULL,
  `LastEditer` varchar(100) DEFAULT NULL,
  `FarAnalyst` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`FrNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of failurereport
-- ----------------------------
INSERT INTO `failurereport` VALUES ('', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `failurereport` VALUES ('FR1437469134063', 'C919', 'C919-A', '', null, null, 'wer', 's1', 'ddf', 'rwer', null, null, null, 'CHINA', 'SJTU', '2015-07-21 04:58:00', null, '23', '', '交付试验(ATP)', 't1', null, 'tt1', '显示不准确(Displayed incorrect)', 'q24234', null, '一般质量问题（General）,重大质量问题(Significant)', null, 'fhfg', null, null, '技术负责人', '2015-07-21 00:00:00', 'werr', null, 'dfdh', '2015-07-21 00:00:00', '0', 'wait for far', null, '', '010', '质量负责人');
INSERT INTO `failurereport` VALUES ('FR1437974491961', '', 'C919-A', '', null, null, 'fgdgdfg', 's1', 'fsdfs', '', null, null, null, '', '', '2015-07-27 13:21:00', null, '10', '', '', '', null, '', '损坏(Damaged)', '', null, '一般质量问题（General）', null, '', null, null, '技术负责人', '2015-07-27 00:00:00', '', null, '', '2015-07-27 00:00:00', '0', 'wait for tl', null, '', '008', '');
INSERT INTO `failurereport` VALUES ('FR1437976454803', 'C919', 'C919-C', '', null, null, '', '', '', '', null, null, null, '', '', '2015-07-27 13:54:00', null, '10', '', '例行试验(CT)', '', null, '', '', '', null, '一般质量问题（General）', null, '', null, null, '技术负责人', '2015-07-27 00:00:00', '', null, '', '2015-07-27 00:00:00', '0', 'wait for tl', null, '', '008', '');
INSERT INTO `failurereport` VALUES ('FR1437984544839', 'C919', 'C919-A', '', null, null, '', 's2', '', '', null, null, null, 'CHINA', 'SJTU', '2015-07-27 04:09:00', null, '10', '震动(Vibaration)', '交付试验(ATP)', 't1', null, '', '不显示(Not display)', 'gggg', null, '一般质量问题（General）,重大质量问题(Significant)', null, 'hhh', null, null, 'MRB', '2015-07-27 00:00:00', 'jjj', null, 'hhh', '2015-07-27 00:00:00', '0', 'wait for far', null, '', '010', 'MRB');
INSERT INTO `failurereport` VALUES ('FR1462961593374', '', '', '', null, null, '', '', '', '', null, null, null, '', '', '2016-05-11 18:13:18', null, '0', '', '', '', null, '', '', '', null, '一般质量问题（General）', null, '', null, null, '项目经理', '2016-05-11 06:13:13', '', null, '', '2016-05-11 06:13:13', '0', 'wait for tl', null, '', '203', '');
INSERT INTO `failurereport` VALUES ('FR1462961669408', '', '', '', null, null, '', '', '', '', null, null, null, '', '', '2016-05-11 18:14:38', null, '0', '', '', '', null, '', '', '', null, '一般质量问题（General）', null, '', null, null, '项目经理', '2016-05-11 06:14:29', '', null, '', '2016-05-11 06:14:29', '0', 'wait for tl', null, '', '203', '');
INSERT INTO `failurereport` VALUES ('FR1462961686647', '', '', '', null, null, '', '', '', '', null, null, null, '', '', '2016-05-11 18:14:49', null, '0', '', '', '', null, '', '', '', null, '一般质量问题（General）', null, '', null, null, '项目经理', '2016-05-11 06:14:46', '', null, '', '2016-05-11 06:14:46', '0', 'wait for tl', null, '', '203', '');
INSERT INTO `failurereport` VALUES ('FR1463327752679', '', '', '', null, null, '', '', '', '', null, null, null, '', '', '2016-05-15 23:56:26', null, '0', '', '', '', null, '', '', '', null, '一般质量问题（General）', null, '', null, null, 'MRB', '2016-05-15 11:55:52', '', null, '', '2016-05-15 11:55:52', '0', 'wait for tl', null, '', '010', '');
INSERT INTO `failurereport` VALUES ('FR1463327997333', '', '', '', null, null, '', '', '', '', null, null, null, '', '', '2016-05-16 00:00:24', null, '0', '', '', '', null, '', '', '', null, '一般质量问题（General）', null, '', null, null, '项目经理', '2016-05-15 11:59:57', '', null, '', '2016-05-15 11:59:57', '0', '', null, 'draft', '203', '');
INSERT INTO `failurereport` VALUES ('FR1463328041580', '', '', '', null, null, '', '', '', '', null, null, null, '', '', '2016-05-16 00:00:48', null, '0', '', '', '', null, '', '', '', null, '一般质量问题（General）', null, '', null, null, '项目经理', '2016-05-16 00:00:41', '', null, '', '2016-05-16 00:00:41', '0', '', null, 'draft', '203', '');
INSERT INTO `failurereport` VALUES ('FR1463328869522', 'B2015-0727', 'C919-C', '', null, null, 'eqw', 's1', 'qwe', 'eq', null, null, null, 'CHINA', 'FAST', '2016-05-16 00:14:00', null, '0', '震动(Vibaration)', '交付试验(ATP)', 't2', null, 'tt1', '不显示(Not display)', 'weq', null, '一般质量问题（General）', null, '', null, null, '项目经理', '2016-05-16 00:14:29', 'qwe', null, '', '2016-05-16 00:14:29', '0', 'wait for tl', null, '', '203', '');
INSERT INTO `failurereport` VALUES ('FR1463975048156', 'A2015-0727', 'C919-A', '', null, null, 'eq', 's2', 'qwe', 'wqe', null, null, null, 'US', 'SJTU', '2016-05-23 11:44:00', null, '2', '震动(Vibaration)', '试用/试飞(TF)', 't2', null, 'tt2', '不自检(no-self-test)', '213', null, '一般质量问题（General）', null, '', null, null, '项目经理', '2016-05-23 11:44:08', '21e', null, '', '2016-05-23 11:44:08', '0', '', null, 'draft', '203', '008');
INSERT INTO `failurereport` VALUES ('FR1463975097559', '', '', '', null, null, '', '', '', '', null, null, null, '', '', '2016-05-23 11:47:53', null, '0', '', '', '', null, '', '', '', null, '一般质量问题（General）', null, '', null, null, '项目经理', '2016-05-23 11:44:57', '', null, '', '2016-05-23 11:44:57', '0', 'wait for tl', null, '', '203', '质量负责人');
INSERT INTO `failurereport` VALUES ('FR1463976711196', 'A2015-0727', 'C919-A', '', null, null, '12', 's2', '21', '21', null, null, null, 'US', 'FAST', '2016-05-23 00:11:00', null, '2', '试验(Testing)', '例行试验(CT)', 't2', null, 'tt2', '显示不准确(Displayed incorrect)', '3212', null, '一般质量问题（General）', null, '', null, null, '项目经理', '2016-05-23 00:11:51', '12', null, '', '2016-05-23 00:11:51', '0', 'wait for tl', null, '', '203', '');
INSERT INTO `failurereport` VALUES ('FR1463984701287', 'A2015-0727', 'C919-A', '', null, null, '12', 's1', '11', '21', null, null, null, 'US', 'FAST', '2016-05-23 14:25:00', null, '0', '震动(Vibaration)', '例行试验(CT)', 't1', null, 'tt2', '不显示(Not display)', '2121', null, '一般质量问题（General）', null, '', null, null, '项目经理', '2016-05-23 02:25:01', '21', null, '', '2016-05-23 02:25:01', '0', 'wait for tl', null, '', '203', '');
INSERT INTO `failurereport` VALUES ('FR1463984879854', '', '', '', null, null, '', '', '', '', null, null, null, '', '', '2016-05-23 14:28:32', null, '0', '', '', '', null, '', '', '', null, '一般质量问题（General）', null, '', null, null, '项目经理', '2016-05-23 02:27:59', '', null, '', '2016-05-23 02:27:59', '0', '', null, 'draft', '203', '');

-- ----------------------------
-- Table structure for fracasmetadata
-- ----------------------------
DROP TABLE IF EXISTS `fracasmetadata`;
CREATE TABLE `fracasmetadata` (
  `metadataId` int(11) NOT NULL AUTO_INCREMENT,
  `metadataName` varchar(100) DEFAULT NULL,
  `value` varchar(100) DEFAULT NULL,
  `deleteMark` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`metadataId`)
) ENGINE=InnoDB AUTO_INCREMENT=6267 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fracasmetadata
-- ----------------------------
INSERT INTO `fracasmetadata` VALUES ('1877', 'metadataName', 'type', '0');
INSERT INTO `fracasmetadata` VALUES ('1878', 'metadataName', 'systemtype', '0');
INSERT INTO `fracasmetadata` VALUES ('1879', 'metadataName', 'systemsn', '0');
INSERT INTO `fracasmetadata` VALUES ('1880', 'metadataName', 'componentmodel', '0');
INSERT INTO `fracasmetadata` VALUES ('1881', 'metadataName', 'componentsrulot', '0');
INSERT INTO `fracasmetadata` VALUES ('1882', 'metadataName', 'componentsn', '0');
INSERT INTO `fracasmetadata` VALUES ('1883', 'metadataName', 'provider', '0');
INSERT INTO `fracasmetadata` VALUES ('1884', 'metadataName', 'producer', '0');
INSERT INTO `fracasmetadata` VALUES ('1885', 'metadataName', 'testequipmentnumber', '0');
INSERT INTO `fracasmetadata` VALUES ('1886', 'metadataName', 'testequipmentmodel', '0');
INSERT INTO `fracasmetadata` VALUES ('1887', 'metadataName', 'environment', '0');
INSERT INTO `fracasmetadata` VALUES ('1888', 'metadataName', 'process', '0');
INSERT INTO `fracasmetadata` VALUES ('1889', 'metadataName', 'failuremode', '0');
INSERT INTO `fracasmetadata` VALUES ('1890', 'metadataName', 'qualityissuecategory', '0');
INSERT INTO `fracasmetadata` VALUES ('1891', 'metadataName', 'failurecause', '0');
INSERT INTO `fracasmetadata` VALUES ('1892', 'metadataName', 'failurecategory', '0');
INSERT INTO `fracasmetadata` VALUES ('1893', 'metadataName', 'recommendation', '0');
INSERT INTO `fracasmetadata` VALUES ('1894', 'metadataName', 'requiredcontent', '0');
INSERT INTO `fracasmetadata` VALUES ('1895', 'metadataName', 'implementationgroup', '0');
INSERT INTO `fracasmetadata` VALUES ('1896', 'metadataName', 'requiredresponsecontent', '0');
INSERT INTO `fracasmetadata` VALUES ('1897', 'metadataName', 'serialno', '0');
INSERT INTO `fracasmetadata` VALUES ('1898', 'metadataName', 'softwarepartyno', '0');
INSERT INTO `fracasmetadata` VALUES ('1899', 'metadataName', 'revision', '0');
INSERT INTO `fracasmetadata` VALUES ('5879', 'metadataName', 'mrb', '0');
INSERT INTO `fracasmetadata` VALUES ('6188', 'type', 'C919-A', '0');
INSERT INTO `fracasmetadata` VALUES ('6189', 'type', 'C919-C', '0');
INSERT INTO `fracasmetadata` VALUES ('6190', 'systemtype', 's1', '0');
INSERT INTO `fracasmetadata` VALUES ('6191', 'systemtype', 's2', '0');
INSERT INTO `fracasmetadata` VALUES ('6192', 'systemtype', 's3', '0');
INSERT INTO `fracasmetadata` VALUES ('6193', 'systemsn', 'ss1', '0');
INSERT INTO `fracasmetadata` VALUES ('6194', 'systemsn', 'ss2', '0');
INSERT INTO `fracasmetadata` VALUES ('6195', 'systemsn', 'ss3', '0');
INSERT INTO `fracasmetadata` VALUES ('6196', 'systemsn', 'ss4', '0');
INSERT INTO `fracasmetadata` VALUES ('6197', 'componentmodel', '1', '0');
INSERT INTO `fracasmetadata` VALUES ('6198', 'componentmodel', '2', '0');
INSERT INTO `fracasmetadata` VALUES ('6199', 'componentmodel', '3', '0');
INSERT INTO `fracasmetadata` VALUES ('6200', 'componentsrulot', '1', '0');
INSERT INTO `fracasmetadata` VALUES ('6201', 'componentsrulot', '2', '0');
INSERT INTO `fracasmetadata` VALUES ('6202', 'componentsrulot', '3', '0');
INSERT INTO `fracasmetadata` VALUES ('6203', 'componentsn', '1', '0');
INSERT INTO `fracasmetadata` VALUES ('6204', 'componentsn', '2', '0');
INSERT INTO `fracasmetadata` VALUES ('6205', 'componentsn', '3', '0');
INSERT INTO `fracasmetadata` VALUES ('6206', 'componentsn', '4X', '0');
INSERT INTO `fracasmetadata` VALUES ('6207', 'provider', 'SJTU', '0');
INSERT INTO `fracasmetadata` VALUES ('6208', 'provider', 'FAST', '0');
INSERT INTO `fracasmetadata` VALUES ('6209', 'provider', 'MSST', '0');
INSERT INTO `fracasmetadata` VALUES ('6210', 'producer', 'CHINA', '0');
INSERT INTO `fracasmetadata` VALUES ('6211', 'producer', 'US', '0');
INSERT INTO `fracasmetadata` VALUES ('6212', 'testequipmentnumber', 't1', '0');
INSERT INTO `fracasmetadata` VALUES ('6213', 'testequipmentnumber', 't2', '0');
INSERT INTO `fracasmetadata` VALUES ('6214', 'testequipmentnumber', 't3', '0');
INSERT INTO `fracasmetadata` VALUES ('6215', 'testequipmentmodel', 'tt1', '0');
INSERT INTO `fracasmetadata` VALUES ('6216', 'testequipmentmodel', 'tt2', '0');
INSERT INTO `fracasmetadata` VALUES ('6217', 'environment', '震动(Vibaration)', '0');
INSERT INTO `fracasmetadata` VALUES ('6218', 'environment', '高低温(Thermal Shock)', '0');
INSERT INTO `fracasmetadata` VALUES ('6219', 'environment', '试验(Testing)', '0');
INSERT INTO `fracasmetadata` VALUES ('6220', 'environment', '使用(On Service)', '0');
INSERT INTO `fracasmetadata` VALUES ('6221', 'process', '交付试验(ATP)', '0');
INSERT INTO `fracasmetadata` VALUES ('6222', 'process', '可靠性增长试验(RGT)', '0');
INSERT INTO `fracasmetadata` VALUES ('6223', 'process', '试用/试飞(TF)', '0');
INSERT INTO `fracasmetadata` VALUES ('6224', 'process', '例行试验(CT)', '0');
INSERT INTO `fracasmetadata` VALUES ('6225', 'process', '可靠性鉴定试验(RQT)', '0');
INSERT INTO `fracasmetadata` VALUES ('6226', 'process', '电磁兼容试验(EMC)', '0');
INSERT INTO `fracasmetadata` VALUES ('6227', 'process', '电源特性试验(PPT)', '0');
INSERT INTO `fracasmetadata` VALUES ('6228', 'failuremode', '不显示(Not display)', '0');
INSERT INTO `fracasmetadata` VALUES ('6229', 'failuremode', '不自检(no-self-test)', '0');
INSERT INTO `fracasmetadata` VALUES ('6230', 'failuremode', '显示不准确(Displayed incorrect)', '0');
INSERT INTO `fracasmetadata` VALUES ('6231', 'failuremode', '损坏(Damaged)', '0');
INSERT INTO `fracasmetadata` VALUES ('6232', 'qualityissuecategory', '一般质量问题(General)', '0');
INSERT INTO `fracasmetadata` VALUES ('6233', 'qualityissuecategory', '重复质量问题(Repetitive)', '0');
INSERT INTO `fracasmetadata` VALUES ('6234', 'qualityissuecategory', '严重质量问题(Serious)', '0');
INSERT INTO `fracasmetadata` VALUES ('6235', 'qualityissuecategory', '重大质量问题(Significant)', '0');
INSERT INTO `fracasmetadata` VALUES ('6236', 'qualityissuecategory', '双五归零(Dou-5)', '0');
INSERT INTO `fracasmetadata` VALUES ('6237', 'failurecause', '设计不合理(Unsuitable Design)', '0');
INSERT INTO `fracasmetadata` VALUES ('6238', 'failurecause', '元器件质量差(Poor Quality of Component)', '0');
INSERT INTO `fracasmetadata` VALUES ('6239', 'failurecause', '元器件老化(Component Aging)', '0');
INSERT INTO `fracasmetadata` VALUES ('6240', 'failurecause', '从属故障(Dependent Failure)', '0');
INSERT INTO `fracasmetadata` VALUES ('6241', 'failurecause', '杂质污染(Contamination)', '0');
INSERT INTO `fracasmetadata` VALUES ('6242', 'failurecause', '检测设备问题(Test Equipment Problem)', '0');
INSERT INTO `fracasmetadata` VALUES ('6243', 'failurecause', '材料选用不当(Unsuitable Material)', '0');
INSERT INTO `fracasmetadata` VALUES ('6244', 'failurecause', '装机失误(Installation Mistake)', '0');
INSERT INTO `fracasmetadata` VALUES ('6245', 'failurecause', '调试不良(Debug)', '0');
INSERT INTO `fracasmetadata` VALUES ('6246', 'failurecause', '虚焊(Void)', '0');
INSERT INTO `fracasmetadata` VALUES ('6247', 'failurecause', '漏焊(Solder Skips)', '0');
INSERT INTO `fracasmetadata` VALUES ('6248', 'failurecause', '外接电源问题(External Power Problem)', '0');
INSERT INTO `fracasmetadata` VALUES ('6249', 'failurecause', '高湿度(High Humidity)', '0');
INSERT INTO `fracasmetadata` VALUES ('6250', 'failurecategory', '设计(Design)', '0');
INSERT INTO `fracasmetadata` VALUES ('6251', 'failurecategory', '制造(Manufacture)', '0');
INSERT INTO `fracasmetadata` VALUES ('6252', 'failurecategory', '工艺(Process)', '0');
INSERT INTO `fracasmetadata` VALUES ('6253', 'failurecategory', '管理(Management)', '0');
INSERT INTO `fracasmetadata` VALUES ('6254', 'failurecategory', '供方产品(Supplier)', '0');
INSERT INTO `fracasmetadata` VALUES ('6255', 'recommendation', '设计更改(Change Design)', '0');
INSERT INTO `fracasmetadata` VALUES ('6256', 'recommendation', '更换元器件(Replace Component)', '0');
INSERT INTO `fracasmetadata` VALUES ('6257', 'requiredcontent', '围堵措施(Containment Action)', '0');
INSERT INTO `fracasmetadata` VALUES ('6258', 'requiredcontent', '纠正措施(Corrective Action)', '0');
INSERT INTO `fracasmetadata` VALUES ('6259', 'requiredcontent', '根本原因(Root Cause)', '0');
INSERT INTO `fracasmetadata` VALUES ('6260', 'requiredcontent', '预防措施(Preventive Action)', '0');
INSERT INTO `fracasmetadata` VALUES ('6261', 'serialno', '12312', '0');
INSERT INTO `fracasmetadata` VALUES ('6262', 'serialno', '567868', '0');
INSERT INTO `fracasmetadata` VALUES ('6263', 'revision', 'jkjko ', '0');
INSERT INTO `fracasmetadata` VALUES ('6264', 'mrb', '重复质量问题(Repetitive)', '0');
INSERT INTO `fracasmetadata` VALUES ('6265', 'mrb', '严重质量问题(Serious)', '0');
INSERT INTO `fracasmetadata` VALUES ('6266', 'mrb', '重大质量问题(Significant)', '0');

-- ----------------------------
-- Table structure for fracasprivilege
-- ----------------------------
DROP TABLE IF EXISTS `fracasprivilege`;
CREATE TABLE `fracasprivilege` (
  `roleId` int(16) NOT NULL,
  `inputReport` tinyint(1) DEFAULT NULL,
  `techOpinion` tinyint(1) DEFAULT NULL,
  `qualityOpinion` tinyint(1) DEFAULT NULL,
  `mrbOpinion` tinyint(1) DEFAULT NULL,
  `dutyOpinion` tinyint(1) DEFAULT NULL,
  `deleteMark` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fracasprivilege
-- ----------------------------

-- ----------------------------
-- Table structure for group
-- ----------------------------
DROP TABLE IF EXISTS `group`;
CREATE TABLE `group` (
  `GroupId` int(16) NOT NULL AUTO_INCREMENT,
  `GroupName` varchar(255) DEFAULT NULL,
  `ProjectId` varchar(255) DEFAULT NULL,
  `Level` int(11) DEFAULT NULL,
  `ParentId` int(16) DEFAULT NULL,
  `DeleteMark` tinyint(1) DEFAULT NULL,
  `GroupLeaderName` varchar(255) DEFAULT NULL,
  `GroupLeaderId` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`GroupId`)
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of group
-- ----------------------------
INSERT INTO `group` VALUES ('109', '测试组', 'PRJ2015619153893', '1', null, '0', '组长一', 'G01');
INSERT INTO `group` VALUES ('110', '软件组', 'PRJ2015614994576', '1', null, '0', '技术负责人', '008');
INSERT INTO `group` VALUES ('111', '硬件组', 'PRJ2015614994576', '1', null, '0', '质量负责人', '009');
INSERT INTO `group` VALUES ('112', '系统组', 'PRJ2015614994576', '1', null, '1', 'MRB', '010');
INSERT INTO `group` VALUES ('113', 'xxx', 'PRJ2015614994576', '1', null, '1', '部门主管', '016');
INSERT INTO `group` VALUES ('114', 'sss', 'PRJ2015614994576', '1', null, '1', '技术负责人', '008');
INSERT INTO `group` VALUES ('115', 'sss', 'PRJ2015614994576', '1', null, '1', '部门主管', '016');
INSERT INTO `group` VALUES ('116', '系统组', 'PRJ2015614994576', '1', null, '1', '部门主管', '016');
INSERT INTO `group` VALUES ('117', 'OP组', 'PRJ2015614994576', '1', null, '1', '我是组长', '202');
INSERT INTO `group` VALUES ('118', '222', 'PRJ2015614994576', '2', '117', '1', '组长一', 'G01');
INSERT INTO `group` VALUES ('119', 'sss', 'PRJ2015614994576', '2', '116', '1', 'MRB', '010');
INSERT INTO `group` VALUES ('120', 'ss2', 'PRJ2015614994576', '2', '116', '0', '质量负责人', '009');
INSERT INTO `group` VALUES ('121', '666', 'PRJ2015614994576', '1', null, '1', '组员一', 'E01');
INSERT INTO `group` VALUES ('122', 'ss', 'PRJ2015614994576', '2', '111', '1', '质量负责人', '009');
INSERT INTO `group` VALUES ('123', '软件组', 'PRJ2015619133005', '1', null, '0', '我是组长', '202');
INSERT INTO `group` VALUES ('124', '软件组', 'PRJ2015613360777', '1', null, '0', '我是组长', '202');
INSERT INTO `group` VALUES ('125', '硬件组', 'PRJ2015613360777', '1', null, '0', '我是组长', '202');
INSERT INTO `group` VALUES ('126', '软件组', 'PRJ2015626750160', '1', null, '0', '我是组长', '202');
INSERT INTO `group` VALUES ('127', '硬件组', 'PRJ2015626750160', '1', null, '1', '我是组长', '202');
INSERT INTO `group` VALUES ('128', '技术组', 'PRJ2016452175049', '1', null, '1', '技术负责人', '008');
INSERT INTO `group` VALUES ('129', 'werwe', 'PRJ2015613360777', '1', null, '0', '组员一', 'E01');
INSERT INTO `group` VALUES ('130', '技术组', 'PRJ2016418468616', '1', null, '0', '我是组长', '202');
INSERT INTO `group` VALUES ('131', 'qwe', 'PRJ2016452175049', '1', null, '1', '技术负责人', '008');
INSERT INTO `group` VALUES ('132', 'qwrqw', 'PRJ2016506734062', '1', null, '1', '项目经理', '203');
INSERT INTO `group` VALUES ('133', 'wer', 'PRJ2016506734062', '1', null, '0', '技术负责人', '008');
INSERT INTO `group` VALUES ('134', 'wer', 'PRJ2016506734062', '1', null, '0', '技术负责人', '008');
INSERT INTO `group` VALUES ('135', 'wer', 'PRJ2016506734062', '1', null, '0', '技术负责人', '008');

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `MessageId` int(32) NOT NULL AUTO_INCREMENT,
  `MessageType` varchar(255) DEFAULT NULL,
  `MessageContent` varchar(255) DEFAULT NULL,
  `ProjectId` varchar(255) DEFAULT NULL,
  `PrjShortName` varchar(255) DEFAULT NULL,
  `PlanCode` varchar(255) DEFAULT NULL,
  `isPackageDir` tinyint(1) DEFAULT NULL,
  `ActionId` varchar(255) DEFAULT NULL,
  `isActionDir` tinyint(1) DEFAULT NULL,
  `MessageSource` varchar(255) DEFAULT NULL,
  `MessageDate` date DEFAULT NULL,
  `EmployeeId` varchar(255) DEFAULT NULL,
  `NoticeId` int(11) DEFAULT NULL,
  `DeleteMark` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`MessageId`)
) ENGINE=InnoDB AUTO_INCREMENT=821 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES ('630', '工作包发布', '新工作包', null, null, null, null, null, null, 'PRJ2015611505642', '2015-07-27', '009', null, null);
INSERT INTO `message` VALUES ('631', '任务通知', '新三级任务1', null, null, null, null, null, null, 'C615-20150727', '2015-07-27', '200', null, null);
INSERT INTO `message` VALUES ('632', '任务通知', '新三级任务2', null, null, null, null, null, null, 'C615-20150727', '2015-07-27', '200', null, null);
INSERT INTO `message` VALUES ('633', '任务发布', 'task1437962358933', null, null, null, null, null, null, 'PRJ2015611505642', '2015-07-27', '200', null, null);
INSERT INTO `message` VALUES ('634', '任务发布', 'task1437962390811', null, null, null, null, null, null, 'PRJ2015611505642', '2015-07-27', '200', null, null);
INSERT INTO `message` VALUES ('635', '任务通知', '新三级任务2', null, null, null, null, null, null, 'C615-20150727', '2015-07-27', '200', null, null);
INSERT INTO `message` VALUES ('636', '任务通知', '新三级任务1', null, null, null, null, null, null, 'C615-20150727', '2015-07-27', '200', null, null);
INSERT INTO `message` VALUES ('637', '任务发布', 'task1437962390811', null, null, null, null, null, null, 'PRJ2015611505642', '2015-07-27', '200', null, null);
INSERT INTO `message` VALUES ('638', '任务发布', 'task1437962358933', null, null, null, null, null, null, 'PRJ2015611505642', '2015-07-27', '200', null, null);
INSERT INTO `message` VALUES ('639', '工作包发布', '新工作包二', null, null, null, null, null, null, 'PRJ2015611505642', '2015-07-27', '009', null, null);
INSERT INTO `message` VALUES ('640', '任务通知', '正常人物', null, null, null, null, null, null, 'C615-20150727', '2015-07-27', '200', null, null);
INSERT INTO `message` VALUES ('641', '任务通知', '提醒任务', null, null, null, null, null, null, 'C615-20150727', '2015-07-27', '200', null, null);
INSERT INTO `message` VALUES ('642', '任务发布', 'task1437965735447', null, null, null, null, null, null, 'PRJ2015611505642', '2015-07-27', '200', null, null);
INSERT INTO `message` VALUES ('643', '行动项通知', '正常', null, null, null, null, null, null, '', '2015-07-27', '200', null, null);
INSERT INTO `message` VALUES ('644', '行动项通知', '提醒', null, null, null, null, null, null, '', '2015-07-27', '200', null, null);
INSERT INTO `message` VALUES ('645', '行动项发布', 'action1437966333854', null, null, null, null, null, null, 'PRJ2015611505642', '2015-07-27', '009', null, null);
INSERT INTO `message` VALUES ('646', '工作包发布', '新工作包', null, null, null, null, null, null, 'PRJ2015619153893', '2015-07-27', '200', null, null);
INSERT INTO `message` VALUES ('647', '任务通知', '提醒任务', null, null, null, null, null, null, 'C918-20150727', '2015-07-27', '008', null, null);
INSERT INTO `message` VALUES ('648', '任务通知', '正常任务', null, null, null, null, null, null, 'C918-20150727', '2015-07-27', '008', null, null);
INSERT INTO `message` VALUES ('649', '任务通知', '提醒任务', null, null, null, null, null, null, 'C918-20150727', '2015-07-27', '200', null, null);
INSERT INTO `message` VALUES ('650', '任务通知', '正常任务', null, null, null, null, null, null, 'C918-20150727', '2015-07-27', '200', null, null);
INSERT INTO `message` VALUES ('651', '任务通知', '提醒任务2', null, null, null, null, null, null, 'C918-20150727', '2015-07-27', '200', null, null);
INSERT INTO `message` VALUES ('652', '任务通知', '提醒任务', null, null, null, null, null, null, 'C918-20150727', '2015-07-27', '200', null, null);
INSERT INTO `message` VALUES ('653', '任务通知', '提醒任务', null, null, null, null, null, null, 'C918-20150727', '2015-07-27', '200', null, null);
INSERT INTO `message` VALUES ('654', '任务通知', '提醒任务', null, null, null, null, null, null, 'C918-20150727', '2015-07-27', '200', null, null);
INSERT INTO `message` VALUES ('655', '任务通知', '', null, null, null, null, null, null, 'C918-20150727', '2015-07-27', '200', null, null);
INSERT INTO `message` VALUES ('656', '任务通知', '提醒任务', null, null, null, null, null, null, 'C918-20150727', '2015-07-27', '200', null, null);
INSERT INTO `message` VALUES ('657', '任务通知', '提醒任务', null, null, null, null, null, null, 'C918-20150727', '2015-07-27', '200', null, null);
INSERT INTO `message` VALUES ('658', '任务通知', '', null, null, null, null, null, null, 'C918-20150727', '2015-07-27', '200', null, null);
INSERT INTO `message` VALUES ('659', '任务通知', '提醒任务', null, null, null, null, null, null, 'C918-20150727', '2015-07-27', '008', null, null);
INSERT INTO `message` VALUES ('660', '任务通知', '正常任务', null, null, null, null, null, null, 'C918-20150727', '2015-07-27', '200', null, null);
INSERT INTO `message` VALUES ('664', '工作包发布', '工作包', null, null, null, null, null, null, 'PRJ2015614994576', '2015-07-27', '010', null, null);
INSERT INTO `message` VALUES ('666', '任务通知', '提醒任务', null, null, null, null, null, null, 'C20156-0727', '2015-07-27', '008', null, null);
INSERT INTO `message` VALUES ('667', '工作包发布', '新工作包1', null, null, null, null, null, null, 'PRJ2015614994576', '2015-07-27', '010', null, null);
INSERT INTO `message` VALUES ('668', '任务通知', '提醒任务', null, null, null, null, null, null, 'C20156-0727', '2015-07-27', '008', null, null);
INSERT INTO `message` VALUES ('670', '工作包发布', '新工作包2', null, null, null, null, null, null, 'PRJ2015614994576', '2015-07-27', '009', null, null);
INSERT INTO `message` VALUES ('671', '行动项通知', '三周例会', null, null, null, null, null, null, '', '2015-07-27', '008', null, null);
INSERT INTO `message` VALUES ('672', '行动项通知', '两周例会', null, null, null, null, null, null, '', '2015-07-27', '200', null, null);
INSERT INTO `message` VALUES ('673', '行动项发布', 'action1437987697204', null, null, null, null, null, null, 'PRJ2015614994576', '2015-07-27', 'D01', null, '1');
INSERT INTO `message` VALUES ('674', '行动项通知', '四周例会', null, null, null, null, null, null, '', '2015-07-27', '200', null, null);
INSERT INTO `message` VALUES ('675', '行动项发布', 'action1437988111540', null, null, null, null, null, null, 'PRJ2015614994576', '2015-07-27', 'D01', null, null);
INSERT INTO `message` VALUES ('676', '行动项发布', 'action1437990295353', null, null, null, null, null, null, 'PRJ2015619133005', '2015-07-27', '202', null, '1');
INSERT INTO `message` VALUES ('677', '行动项发布', 'action1437990296024', null, null, null, null, null, null, 'PRJ2015619133005', '2015-07-27', '202', null, '1');
INSERT INTO `message` VALUES ('678', '行动项审批被驳回', 'action1437990296024', null, null, null, null, null, null, 'PRJ2015619133005', '2015-07-27', '200', null, null);
INSERT INTO `message` VALUES ('679', '行动项发布', 'action1437990296024', null, null, null, null, null, null, 'PRJ2015619133005', '2015-07-27', '202', null, '1');
INSERT INTO `message` VALUES ('680', '行动项通知', '提醒', null, null, null, null, null, null, '', '2015-07-27', '200', null, null);
INSERT INTO `message` VALUES ('681', '行动项通知', '正常', null, null, null, null, null, null, '', '2015-07-27', '200', null, null);
INSERT INTO `message` VALUES ('682', '行动项发布', 'action1437993523391', null, null, null, null, null, null, 'PRJ2015613360777', '2015-07-27', '202', null, '1');
INSERT INTO `message` VALUES ('683', '行动项发布', 'action1437993522799', null, null, null, null, null, null, 'PRJ2015613360777', '2015-07-27', '202', null, '1');
INSERT INTO `message` VALUES ('684', '行动项审批被驳回', 'action1437993522799', null, null, null, null, null, null, 'PRJ2015613360777', '2015-07-27', '200', null, null);
INSERT INTO `message` VALUES ('685', '行动项发布', 'action1437993522799', null, null, null, null, null, null, 'PRJ2015613360777', '2015-07-27', '202', null, '1');
INSERT INTO `message` VALUES ('686', '任务通知', 'task1', null, null, null, null, null, null, 'A2015-0727', '2015-07-27', '200', null, null);
INSERT INTO `message` VALUES ('687', '工作包发布', '完成首飞保障工作', null, null, null, null, null, null, 'PRJ2015613360777', '2015-07-27', '202', null, '1');
INSERT INTO `message` VALUES ('688', '工作包发布', '项目计划管理', null, null, null, null, null, null, 'PRJ2015613360777', '2015-07-27', '202', null, '1');
INSERT INTO `message` VALUES ('689', '工作包发布', '项目风险管理', null, null, null, null, null, null, 'PRJ2015613360777', '2015-07-27', '202', null, null);
INSERT INTO `message` VALUES ('690', '行动项通知', '上午例会', null, null, null, null, null, null, '', '2015-07-27', '200', null, null);
INSERT INTO `message` VALUES ('691', '行动项通知', '下午例会', null, null, null, null, null, null, '', '2015-07-27', '200', null, null);
INSERT INTO `message` VALUES ('692', '行动项发布', 'action1438006345560', null, null, null, null, 'action1438006345560', null, 'PRJ2015613360777', '2015-07-27', '202', null, null);
INSERT INTO `message` VALUES ('695', '工作包发布', '工程开发', null, null, null, null, null, null, 'PRJ2015613360777', '2015-07-27', '203', null, null);
INSERT INTO `message` VALUES ('696', '工作包发布', '项目沟通管理', null, null, null, null, null, null, 'PRJ2015613360777', '2015-07-27', '202', null, null);
INSERT INTO `message` VALUES ('697', '工作包发布', '工作包', null, null, null, null, null, null, 'PRJ2015626750160', '2015-07-28', '202', null, null);
INSERT INTO `message` VALUES ('698', '任务通知', '正常任务', null, null, null, null, null, null, 'C2015-0728', '2015-07-28', '200', null, null);
INSERT INTO `message` VALUES ('699', '任务通知', '提醒任务', null, null, null, null, null, null, 'C2015-0728', '2015-07-28', '200', null, null);
INSERT INTO `message` VALUES ('700', '任务通知', '', null, null, null, null, null, null, 'C2015-0728', '2015-07-30', 'E01', null, null);
INSERT INTO `message` VALUES ('701', '任务通知', '', null, null, null, null, null, null, 'C20156-0727', '2015-08-11', '200', null, null);
INSERT INTO `message` VALUES ('702', '任务通知', '', null, null, null, null, null, null, 'C20156-0727', '2015-08-11', '010', null, null);
INSERT INTO `message` VALUES ('703', '任务通知', '', null, null, null, null, null, null, 'C20156-0727', '2015-08-11', '200', null, null);
INSERT INTO `message` VALUES ('704', '任务通知', '', null, null, null, null, null, null, 'C20156-0727', '2015-08-11', '008', null, null);
INSERT INTO `message` VALUES ('705', '任务通知', '', null, null, null, null, null, null, 'C20156-0727', '2015-08-11', '009', null, null);
INSERT INTO `message` VALUES ('706', '任务通知', '', null, null, null, null, null, null, 'C20156-0727', '2015-08-11', 'E01', null, null);
INSERT INTO `message` VALUES ('707', '任务通知', '', null, null, null, null, null, null, 'C20156-0727', '2015-08-11', '008', null, null);
INSERT INTO `message` VALUES ('708', '大事记', '23', null, null, null, null, null, null, 'A2015-0727', '2016-05-10', 'I01', '1', '1');
INSERT INTO `message` VALUES ('709', '大事记', '23', null, null, null, null, null, null, 'A2015-0727', '2016-05-10', 'D01', '1', '1');
INSERT INTO `message` VALUES ('710', '大事记', '23', null, null, null, null, null, null, 'A2015-0727', '2016-05-10', '204', '1', '1');
INSERT INTO `message` VALUES ('711', '大事记', '23', null, null, null, null, null, null, 'A2015-0727', '2016-05-10', '203', '1', '1');
INSERT INTO `message` VALUES ('712', '大事记', '23', null, null, null, null, null, null, 'A2015-0727', '2016-05-10', '202', '1', '1');
INSERT INTO `message` VALUES ('713', '大事记', '23', null, null, null, null, null, null, 'A2015-0727', '2016-05-10', '200', '1', '1');
INSERT INTO `message` VALUES ('714', '大事记', '23', null, null, null, null, null, null, 'A2015-0727', '2016-05-10', 'E01', '1', '1');
INSERT INTO `message` VALUES ('715', '大事记', '23', null, null, null, null, null, null, 'A2015-0727', '2016-05-10', 'E02', '1', '1');
INSERT INTO `message` VALUES ('716', '大事记', '23', null, null, null, null, null, null, 'A2015-0727', '2016-05-10', 'I01', '1', null);
INSERT INTO `message` VALUES ('717', '大事记', '23', null, null, null, null, null, null, 'A2015-0727', '2016-05-10', 'D01', '1', '1');
INSERT INTO `message` VALUES ('718', '大事记', '23', null, null, null, null, null, null, 'A2015-0727', '2016-05-10', '204', '1', null);
INSERT INTO `message` VALUES ('719', '大事记', '23', null, null, null, null, null, null, 'A2015-0727', '2016-05-10', '203', '1', null);
INSERT INTO `message` VALUES ('720', '大事记', '23', null, null, null, null, null, null, 'A2015-0727', '2016-05-10', '202', '1', null);
INSERT INTO `message` VALUES ('721', '大事记', '23', null, null, null, null, null, null, 'A2015-0727', '2016-05-10', '200', '1', null);
INSERT INTO `message` VALUES ('722', '大事记', '23', null, null, null, null, null, null, 'A2015-0727', '2016-05-10', 'E01', '1', null);
INSERT INTO `message` VALUES ('723', '大事记', '23', null, null, null, null, null, null, 'A2015-0727', '2016-05-10', 'E02', '1', null);
INSERT INTO `message` VALUES ('724', '项目简报', null, null, null, null, null, null, null, 'A2015-0727', '2016-05-10', 'I01', '2', '1');
INSERT INTO `message` VALUES ('725', '项目简报', null, null, null, null, null, null, null, 'A2015-0727', '2016-05-10', 'D01', '2', '1');
INSERT INTO `message` VALUES ('726', '项目简报', null, null, null, null, null, null, null, 'A2015-0727', '2016-05-10', '204', '2', '1');
INSERT INTO `message` VALUES ('727', '项目简报', null, null, null, null, null, null, null, 'A2015-0727', '2016-05-10', '203', '2', '1');
INSERT INTO `message` VALUES ('728', '项目简报', null, null, null, null, null, null, null, 'A2015-0727', '2016-05-10', '202', '2', '1');
INSERT INTO `message` VALUES ('729', '项目简报', null, null, null, null, null, null, null, 'A2015-0727', '2016-05-10', '200', '2', '1');
INSERT INTO `message` VALUES ('730', '项目简报', null, null, null, null, null, null, null, 'A2015-0727', '2016-05-10', 'E01', '2', '1');
INSERT INTO `message` VALUES ('731', '项目简报', null, null, null, null, null, null, null, 'A2015-0727', '2016-05-10', 'E02', '2', '1');
INSERT INTO `message` VALUES ('732', '项目简报', null, null, null, null, null, null, null, 'A2015-0727', '2016-05-10', 'I01', '2', null);
INSERT INTO `message` VALUES ('733', '项目简报', null, null, null, null, null, null, null, 'A2015-0727', '2016-05-10', 'D01', '2', '1');
INSERT INTO `message` VALUES ('734', '项目简报', null, null, null, null, null, null, null, 'A2015-0727', '2016-05-10', '204', '2', null);
INSERT INTO `message` VALUES ('735', '项目简报', null, null, null, null, null, null, null, 'A2015-0727', '2016-05-10', '203', '2', null);
INSERT INTO `message` VALUES ('736', '项目简报', null, null, null, null, null, null, null, 'A2015-0727', '2016-05-10', '202', '2', null);
INSERT INTO `message` VALUES ('737', '项目简报', null, null, null, null, null, null, null, 'A2015-0727', '2016-05-10', '200', '2', null);
INSERT INTO `message` VALUES ('738', '项目简报', null, null, null, null, null, null, null, 'A2015-0727', '2016-05-10', 'E01', '2', null);
INSERT INTO `message` VALUES ('739', '项目简报', null, null, null, null, null, null, null, 'A2015-0727', '2016-05-10', 'E02', '2', null);
INSERT INTO `message` VALUES ('740', '会议纪要', null, null, null, null, null, null, null, 'A2015-0727', '2016-05-10', 'I01', '3', null);
INSERT INTO `message` VALUES ('741', '会议纪要', null, null, null, null, null, null, null, 'A2015-0727', '2016-05-10', 'D01', '3', null);
INSERT INTO `message` VALUES ('742', '会议纪要', null, null, null, null, null, null, null, 'A2015-0727', '2016-05-10', '204', '3', null);
INSERT INTO `message` VALUES ('743', '会议纪要', null, null, null, null, null, null, null, 'A2015-0727', '2016-05-10', '203', '3', null);
INSERT INTO `message` VALUES ('744', '会议纪要', null, null, null, null, null, null, null, 'A2015-0727', '2016-05-10', '202', '3', null);
INSERT INTO `message` VALUES ('745', '会议纪要', null, null, null, null, null, null, null, 'A2015-0727', '2016-05-10', '200', '3', null);
INSERT INTO `message` VALUES ('746', '会议纪要', null, null, null, null, null, null, null, 'A2015-0727', '2016-05-10', 'E01', '3', null);
INSERT INTO `message` VALUES ('747', '会议纪要', null, null, null, null, null, null, null, 'A2015-0727', '2016-05-10', 'E02', '3', null);
INSERT INTO `message` VALUES ('748', '项目公告', null, null, null, null, null, null, null, 'A2015-0727', '2016-05-10', 'I01', '4', null);
INSERT INTO `message` VALUES ('749', '项目公告', null, null, null, null, null, null, null, 'A2015-0727', '2016-05-10', 'D01', '4', '1');
INSERT INTO `message` VALUES ('750', '项目公告', null, null, null, null, null, null, null, 'A2015-0727', '2016-05-10', '204', '4', null);
INSERT INTO `message` VALUES ('751', '项目公告', null, null, null, null, null, null, null, 'A2015-0727', '2016-05-10', '203', '4', null);
INSERT INTO `message` VALUES ('752', '项目公告', null, null, null, null, null, null, null, 'A2015-0727', '2016-05-10', '202', '4', null);
INSERT INTO `message` VALUES ('753', '项目公告', null, null, null, null, null, null, null, 'A2015-0727', '2016-05-10', '200', '4', null);
INSERT INTO `message` VALUES ('754', '项目公告', null, null, null, null, null, null, null, 'A2015-0727', '2016-05-10', 'E01', '4', null);
INSERT INTO `message` VALUES ('755', '项目公告', null, null, null, null, null, null, null, 'A2015-0727', '2016-05-10', 'E02', '4', null);
INSERT INTO `message` VALUES ('756', '工作包发布', '21111113', null, null, null, null, null, null, 'PRJ2015613360777', '2016-05-15', 'E01', null, null);
INSERT INTO `message` VALUES ('757', '大事记', '22222222222222', null, null, null, null, null, null, 'B2015-0727', '2016-05-16', 'I01', '5', '1');
INSERT INTO `message` VALUES ('758', '大事记', '22222222222222', null, null, null, null, null, null, 'B2015-0727', '2016-05-16', 'D01', '5', '1');
INSERT INTO `message` VALUES ('759', '大事记', '22222222222222', null, null, null, null, null, null, 'B2015-0727', '2016-05-16', '204', '5', '1');
INSERT INTO `message` VALUES ('760', '大事记', '22222222222222', null, null, null, null, null, null, 'B2015-0727', '2016-05-16', '203', '5', '1');
INSERT INTO `message` VALUES ('761', '大事记', '22222222222222', null, null, null, null, null, null, 'B2015-0727', '2016-05-16', '202', '5', '1');
INSERT INTO `message` VALUES ('762', '大事记', '22222222222222', null, null, null, null, null, null, 'B2015-0727', '2016-05-16', '200', '5', '1');
INSERT INTO `message` VALUES ('763', '大事记', '22222222222222', null, null, null, null, null, null, 'B2015-0727', '2016-05-16', 'E01', '5', '1');
INSERT INTO `message` VALUES ('764', '大事记', '22222222222222', null, null, null, null, null, null, 'B2015-0727', '2016-05-16', 'E02', '5', '1');
INSERT INTO `message` VALUES ('765', '大事记', '22222222222222', null, null, null, null, null, null, 'B2015-0727', '2016-05-16', 'I01', '5', '1');
INSERT INTO `message` VALUES ('766', '大事记', '22222222222222', null, null, null, null, null, null, 'B2015-0727', '2016-05-16', 'D01', '5', '1');
INSERT INTO `message` VALUES ('767', '大事记', '22222222222222', null, null, null, null, null, null, 'B2015-0727', '2016-05-16', '204', '5', '1');
INSERT INTO `message` VALUES ('768', '大事记', '22222222222222', null, null, null, null, null, null, 'B2015-0727', '2016-05-16', '203', '5', '1');
INSERT INTO `message` VALUES ('769', '大事记', '22222222222222', null, null, null, null, null, null, 'B2015-0727', '2016-05-16', '202', '5', '1');
INSERT INTO `message` VALUES ('770', '大事记', '22222222222222', null, null, null, null, null, null, 'B2015-0727', '2016-05-16', '200', '5', '1');
INSERT INTO `message` VALUES ('771', '大事记', '22222222222222', null, null, null, null, null, null, 'B2015-0727', '2016-05-16', 'E01', '5', '1');
INSERT INTO `message` VALUES ('772', '大事记', '22222222222222', null, null, null, null, null, null, 'B2015-0727', '2016-05-16', 'E02', '5', '1');
INSERT INTO `message` VALUES ('773', '大事记', '22222222222222', null, null, null, null, null, null, 'B2015-0727', '2016-05-16', 'I01', '5', null);
INSERT INTO `message` VALUES ('774', '大事记', '22222222222222', null, null, null, null, null, null, 'B2015-0727', '2016-05-16', 'D01', '5', null);
INSERT INTO `message` VALUES ('775', '大事记', '22222222222222', null, null, null, null, null, null, 'B2015-0727', '2016-05-16', '204', '5', null);
INSERT INTO `message` VALUES ('776', '大事记', '22222222222222', null, null, null, null, null, null, 'B2015-0727', '2016-05-16', '203', '5', null);
INSERT INTO `message` VALUES ('777', '大事记', '22222222222222', null, null, null, null, null, null, 'B2015-0727', '2016-05-16', '202', '5', null);
INSERT INTO `message` VALUES ('778', '大事记', '22222222222222', null, null, null, null, null, null, 'B2015-0727', '2016-05-16', '200', '5', null);
INSERT INTO `message` VALUES ('779', '大事记', '22222222222222', null, null, null, null, null, null, 'B2015-0727', '2016-05-16', 'E01', '5', null);
INSERT INTO `message` VALUES ('780', '大事记', '22222222222222', null, null, null, null, null, null, 'B2015-0727', '2016-05-16', 'E02', '5', null);
INSERT INTO `message` VALUES ('781', '任务通知', 'weqewq', null, null, null, null, null, null, 'C2015-0728', '2016-05-20', '203', null, null);
INSERT INTO `message` VALUES ('782', '工作包发布', '项目范围管理', null, null, null, null, null, null, 'PRJ2015626750160', '2016-05-20', '202', null, null);
INSERT INTO `message` VALUES ('783', '工作包发布', '项目范围管理', null, null, null, null, null, null, 'PRJ2015626750160', '2016-05-20', '202', null, null);
INSERT INTO `message` VALUES ('784', '任务通知', 'task1', null, null, null, null, null, null, 'A2015-0727', '2016-05-31', '200', null, null);
INSERT INTO `message` VALUES ('785', '任务通知', 'task2', null, null, null, null, null, null, 'A2015-0727', '2016-05-31', 'E02', null, null);
INSERT INTO `message` VALUES ('786', '工作包发布', '项目团队管理', null, null, null, null, null, null, 'PRJ2015613360777', '2016-05-23', '202', null, null);
INSERT INTO `message` VALUES ('787', '工作包发布', '项目团队管理', null, null, null, null, null, null, 'PRJ2015613360777', '2016-05-23', '202', null, null);
INSERT INTO `message` VALUES ('788', '任务通知', 'ttt1', null, null, null, null, null, null, 'A2015-0727', '2016-05-23', '203', null, null);
INSERT INTO `message` VALUES ('789', '大事记', '11111111111111111111', null, null, null, null, null, null, 'test1234', '2016-06-19', 'I01', '6', '1');
INSERT INTO `message` VALUES ('790', '大事记', '11111111111111111111', null, null, null, null, null, null, 'test1234', '2016-06-19', 'D01', '6', '1');
INSERT INTO `message` VALUES ('791', '大事记', '11111111111111111111', null, null, null, null, null, null, 'test1234', '2016-06-19', '204', '6', '1');
INSERT INTO `message` VALUES ('792', '大事记', '11111111111111111111', null, null, null, null, null, null, 'test1234', '2016-06-19', '203', '6', '1');
INSERT INTO `message` VALUES ('793', '大事记', '11111111111111111111', null, null, null, null, null, null, 'test1234', '2016-06-19', '210', '6', '1');
INSERT INTO `message` VALUES ('794', '大事记', '11111111111111111111', null, null, null, null, null, null, 'test1234', '2016-06-19', '008', '6', '1');
INSERT INTO `message` VALUES ('795', '大事记', '11111111111111111111', null, null, null, null, null, null, 'test1234', '2016-06-19', '200', '6', '1');
INSERT INTO `message` VALUES ('796', '项目简报', 'qweqwewqwqe', null, null, null, null, null, null, 'A2015-0727', '2016-06-19', 'I01', '7', null);
INSERT INTO `message` VALUES ('797', '项目简报', 'qweqwewqwqe', null, null, null, null, null, null, 'A2015-0727', '2016-06-19', 'D01', '7', null);
INSERT INTO `message` VALUES ('798', '项目简报', 'qweqwewqwqe', null, null, null, null, null, null, 'A2015-0727', '2016-06-19', '204', '7', null);
INSERT INTO `message` VALUES ('799', '项目简报', 'qweqwewqwqe', null, null, null, null, null, null, 'A2015-0727', '2016-06-19', '203', '7', null);
INSERT INTO `message` VALUES ('800', '项目简报', 'qweqwewqwqe', null, null, null, null, null, null, 'A2015-0727', '2016-06-19', '202', '7', null);
INSERT INTO `message` VALUES ('801', '项目简报', 'qweqwewqwqe', null, null, null, null, null, null, 'A2015-0727', '2016-06-19', 'E01', '7', null);
INSERT INTO `message` VALUES ('802', '项目简报', 'qweqwewqwqe', null, null, null, null, null, null, 'A2015-0727', '2016-06-19', 'E02', '7', null);
INSERT INTO `message` VALUES ('803', '项目简报', 'qweqwewqwqe', null, null, null, null, null, null, 'A2015-0727', '2016-06-19', 'asdfasdfasdf19', '7', null);
INSERT INTO `message` VALUES ('804', '项目简报', 'qweqwewqwqe', null, null, null, null, null, null, 'A2015-0727', '2016-06-19', 'asdfasdf13', '7', null);
INSERT INTO `message` VALUES ('805', '大事记', '11111111111111111111', null, null, null, null, null, null, 'test1234', '2016-06-19', 'I01', '6', null);
INSERT INTO `message` VALUES ('806', '大事记', '11111111111111111111', null, null, null, null, null, null, 'test1234', '2016-06-19', 'D01', '6', null);
INSERT INTO `message` VALUES ('807', '大事记', '11111111111111111111', null, null, null, null, null, null, 'test1234', '2016-06-19', '204', '6', null);
INSERT INTO `message` VALUES ('808', '大事记', '11111111111111111111', null, null, null, null, null, null, 'test1234', '2016-06-19', '203', '6', null);
INSERT INTO `message` VALUES ('809', '大事记', '11111111111111111111', null, null, null, null, null, null, 'test1234', '2016-06-19', '210', '6', null);
INSERT INTO `message` VALUES ('810', '大事记', '11111111111111111111', null, null, null, null, null, null, 'test1234', '2016-06-19', '008', '6', null);
INSERT INTO `message` VALUES ('811', '大事记', '11111111111111111111', null, null, null, null, null, null, 'test1234', '2016-06-19', '200', '6', null);
INSERT INTO `message` VALUES ('812', '会议纪要', 'wrref', null, null, null, null, null, null, 'test1234', '2016-06-19', 'I01', '8', null);
INSERT INTO `message` VALUES ('813', '会议纪要', 'wrref', null, null, null, null, null, null, 'test1234', '2016-06-19', 'D01', '8', null);
INSERT INTO `message` VALUES ('814', '会议纪要', 'wrref', null, null, null, null, null, null, 'test1234', '2016-06-19', '204', '8', null);
INSERT INTO `message` VALUES ('815', '会议纪要', 'wrref', null, null, null, null, null, null, 'test1234', '2016-06-19', '203', '8', null);
INSERT INTO `message` VALUES ('816', '会议纪要', 'wrref', null, null, null, null, null, null, 'test1234', '2016-06-19', '210', '8', null);
INSERT INTO `message` VALUES ('817', '会议纪要', 'wrref', null, null, null, null, null, null, 'test1234', '2016-06-19', '008', '8', null);
INSERT INTO `message` VALUES ('818', '会议纪要', 'wrref', null, null, null, null, null, null, 'test1234', '2016-06-19', '200', '8', null);
INSERT INTO `message` VALUES ('819', '行动项通知', 'aaaaaaa', null, null, null, null, null, null, '', '2016-06-19', '200', null, null);
INSERT INTO `message` VALUES ('820', '行动项通知', 'wqeqwewqwe', null, null, null, null, null, null, '', '2016-06-19', 'G01', null, null);

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Type` varchar(11) DEFAULT NULL,
  `PrjId` varchar(255) DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Content` varchar(255) DEFAULT NULL,
  `FileName` varchar(255) DEFAULT NULL,
  `Path` varchar(255) DEFAULT NULL,
  `State` int(255) DEFAULT NULL,
  `empId` varchar(255) DEFAULT NULL,
  `PrjName` varchar(255) DEFAULT NULL,
  `EmpName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES ('1', '大事记', 'PRJ2015613360777', '111', '23', null, null, '1', '203', 'A2015-0727', '项目经理');
INSERT INTO `notice` VALUES ('2', '项目简报', 'PRJ2015613360777', '222', null, null, null, '1', '203', 'A2015-0727', '项目经理');
INSERT INTO `notice` VALUES ('3', '会议纪要', 'PRJ2015613360777', '33', null, null, null, '1', '203', 'A2015-0727', '项目经理');
INSERT INTO `notice` VALUES ('4', '项目公告', 'PRJ2015613360777', '44', null, null, null, '1', '203', 'A2015-0727', '项目经理');
INSERT INTO `notice` VALUES ('5', '大事记', 'PRJ2015619133005', '1111111111111', '22222222222222', '主计划样本.mpp', 'C:\\Users\\Lenovo\\workspace1\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\615Project\\notice\\37426c5e-ecf3-4d28-9994-6dbea4e47974-主计划样本.mpp', '1', '203', 'B2015-0727', '项目经理');
INSERT INTO `notice` VALUES ('6', '大事记', 'PRJ2016506734062', 'gaichifanle', '11111111111111111111', null, null, '1', '203', 'test1234', '项目经理');
INSERT INTO `notice` VALUES ('7', '项目简报', 'PRJ2015613360777', 'kkkkkkkkkkkkkk', 'qweqwewqwqe', '行动项跟踪表.xlsx', 'C:\\Users\\Lenovo\\workspace1\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\615Project\\notice\\bacb656b-aa0e-47c2-bdf7-bb6dc45a252b-行动项跟踪表.xlsx', '1', '203', 'A2015-0727', '项目经理');
INSERT INTO `notice` VALUES ('8', '会议纪要', 'PRJ2016506734062', 'rrrrrrrrrrrrr', 'wrref', 'A2015-0727.xls', 'C:\\Users\\Lenovo\\workspace1\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\615Project\\notice\\282d4cad-353d-4c47-b96f-e0adf386f6d1-A2015-0727.xls', '1', '203', 'test1234', '项目经理');

-- ----------------------------
-- Table structure for plan
-- ----------------------------
DROP TABLE IF EXISTS `plan`;
CREATE TABLE `plan` (
  `PlanKey` int(32) NOT NULL AUTO_INCREMENT,
  `ParentKey` int(32) DEFAULT NULL,
  `ParentPlanCode` varchar(255) DEFAULT NULL,
  `ProjectId` varchar(255) DEFAULT NULL,
  `ProjectName` varchar(255) DEFAULT NULL,
  `PlanCode` varchar(255) NOT NULL,
  `PlanSerialNumber` varchar(255) DEFAULT NULL,
  `PlanName` varchar(255) DEFAULT NULL,
  `PlanIssuedDate` date DEFAULT NULL,
  `PlanDeadlineDate` date DEFAULT NULL,
  `PlanStartDate` date DEFAULT NULL,
  `PlanFinishDate` date DEFAULT NULL,
  `PlanSource` varchar(255) DEFAULT NULL,
  `EmployeeId` varchar(255) DEFAULT NULL,
  `PlanController` varchar(255) DEFAULT NULL,
  `PlanControllerId` varchar(255) DEFAULT NULL,
  `PlanCreatorId` varchar(255) DEFAULT NULL,
  `PlanAuditorId` varchar(255) DEFAULT NULL,
  `EmployeeName` varchar(255) DEFAULT NULL,
  `PlanStateCode` int(16) DEFAULT NULL,
  `Back` tinyint(1) unsigned zerofill DEFAULT '0',
  `Reviewer` varchar(255) DEFAULT NULL,
  `Leaf` tinyint(1) DEFAULT NULL,
  `Level` int(10) DEFAULT NULL,
  `ChangeDetail` varchar(255) DEFAULT NULL,
  `Complete` tinyint(1) DEFAULT NULL,
  `Accept` tinyint(1) DEFAULT NULL,
  `Issue` tinyint(1) DEFAULT NULL,
  `DeleteMark` tinyint(1) DEFAULT NULL,
  `PlanType` varchar(255) DEFAULT NULL,
  `SAVIC` double(64,0) DEFAULT '0',
  `COMAC` double(64,0) DEFAULT '0',
  `SPI` double(64,0) DEFAULT '0',
  `CompletePercentage` double(64,0) DEFAULT '0',
  `RemainingDuration` varchar(64) DEFAULT '0',
  `RemainingHour` varchar(64) DEFAULT '0',
  `RemainingPeriod` varchar(64) DEFAULT '0',
  `BaselineFinishTime` date DEFAULT NULL,
  `BaselineStartTime` date DEFAULT NULL,
  `Predecessor` varchar(255) DEFAULT NULL,
  `Successor` varchar(255) DEFAULT NULL,
  `taskContent` varchar(255) DEFAULT NULL,
  `taskWeight` double(32,0) DEFAULT NULL,
  `controlDepartmentId` varchar(255) DEFAULT NULL,
  `controlDepartment` varchar(255) DEFAULT NULL,
  `groupId` varchar(255) DEFAULT NULL,
  `groupName` varchar(255) DEFAULT NULL,
  `budget` double(64,0) DEFAULT NULL,
  `cashFlow` varchar(64) DEFAULT NULL,
  `cashSource` varchar(255) DEFAULT NULL,
  `cashSubject` varchar(255) DEFAULT NULL,
  `cashReal` double(64,0) DEFAULT NULL,
  `isTask` tinyint(1) DEFAULT NULL,
  `wbs` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`PlanKey`)
) ENGINE=InnoDB AUTO_INCREMENT=1853 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of plan
-- ----------------------------
INSERT INTO `plan` VALUES ('1738', null, '', 'PRJ2015614994576', 'C20156-0727', 'plan1437985627382', null, 'XXX项目', '2006-10-27', '2015-12-26', '2006-10-27', null, null, null, '项目经理一', 'M01', 'P01', 'P01', null, '1', null, null, '0', '1', null, null, null, null, '1', null, null, null, null, '40', '2408.0d', '42728.0h', '2408.0d', null, null, null, null, null, null, null, null, null, null, '0', null, null, null, '0', '0', '1');
INSERT INTO `plan` VALUES ('1739', '1738', 'plan1437985627382', 'PRJ2015614994576', 'C20156-0727', 'plan1437985627385', null, '项目里程碑', '2015-07-24', '2015-10-30', '2015-07-24', null, null, null, '项目经理一', 'M01', 'P01', 'P01', null, '1', null, null, '0', '2', null, null, null, null, '1', null, null, null, null, '0', '76.0d', '0.0h', '76.0d', null, null, null, null, null, null, null, null, null, null, '0', null, null, null, '0', '0', '1.1');
INSERT INTO `plan` VALUES ('1740', '1739', 'plan1437985627385', 'PRJ2015614994576', 'C20156-0727', 'package1437985627387', null, '完成首飞保障工作', '2015-07-24', '2015-10-30', '2015-07-24', null, null, null, '质量负责人', '009', 'M01', 'M01', null, '1', null, null, '1', '3', null, null, null, null, '1', null, null, null, null, '0', '76.0d', '0.0h', '76.0d', null, null, null, null, null, null, null, null, null, null, '0', null, null, null, '0', '0', '1.1.1');
INSERT INTO `plan` VALUES ('1741', '1738', 'plan1437985627382', 'PRJ2015614994576', 'C20156-0727', 'plan1437985627396', null, '项目管理', '2006-10-27', '2015-12-26', '2006-10-27', null, null, null, '项目经理一', 'M01', 'P01', 'P01', null, '1', null, null, '0', '2', null, null, null, null, '1', null, null, null, null, '0', '2408.0d', '42728.0h', '2408.0d', null, null, null, null, null, null, null, null, null, null, '0', null, null, null, '0', '0', '1.2');
INSERT INTO `plan` VALUES ('1742', '1741', 'plan1437985627396', 'PRJ2015614994576', 'C20156-0727', 'package1437985627398', null, '项目计划管理', '2006-10-27', '2015-12-26', '2006-10-27', null, null, null, '质量负责人', '009', 'M01', 'M01', null, '1', null, null, '1', '3', null, null, null, null, '1', null, null, null, null, '0', '2408.0d', '19264.0h', '2408.0d', null, null, null, null, null, null, null, null, null, null, '0', null, null, null, '0', '0', '1.2.1');
INSERT INTO `plan` VALUES ('1743', '1741', 'plan1437985627396', 'PRJ2015614994576', 'C20156-0727', 'package1437985627400', null, '项目范围管理', '2006-10-27', '2007-11-06', '2006-10-27', null, null, null, '质量负责人', '009', 'M01', 'M01', null, '1', null, null, '1', '3', null, null, null, null, '1', null, null, null, null, '0', '268.0d', '0.0h', '268.0d', null, null, null, null, null, null, null, null, null, null, '0', null, null, null, '0', '0', '1.2.2');
INSERT INTO `plan` VALUES ('1744', '1741', 'plan1437985627396', 'PRJ2015614994576', 'C20156-0727', 'package1437985627403', null, '项目团队管理', '2006-10-27', '2007-10-29', '2006-10-27', null, null, null, '我是组员', '200', 'M01', 'M01', null, '1', null, null, '1', '3', null, null, null, null, '1', null, null, null, null, '0', '262.0d', '0.0h', '262.0d', null, null, null, null, null, null, null, null, null, null, '0', null, null, null, '0', '0', '1.2.3');
INSERT INTO `plan` VALUES ('1745', '1741', 'plan1437985627396', 'PRJ2015614994576', 'C20156-0727', 'package1437985627405', null, '项目经费管理', '2006-10-27', '2006-10-27', '2006-10-27', null, null, null, '我是组员', '200', 'M01', 'M01', null, '1', null, null, '1', '3', null, null, null, null, '1', null, null, null, null, '0', '1.0d', '8.0h', '1.0d', null, null, null, null, null, null, null, null, null, null, '0', null, null, null, '0', '0', '1.2.4');
INSERT INTO `plan` VALUES ('1746', '1741', 'plan1437985627396', 'PRJ2015614994576', 'C20156-0727', 'package1437985627407', null, '项目沟通管理', '2006-10-27', '2007-10-29', '2006-10-27', null, null, null, '我是组员', '200', 'M01', 'M01', null, '1', null, null, '1', '3', null, null, null, null, '1', null, null, null, null, '0', '262.0d', '2096.0h', '262.0d', null, null, null, null, null, null, null, null, null, null, '0', null, null, null, '0', '0', '1.2.5');
INSERT INTO `plan` VALUES ('1747', '1741', 'plan1437985627396', 'PRJ2015614994576', 'C20156-0727', 'package1437985627410', null, '项目风险管理', '2006-10-27', '2007-10-29', '2006-10-27', null, null, null, '技术负责人', '008', 'M01', 'M01', null, '1', null, null, '1', '3', null, null, null, null, '1', null, null, null, null, '0', '262.0d', '2096.0h', '262.0d', null, null, null, null, null, null, null, null, null, null, '0', null, null, null, '0', '0', '1.2.6');
INSERT INTO `plan` VALUES ('1748', '1738', 'plan1437985627382', 'PRJ2015614994576', 'C20156-0727', 'package1437985627412', null, '工程开发', '2006-10-27', '2007-11-15', '2006-10-27', null, null, null, '技术负责人', '008', 'M01', 'M01', null, '1', null, null, '1', '2', null, null, null, null, '1', null, null, null, null, '0', '275.0d', '0.0h', '275.0d', null, null, null, null, null, null, null, null, null, null, '0', null, null, null, '0', '0', '1.3');
INSERT INTO `plan` VALUES ('1749', '1738', 'plan1437985627382', 'PRJ2015614994576', 'C20156-0727', 'plan1437985685360', null, '工作包目录', '2015-07-27', '2015-08-06', '2015-07-27', '2015-07-27', null, null, '项目经理一', 'M01', 'P01', 'P01', null, '2', '0', null, '0', '2', null, '0', '0', '1', '1', null, null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, null, null, '0', '0', null);
INSERT INTO `plan` VALUES ('1750', '1749', 'plan1437985685360', 'PRJ2015614994576', 'C20156-0727', 'package1437985821470', null, '工作包', '2015-07-27', '2015-08-05', null, null, null, null, 'MRB', '010', 'M01', 'P01', null, '2', '0', null, '1', '3', null, '0', '0', '1', '1', null, null, null, '0', '70', null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, null, null, '0', '0', null);
INSERT INTO `plan` VALUES ('1751', '1750', 'package1437985821470', 'PRJ2015614994576', 'C20156-0727', 'task1437986013819', '', '工作包', '2015-07-27', '2015-07-29', '2015-07-27', '2015-07-27', '', '', '技术负责人', '008', '010', '010', null, '4', '0', '', '1', '4', null, '0', '0', '1', '1', '', '0', '0', null, null, null, null, null, null, null, '', '', '提醒任务', '70', '', null, null, null, null, null, null, null, null, '1', '1.4.1.2');
INSERT INTO `plan` VALUES ('1752', '1750', 'package1437985821470', 'PRJ2015614994576', 'C20156-0727', 'task1437986013236', '', '工作包', '2015-07-27', '2015-07-31', '2015-07-27', null, '', '', '我是组员', '200', '010', '010', null, '6', '0', '', '1', '4', null, '0', '0', '1', '1', '', '0', '0', '0', '0', '4', '', '', null, null, '', '', '正常任务', '30', '', '', '', '', '0', '', '', '', '0', '1', '1.4.1.1');
INSERT INTO `plan` VALUES ('1753', '1738', 'plan1437985627382', 'PRJ2015614994576', 'C20156-0727', 'package1437986507259', null, '新工作包1', '2015-07-27', '2015-08-29', null, '2015-07-27', null, null, 'MRB', '010', 'M01', 'P01', null, '3', '0', null, '1', '2', null, '0', '0', '1', '1', null, null, null, '0', '100', null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, null, null, '0', '0', null);
INSERT INTO `plan` VALUES ('1754', '1753', 'package1437986507259', 'PRJ2015614994576', 'C20156-0727', 'task1437986575836', '', '新工作包1', '2015-07-27', '2015-07-31', '2015-07-27', '2015-07-27', '', '', '我是组员', '200', '010', '010', null, '4', '0', '', '1', '3', null, '0', '0', '1', '1', '', '0', '0', null, null, null, null, null, null, null, '', '', '正常任务', '50', '', null, null, null, null, null, null, null, null, '1', '1.5.1');
INSERT INTO `plan` VALUES ('1755', '1753', 'package1437986507259', 'PRJ2015614994576', 'C20156-0727', 'task1437986576475', '', '新工作包1', '2015-07-27', '2015-07-29', '2015-07-27', '2015-07-27', '', '', '技术负责人', '008', '010', '010', null, '4', '0', '', '1', '3', null, '0', '0', '1', '1', '', '0', '0', null, null, null, null, null, null, null, '', '', '提醒任务', '50', '', null, null, null, null, null, null, null, null, '1', '1.5.2');
INSERT INTO `plan` VALUES ('1756', '1749', 'plan1437985685360', 'PRJ2015614994576', 'C20156-0727', 'package1437987433325', null, '新工作包2', '2015-07-27', '2015-08-03', null, null, null, null, '质量负责人', '009', 'M01', 'P01', null, '2', '0', null, '1', '3', null, '0', '0', '1', '1', null, null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, null, null, '0', '0', null);
INSERT INTO `plan` VALUES ('1757', null, '', 'PRJ2015614994576', 'C20156-0727', 'plan1437987521299', null, 'XXX项目', '2006-10-27', '2015-12-26', '2006-10-27', null, null, null, '项目经理一', 'M01', 'P01', 'P01', null, '1', null, null, '0', '1', null, null, null, null, '0', null, null, null, null, '0', '2408.0d', '42728.0h', '2408.0d', null, null, null, null, null, null, null, null, null, null, '0', null, null, null, '0', '0', '1');
INSERT INTO `plan` VALUES ('1758', '1757', 'plan1437987521299', 'PRJ2015614994576', 'C20156-0727', 'plan1437987521300', null, '项目里程碑', '2015-07-24', '2015-10-30', '2015-07-24', null, null, null, '项目经理一', 'M01', 'P01', 'P01', null, '1', null, null, '0', '2', null, null, null, null, '0', null, null, null, null, '0', '76.0d', '0.0h', '76.0d', null, null, null, null, null, null, null, null, null, null, '0', null, null, null, '0', '0', '1.1');
INSERT INTO `plan` VALUES ('1759', '1758', 'plan1437987521300', 'PRJ2015614994576', 'C20156-0727', 'package1437987521302', null, '完成首飞保障工作', '2015-07-24', '2015-10-30', '2015-07-24', null, null, null, '质量负责人', '009', 'M01', 'M01', null, '1', null, null, '1', '3', null, null, null, null, '0', null, null, null, null, '0', '76.0d', '0.0h', '76.0d', null, null, null, null, null, null, null, null, null, null, '0', null, null, null, '0', '0', '1.1.1');
INSERT INTO `plan` VALUES ('1760', '1757', 'plan1437987521299', 'PRJ2015614994576', 'C20156-0727', 'plan1437987521303', null, '项目管理', '2006-10-27', '2015-12-26', '2006-10-27', null, null, null, '项目经理一', 'M01', 'P01', 'P01', null, '1', null, null, '0', '2', null, null, null, null, '0', null, null, null, null, '0', '2408.0d', '42728.0h', '2408.0d', null, null, null, null, null, null, null, null, null, null, '0', null, null, null, '0', '0', '1.2');
INSERT INTO `plan` VALUES ('1761', '1760', 'plan1437987521303', 'PRJ2015614994576', 'C20156-0727', 'package1437987521316', null, '项目计划管理', '2006-10-27', '2015-12-26', '2006-10-27', null, null, null, '质量负责人', '009', 'M01', 'M01', null, '1', null, null, '1', '3', null, null, null, null, '0', null, null, null, null, '0', '2408.0d', '19264.0h', '2408.0d', null, null, null, null, null, null, null, null, null, null, '0', null, null, null, '0', '0', '1.2.1');
INSERT INTO `plan` VALUES ('1762', '1760', 'plan1437987521303', 'PRJ2015614994576', 'C20156-0727', 'package1437987521318', null, '项目范围管理', '2006-10-27', '2007-11-06', '2006-10-27', null, null, null, '质量负责人', '009', 'M01', 'M01', null, '1', null, null, '1', '3', null, null, null, null, '0', null, null, null, null, '0', '268.0d', '0.0h', '268.0d', null, null, null, null, null, null, null, null, null, null, '0', null, null, null, '0', '0', '1.2.2');
INSERT INTO `plan` VALUES ('1763', '1760', 'plan1437987521303', 'PRJ2015614994576', 'C20156-0727', 'package1437987521320', null, '项目团队管理', '2006-10-27', '2007-10-29', '2006-10-27', null, null, null, '我是组员', '200', 'M01', 'M01', null, '1', null, null, '1', '3', null, null, null, null, '0', null, null, null, null, '0', '262.0d', '0.0h', '262.0d', null, null, null, null, null, null, null, null, null, null, '0', null, null, null, '0', '0', '1.2.3');
INSERT INTO `plan` VALUES ('1764', '1760', 'plan1437987521303', 'PRJ2015614994576', 'C20156-0727', 'package1437987521321', null, '项目经费管理', '2006-10-27', '2006-10-27', '2006-10-27', null, null, null, '我是组员', '200', 'M01', 'M01', null, '1', null, null, '1', '3', null, null, null, null, '0', null, null, null, null, '0', '1.0d', '8.0h', '1.0d', null, null, null, null, null, null, null, null, null, null, '0', null, null, null, '0', '0', '1.2.4');
INSERT INTO `plan` VALUES ('1765', '1760', 'plan1437987521303', 'PRJ2015614994576', 'C20156-0727', 'package1437987521324', null, '项目沟通管理', '2006-10-27', '2007-10-29', '2006-10-27', null, null, null, '我是组员', '200', 'M01', 'M01', null, '1', null, null, '1', '3', null, null, null, null, '0', null, null, null, null, '0', '262.0d', '2096.0h', '262.0d', null, null, null, null, null, null, null, null, null, null, '0', null, null, null, '0', '0', '1.2.5');
INSERT INTO `plan` VALUES ('1766', '1760', 'plan1437987521303', 'PRJ2015614994576', 'C20156-0727', 'package1437987521325', null, '项目风险管理', '2006-10-27', '2007-10-29', '2006-10-27', null, null, null, '技术负责人', '008', 'M01', 'M01', null, '1', null, null, '1', '3', null, null, null, null, '0', null, null, null, null, '0', '262.0d', '2096.0h', '262.0d', null, null, null, null, null, null, null, null, null, null, '0', null, null, null, '0', '0', '1.2.6');
INSERT INTO `plan` VALUES ('1767', '1757', 'plan1437987521299', 'PRJ2015614994576', 'C20156-0727', 'package1437987521328', null, '工程开发', '2006-10-27', '2007-11-15', '2006-10-27', null, null, null, '技术负责人', '008', 'M01', 'M01', null, '1', null, null, '1', '2', null, null, null, null, '0', null, null, null, null, '0', '275.0d', '0.0h', '275.0d', null, null, null, null, null, null, null, null, null, null, '0', null, null, null, '0', '0', '1.3');
INSERT INTO `plan` VALUES ('1768', null, '', 'PRJ2015613360777', 'A2015-0727', 'plan1437994128345', null, 'XXX项目', '2006-10-27', '2015-12-26', '2016-05-15', null, null, null, '项目经理', '203', '204', '204', null, '6', '0', null, '0', '1', '', '0', '0', '1', '0', null, null, null, null, '0', '2408.0d', '42728.0h', '2408.0d', null, null, null, null, null, null, null, null, null, null, '0', null, 'qweeewqeq', null, '0', '0', '1');
INSERT INTO `plan` VALUES ('1769', '1768', 'plan1437994128345', 'PRJ2015613360777', 'A2015-0727', 'plan1437994128347', null, '项目里程碑', '2015-07-24', '2015-10-30', '2016-05-15', null, null, null, '项目经理', '203', '204', '204', null, '5', '0', null, '0', '2', '操作: 项目经理(ID:203)申请变更\n时间: 2016/5/15 下午10:36:13\n内容: \n\n操作: 我是项目领导(ID:204)操作变更\n时间: 2016/5/15 下午10:34:55\n内容: 由 我是项目领导(ID:204) 通过。批示为 \n\n操作: 项目经理(ID:203)申请变更\n时间: 2016/5/15 下午10:32:33\n内容: \n\n', '0', '0', '1', '0', null, null, null, '123', '200', '76.0d', '0.0h', '76.0d', null, null, null, null, null, null, null, null, '111', '硬件组', '0', '321', '123', '12', '0', '0', '1.1');
INSERT INTO `plan` VALUES ('1770', '1769', 'plan1437994128347', 'PRJ2015613360777', 'A2015-0727', 'package1437994128348', null, '完成首飞保障工作', '2015-07-24', '2015-10-30', '2015-07-24', '2015-07-27', null, null, '我是组长', '202', '203', '203', null, '3', '0', null, '1', '3', null, '0', '0', '1', '0', null, null, null, null, '100', '76.0d', '0.0h', '76.0d', null, null, null, null, null, null, null, null, null, null, '0', null, null, null, '0', '0', '1.1.1');
INSERT INTO `plan` VALUES ('1771', '1768', 'plan1437994128345', 'PRJ2015613360777', 'A2015-0727', 'plan1437994128350', null, '项目管理', '2006-10-27', '2015-12-26', '2016-05-31', null, null, null, '项目经理', '203', '204', '204', null, '2', '0', null, '0', '2', '操作: 我是项目领导(ID:204)操作变更\n时间: 2016/5/23 下午5:19:36\n内容: 由 我是项目领导(ID:204) 通过。批示为 sp1\n\n操作: 项目经理(ID:203)申请变更\n时间: 2016/5/23 下午5:17:52\n内容: bgsq\n\n', '0', '0', '1', '0', null, null, null, null, '100', '2408.0d', '42728.0h', '2408.0d', null, null, null, null, null, null, null, null, null, null, '0', null, null, null, '0', '0', '1.2');
INSERT INTO `plan` VALUES ('1772', '1771', 'plan1437994128350', 'PRJ2015613360777', 'A2015-0727', 'package1437994128352', null, '项目计划管理', '2006-10-27', '2015-12-26', '2006-10-27', '2015-07-27', null, null, '我是组长', '202', '203', '203', null, '3', '0', null, '1', '3', null, '0', '0', '1', '0', null, null, null, null, '0', '2408.0d', '19264.0h', '2408.0d', null, null, null, null, null, null, null, '测试部门', '125', '硬件组', '0', null, null, null, '0', '0', '1.2.3');
INSERT INTO `plan` VALUES ('1773', '1771', 'plan1437994128350', 'PRJ2015613360777', 'A2015-0727', 'package1437994128354', null, '项目范围管理', '2006-10-27', '2007-11-06', '2006-10-27', '2015-07-27', null, null, '我是组长', '202', '203', '203', null, '3', '0', null, '1', '3', null, '0', '0', '1', '0', null, null, null, null, '0', '268.0d', '0.0h', '268.0d', null, null, null, null, null, null, null, null, null, null, '0', null, null, null, '0', '0', '1.2.1');
INSERT INTO `plan` VALUES ('1774', '1771', 'plan1437994128350', 'PRJ2015613360777', 'A2015-0727', 'package1437994128356', null, '项目团队管理', '2015-10-27', '2015-10-29', '2006-10-27', '2016-05-23', null, null, '我是组长', '202', '203', '203', null, '3', '0', null, '1', '3', null, '0', '0', '1', '0', null, null, null, null, '0', '262.0d', '0.0h', '262.0d', null, null, null, null, null, null, null, '测试部门', '130', '技术组', '0', null, null, null, '0', '0', '1.2.4');
INSERT INTO `plan` VALUES ('1775', '1771', 'plan1437994128350', 'PRJ2015613360777', 'A2015-0727', 'package1437994128358', null, '项目经费管理', '2006-10-27', '2006-10-27', '2006-10-27', '2015-07-27', null, null, '我是组长', '202', '203', '203', null, '3', '0', null, '1', '3', null, '0', '0', '1', '0', null, null, null, null, '0', '1.0d', '8.0h', '1.0d', null, null, null, null, null, null, null, null, null, null, '0', null, null, null, '0', '0', '1.2.6');
INSERT INTO `plan` VALUES ('1776', '1771', 'plan1437994128350', 'PRJ2015613360777', 'A2015-0727', 'package1437994128360', null, '项目沟通管理', '2006-10-27', '2007-10-29', '2006-10-27', '2015-07-27', null, null, '我是组长', '202', '203', '203', null, '3', '0', null, '1', '3', null, '0', '0', '1', '0', null, null, null, null, '0', '262.0d', '2096.0h', '262.0d', null, null, null, null, null, null, null, null, null, null, '0', null, null, null, '0', '0', '1.2.2');
INSERT INTO `plan` VALUES ('1777', '1771', 'plan1437994128350', 'PRJ2015613360777', 'A2015-0727', 'package1437994128362', null, '项目风险管理', '2006-10-27', '2007-10-29', '2006-10-27', '2015-07-28', null, null, '我是组长', '202', '203', '203', null, '3', '0', null, '1', '3', null, '0', '0', '1', '0', null, null, null, null, '0', '262.0d', '2096.0h', '262.0d', null, null, null, null, null, null, null, null, null, null, '0', null, null, null, '0', '0', '1.2.5');
INSERT INTO `plan` VALUES ('1778', '1768', 'plan1437994128345', 'PRJ2015613360777', 'A2015-0727', 'package1437994128364', null, '工程开发', '2006-10-27', '2007-11-15', '2006-10-27', null, null, null, '项目经理', '203', '203', '203', null, '2', '0', null, '1', '2', null, '0', '0', '1', '0', null, null, null, null, '0', '275.0d', '0.0h', '275.0d', null, null, null, null, null, null, null, null, null, null, '0', null, null, null, '0', '0', '1.3');
INSERT INTO `plan` VALUES ('1780', null, '', 'PRJ2015626750160', 'C2015-0728', 'plan1438066868499', null, 'XXX项目', '2006-10-27', '2015-12-26', '2006-10-27', null, null, null, '项目经理', '203', '204', '204', null, '1', null, null, '0', '1', null, null, null, null, '1', null, null, null, null, '0', '2408.0d', '42728.0h', '2408.0d', null, null, null, null, null, null, null, null, null, null, '0', null, null, null, '0', '0', '1');
INSERT INTO `plan` VALUES ('1781', '1780', 'plan1438066868499', 'PRJ2015626750160', 'C2015-0728', 'plan1438066868501', null, '项目里程碑', '2015-07-24', '2015-10-30', '2015-07-24', null, null, null, '项目经理', '203', '204', '204', null, '1', null, null, '0', '2', null, null, null, null, '1', null, null, null, null, '0', '76.0d', '0.0h', '76.0d', null, null, null, null, null, null, null, null, null, null, '0', null, null, null, '0', '0', '1.1');
INSERT INTO `plan` VALUES ('1782', '1781', 'plan1438066868501', 'PRJ2015626750160', 'C2015-0728', 'package1438066868503', null, '完成首飞保障工作', '2015-07-24', '2015-10-30', '2015-07-24', null, null, null, '我是组长', '202', '203', '203', null, '1', null, null, '1', '3', null, null, null, null, '1', null, null, null, null, '0', '76.0d', '0.0h', '76.0d', null, null, null, null, null, null, null, null, null, null, '0', null, null, null, '0', '0', '1.1.1');
INSERT INTO `plan` VALUES ('1783', '1780', 'plan1438066868499', 'PRJ2015626750160', 'C2015-0728', 'plan1438066868506', null, '项目管理', '2006-10-27', '2015-12-26', '2006-10-27', null, null, null, '项目经理', '203', '204', '204', null, '1', null, null, '0', '2', null, null, null, null, '1', null, null, null, null, '0', '2408.0d', '42728.0h', '2408.0d', null, null, null, null, null, null, null, null, null, null, '0', null, null, null, '0', '0', '1.2');
INSERT INTO `plan` VALUES ('1784', '1783', 'plan1438066868506', 'PRJ2015626750160', 'C2015-0728', 'package1438066868508', null, '项目计划管理', '2006-10-27', '2015-12-26', '2006-10-27', null, null, null, '我是组长', '202', '203', '203', null, '1', null, null, '1', '3', null, null, null, null, '1', null, null, null, null, '0', '2408.0d', '19264.0h', '2408.0d', null, null, null, null, null, null, null, null, null, null, '0', null, null, null, '0', '0', '1.2.1');
INSERT INTO `plan` VALUES ('1785', '1783', 'plan1438066868506', 'PRJ2015626750160', 'C2015-0728', 'package1438066868510', null, '项目范围管理', '2006-10-27', '2007-11-06', '2006-10-27', null, null, null, '我是组长', '202', '203', '203', null, '1', null, null, '1', '3', null, null, null, null, '1', null, null, null, null, '0', '268.0d', '0.0h', '268.0d', null, null, null, null, null, null, null, null, null, null, '0', null, null, null, '0', '0', '1.2.2');
INSERT INTO `plan` VALUES ('1786', '1783', 'plan1438066868506', 'PRJ2015626750160', 'C2015-0728', 'package1438066868512', null, '项目团队管理', '2006-10-27', '2007-10-29', '2006-10-27', null, null, null, '我是组长', '202', '203', '203', null, '1', null, null, '1', '3', null, null, null, null, '1', null, null, null, null, '0', '262.0d', '0.0h', '262.0d', null, null, null, null, null, null, null, null, null, null, '0', null, null, null, '0', '0', '1.2.3');
INSERT INTO `plan` VALUES ('1787', '1783', 'plan1438066868506', 'PRJ2015626750160', 'C2015-0728', 'package1438066868514', null, '项目经费管理', '2006-10-27', '2006-10-27', '2006-10-27', null, null, null, '我是组长', '202', '203', '203', null, '1', null, null, '1', '3', null, null, null, null, '1', null, null, null, null, '0', '1.0d', '8.0h', '1.0d', null, null, null, null, null, null, null, null, null, null, '0', null, null, null, '0', '0', '1.2.4');
INSERT INTO `plan` VALUES ('1788', '1783', 'plan1438066868506', 'PRJ2015626750160', 'C2015-0728', 'package1438066868516', null, '项目沟通管理', '2006-10-27', '2007-10-29', '2006-10-27', null, null, null, '我是组长', '202', '203', '203', null, '1', null, null, '1', '3', null, null, null, null, '1', null, null, null, null, '0', '262.0d', '2096.0h', '262.0d', null, null, null, null, null, null, null, null, null, null, '0', null, null, null, '0', '0', '1.2.5');
INSERT INTO `plan` VALUES ('1789', '1783', 'plan1438066868506', 'PRJ2015626750160', 'C2015-0728', 'package1438066868517', null, '项目风险管理', '2006-10-27', '2007-10-29', '2006-10-27', null, null, null, '我是组长', '202', '203', '203', null, '1', null, null, '1', '3', null, null, null, null, '1', null, null, null, null, '0', '262.0d', '2096.0h', '262.0d', null, null, null, null, null, null, null, null, null, null, '0', null, null, null, '0', '0', '1.2.6');
INSERT INTO `plan` VALUES ('1790', '1780', 'plan1438066868499', 'PRJ2015626750160', 'C2015-0728', 'package1438066868519', null, '工程开发', '2006-10-27', '2007-11-15', '2006-10-27', null, null, null, '项目经理', '203', '203', '203', null, '1', null, null, '1', '2', null, null, null, null, '1', null, null, null, null, '0', '275.0d', '0.0h', '275.0d', null, null, null, null, null, null, null, null, null, null, '0', null, null, null, '0', '0', '1.3');
INSERT INTO `plan` VALUES ('1791', null, '', 'PRJ2015626750160', 'C2015-0728', 'plan1438067057346', null, 'XXX项目', '2015-05-01', '2024-12-28', '2015-05-01', null, null, null, '项目经理', '203', '204', '204', null, '1', null, null, '0', '1', null, null, null, null, '0', null, null, null, null, '0', '2485.0d', '43344.0h', '2532.0d', null, null, null, null, null, null, null, null, null, null, '0', null, null, null, '0', '0', '1');
INSERT INTO `plan` VALUES ('1792', '1791', 'plan1438067057346', 'PRJ2015626750160', 'C2015-0728', 'plan1438067057347', null, '项目里程碑', '2015-05-01', '2016-03-30', '2015-05-01', null, null, null, '项目经理', '203', '204', '204', null, '1', null, null, '0', '2', null, null, null, null, '0', null, null, null, null, '0', '138.0d', '0.0h', '249.0d', null, null, null, null, null, null, null, null, null, null, '0', null, null, null, '0', '0', '1.1');
INSERT INTO `plan` VALUES ('1793', '1792', 'plan1438067057347', 'PRJ2015626750160', 'C2015-0728', 'package1438067057348', '', '完成首飞保障工作', '2015-05-01', '2015-10-30', '2016-06-19', null, '', '', '我是组长', '202', '203', '203', '', '2', '0', null, '1', '3', '', '0', '0', '1', '0', null, null, null, '0', '0', '138.0d', '0.0h', '138.0d', null, null, null, null, null, null, null, '', '', null, '0', '', '', '', '0', '0', '1.1.1');
INSERT INTO `plan` VALUES ('1794', '1791', 'plan1438067057346', 'PRJ2015626750160', 'C2015-0728', 'plan1438067057350', null, '项目管理', '2015-05-01', '2024-10-24', '2015-05-01', null, null, null, '项目经理', '203', '204', '204', null, '1', null, null, '0', '2', null, null, null, null, '0', null, null, null, null, '33', '2408.0d', '43344.0h', '2485.0d', null, null, null, null, null, null, null, null, null, null, '0', null, null, null, '0', '0', '1.2');
INSERT INTO `plan` VALUES ('1795', '1794', 'plan1438067057350', 'PRJ2015626750160', 'C2015-0728', 'package1438067057358', '', '项目计划管理', '2015-05-01', '2024-07-09', '2016-06-19', null, '', '', '我是组长', '202', '203', '203', '', '2', '0', null, '1', '3', '', '0', '0', '1', '0', null, null, null, '0', '0', '2408.0d', '19264.0h', '2408.0d', null, null, null, null, null, null, null, '', '', null, '0', '', '', '', '0', '0', '1.2.1');
INSERT INTO `plan` VALUES ('1796', '1794', 'plan1438067057350', 'PRJ2015626750160', 'C2015-0728', 'package1438067057360', null, '项目范围管理', '2015-05-01', '2016-04-26', '2015-05-01', '2016-05-20', null, null, '我是组长', '202', '203', '203', null, '3', '0', null, '1', '3', null, '0', '0', '1', '0', null, null, null, null, '0', '268.0d', '0.0h', '268.0d', null, null, null, null, null, null, null, null, null, null, '0', '123', '312', null, '0', '0', '1.2.2');
INSERT INTO `plan` VALUES ('1797', '1794', 'plan1438067057350', 'PRJ2015626750160', 'C2015-0728', 'package1438067057362', '', '项目团队管理', '2015-05-01', '2016-04-18', '2016-06-19', null, '', '', '我是组长', '202', '203', '203', '', '2', '0', null, '1', '3', '', '0', '0', '1', '0', null, null, null, '0', '0', '262.0d', '0.0h', '262.0d', null, null, null, null, null, null, null, '', '', null, '0', '', '', '', '0', '0', '1.2.3');
INSERT INTO `plan` VALUES ('1798', '1794', 'plan1438067057350', 'PRJ2015626750160', 'C2015-0728', 'package1438067057363', '', '项目经费管理', '2015-05-01', '2015-05-01', '2016-06-19', null, '', '', '我是组长', '202', '203', '203', '', '2', '0', null, '1', '3', '', '0', '0', '1', '0', null, null, null, '0', '0', '1.0d', '8.0h', '1.0d', null, null, null, null, null, null, null, '', '', null, '0', '', '', '', '0', '0', '1.2.4');
INSERT INTO `plan` VALUES ('1799', '1794', 'plan1438067057350', 'PRJ2015626750160', 'C2015-0728', 'package1438067057365', '', '项目沟通管理', '2015-05-01', '2016-04-18', '2016-06-19', null, '', '', '我是组长', '202', '203', '203', '', '2', '0', null, '1', '3', '', '0', '0', '1', '0', null, null, null, '0', '0', '262.0d', '2096.0h', '262.0d', null, null, null, null, null, null, null, '', '', null, '0', '', '', '', '0', '0', '1.2.5');
INSERT INTO `plan` VALUES ('1800', '1794', 'plan1438067057350', 'PRJ2015626750160', 'C2015-0728', 'package1438067057366', '', '项目风险管理', '2015-05-01', '2016-04-18', '2016-06-19', null, '', '', '我是组长', '202', '203', '203', '', '2', '0', null, '1', '3', '', '0', '0', '1', '0', null, null, null, '0', '0', '262.0d', '2096.0h', '262.0d', null, null, null, null, null, null, null, '', '', null, '0', '', '', '', '0', '0', '1.2.6');
INSERT INTO `plan` VALUES ('1801', '1791', 'plan1438067057346', 'PRJ2015626750160', 'C2015-0728', 'package1438067057368', null, '工程开发', '2015-05-01', '2016-05-05', '2015-05-01', null, null, null, '项目经理', '203', '203', '203', null, '1', null, null, '1', '2', null, null, null, null, '0', null, null, null, null, '0', '275.0d', '0.0h', '275.0d', null, null, null, null, null, null, null, null, null, null, '0', null, null, null, '0', '0', '1.3');
INSERT INTO `plan` VALUES ('1802', '1791', 'plan1438067057346', 'PRJ2015626750160', 'C2015-0728', 'plan1438067136173', null, '工作包目录', '2015-07-28', '2015-08-29', '2015-07-28', '2015-07-28', null, null, '项目经理', '203', '204', '204', null, '2', '0', null, '0', '2', null, '0', '0', '1', '0', null, null, null, '0', '200', null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, null, null, '0', '0', null);
INSERT INTO `plan` VALUES ('1803', '1802', 'plan1438067136173', 'PRJ2015626750160', 'C2015-0728', 'package1438067184681', null, '工作包', '2015-07-28', '2015-08-27', null, '2015-07-28', null, null, '我是组长', '202', '203', '204', null, '3', '0', null, '1', '3', null, '0', '0', '1', '0', null, null, null, '0', '100', null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, null, null, '0', '0', null);
INSERT INTO `plan` VALUES ('1804', '1803', 'package1438067184681', 'PRJ2015626750160', 'C2015-0728', 'task1438067230649', '', '工作包', '2015-07-28', '2015-08-14', '2015-07-28', '2015-07-28', '', '', '我是组员', '200', '203', '202', null, '4', '0', '', '1', '4', null, '0', '0', '1', '0', '', '0', '0', null, null, null, null, null, null, null, '', '', '正常任务', '20', '', null, null, null, null, null, null, null, null, '1', '1.4.1.1');
INSERT INTO `plan` VALUES ('1805', '1803', 'package1438067184681', 'PRJ2015626750160', 'C2015-0728', 'task1438067231152', '', '工作包', '2015-07-28', '2015-07-30', '2015-07-28', '2015-07-28', '', '', '我是组员', '200', '203', '202', null, '4', '0', '', '1', '4', null, '0', '0', '1', '0', '', '0', '0', null, null, null, null, null, null, null, '', '', '提醒任务', '80', '', null, null, null, null, null, null, null, null, '1', '1.4.1.2');
INSERT INTO `plan` VALUES ('1806', null, '', 'PRJ2015619133005', 'B2015-0727', 'plan1438235440166', null, 'XXX项目', '2015-05-01', '2024-12-28', '2015-05-01', null, null, null, '项目经理', '203', '204', '204', null, '2', null, null, '0', '1', null, null, null, null, '1', null, null, null, null, '0', '2485.0d', '43344.0h', '2532.0d', null, null, null, null, null, null, null, null, null, null, '0', null, null, null, '0', '0', '1');
INSERT INTO `plan` VALUES ('1807', '1806', 'plan1438235440166', 'PRJ2015619133005', 'B2015-0727', 'plan1438235440168', null, '项目里程碑', '2015-05-01', '2016-03-30', '2015-05-01', null, null, null, '项目经理', '203', '204', '204', null, '2', null, null, '0', '2', null, null, null, null, '1', null, null, null, null, '0', '138.0d', '0.0h', '249.0d', null, null, null, null, null, null, null, null, null, null, '0', null, null, null, '0', '0', '1.1');
INSERT INTO `plan` VALUES ('1808', '1807', 'plan1438235440168', 'PRJ2015619133005', 'B2015-0727', 'package1438235440170', null, '完成首飞保障工作', '2015-05-01', '2015-10-30', '2015-05-01', null, null, null, '我是组长', '202', '203', '203', null, '2', null, null, '1', '3', null, null, null, null, '1', null, null, null, null, '0', '138.0d', '0.0h', '138.0d', null, null, null, null, null, null, null, null, null, null, '0', null, null, null, '0', '0', '1.1.1');
INSERT INTO `plan` VALUES ('1809', '1806', 'plan1438235440166', 'PRJ2015619133005', 'B2015-0727', 'plan1438235440173', null, '项目管理', '2015-05-01', '2024-10-24', '2015-05-01', null, null, null, '项目经理', '203', '204', '204', null, '2', null, null, '0', '2', null, null, null, null, '1', null, null, null, null, '0', '2408.0d', '43344.0h', '2485.0d', null, null, null, null, null, null, null, null, null, null, '0', null, null, null, '0', '0', '1.2');
INSERT INTO `plan` VALUES ('1810', '1809', 'plan1438235440173', 'PRJ2015619133005', 'B2015-0727', 'package1438235440176', null, '项目计划管理', '2015-05-01', '2024-07-09', '2015-05-01', null, null, null, '我是组长', '202', '203', '203', null, '2', null, null, '1', '3', null, null, null, null, '1', null, null, null, null, '0', '2408.0d', '19264.0h', '2408.0d', null, null, null, null, null, null, null, null, null, null, '0', null, null, null, '0', '0', '1.2.1');
INSERT INTO `plan` VALUES ('1811', '1809', 'plan1438235440173', 'PRJ2015619133005', 'B2015-0727', 'package1438235440178', null, '项目范围管理', '2015-05-01', '2016-04-26', '2015-05-01', null, null, null, '我是组长', '202', '203', '203', null, '2', null, null, '1', '3', null, null, null, null, '1', null, null, null, null, '0', '268.0d', '0.0h', '268.0d', null, null, null, null, null, null, null, null, null, null, '0', null, null, null, '0', '0', '1.2.2');
INSERT INTO `plan` VALUES ('1812', '1809', 'plan1438235440173', 'PRJ2015619133005', 'B2015-0727', 'package1438235440181', null, '项目团队管理', '2015-05-01', '2016-04-18', '2015-05-01', null, null, null, '我是组长', '202', '203', '203', null, '2', null, null, '1', '3', null, null, null, null, '1', null, null, null, null, '0', '262.0d', '0.0h', '262.0d', null, null, null, null, null, null, null, null, null, null, '0', null, null, null, '0', '0', '1.2.3');
INSERT INTO `plan` VALUES ('1813', '1809', 'plan1438235440173', 'PRJ2015619133005', 'B2015-0727', 'package1438235440183', null, '项目经费管理', '2015-05-01', '2015-05-01', '2015-05-01', null, null, null, '我是组长', '202', '203', '203', null, '2', null, null, '1', '3', null, null, null, null, '1', null, null, null, null, '0', '1.0d', '8.0h', '1.0d', null, null, null, null, null, null, null, null, null, null, '0', null, null, null, '0', '0', '1.2.4');
INSERT INTO `plan` VALUES ('1814', '1809', 'plan1438235440173', 'PRJ2015619133005', 'B2015-0727', 'package1438235440185', null, '项目沟通管理', '2015-05-01', '2016-04-18', '2015-05-01', null, null, null, '我是组长', '202', '203', '203', null, '2', null, null, '1', '3', null, null, null, null, '1', null, null, null, null, '0', '262.0d', '2096.0h', '262.0d', null, null, null, null, null, null, null, null, null, null, '0', null, null, null, '0', '0', '1.2.5');
INSERT INTO `plan` VALUES ('1815', '1809', 'plan1438235440173', 'PRJ2015619133005', 'B2015-0727', 'package1438235440187', null, '项目风险管理', '2015-05-01', '2016-04-18', '2015-05-01', null, null, null, '我是组长', '202', '203', '203', null, '2', null, null, '1', '3', null, null, null, null, '1', null, null, null, null, '0', '262.0d', '2096.0h', '262.0d', null, null, null, null, null, null, null, null, null, null, '0', null, null, null, '0', '0', '1.2.6');
INSERT INTO `plan` VALUES ('1816', '1806', 'plan1438235440166', 'PRJ2015619133005', 'B2015-0727', 'package1438235440190', null, '工程开发', '2015-05-01', '2016-05-05', '2015-05-01', null, null, null, '项目经理', '203', '203', '203', null, '2', null, null, '1', '2', null, null, null, null, '1', null, null, null, null, '0', '275.0d', '0.0h', '275.0d', null, null, null, null, null, null, null, null, null, null, '0', null, null, null, '0', '0', '1.3');
INSERT INTO `plan` VALUES ('1817', '1801', 'package1438067057368', 'PRJ2015626750160', 'C2015-0728', 'task1438235626222', '', '工程开发', '2015-07-30', '2015-08-28', '2015-07-30', null, '', '', '组员一', 'E01', '203', '203', '', '2', '0', '', '1', '3', '', '0', '0', '0', '0', '', '0', '0', '0', '0', '29', '0.0h', '275.0d', null, null, '', '', '', '100', '', '', '', '', '0', '', '', '', '0', '1', '1.3.1');
INSERT INTO `plan` VALUES ('1818', '1761', 'package1437987521316', 'PRJ2015614994576', 'C20156-0727', 'task1439297670882', '', '项目计划管理', '2015-08-11', '2015-09-17', '2015-08-11', null, '', '', '我是组员', '200', '202', '009', '', '2', '0', '', '1', '4', '', '0', '0', '0', '0', '', '0', '0', '0', '0', '37', '19264.0h', '2408.0d', null, null, '', '', '', '10', '', '', '', '', '0', '', '', '', '0', '1', '1.2.1.1');
INSERT INTO `plan` VALUES ('1819', '1761', 'package1437987521316', 'PRJ2015614994576', 'C20156-0727', 'task1439297671416', '', '项目计划管理', '2015-08-11', '2015-08-28', '2015-08-11', null, '', '', '我是组员', '200', '202', '009', '', '2', '0', '', '1', '4', '', '0', '0', '0', '0', '', '0', '0', '0', '0', '17', '19264.0h', '2408.0d', null, null, '', '', '', '20', '', '', '', '', '0', '', '', '', '0', '1', '1.2.1.2');
INSERT INTO `plan` VALUES ('1820', '1761', 'package1437987521316', 'PRJ2015614994576', 'C20156-0727', 'task1439297672128', '', '项目计划管理', '2015-08-11', '2015-08-29', '2015-08-11', null, '', '', 'MRB', '010', '202', '009', '', '2', '0', '', '1', '4', '', '0', '0', '0', '0', '', '0', '0', '0', '0', '18', '19264.0h', '2408.0d', null, null, '', '', '', '30', '', '', '', '', '0', '', '', '', '0', '1', '1.2.1.3');
INSERT INTO `plan` VALUES ('1821', '1761', 'package1437987521316', 'PRJ2015614994576', 'C20156-0727', 'task1439297673616', '', '项目计划管理', '2015-08-11', '2015-09-05', '2015-08-11', null, '', '', '质量负责人', '009', '202', '009', '', '2', '0', '', '1', '4', '', '0', '0', '0', '0', '', '0', '0', '0', '0', '25', '19264.0h', '2408.0d', null, null, '', '', '', '20', '', '', '', '', '0', '', '', '', '0', '1', '1.2.1.5');
INSERT INTO `plan` VALUES ('1823', '1761', 'package1437987521316', 'PRJ2015614994576', 'C20156-0727', 'task1439297780995', '', '项目计划管理', '2015-08-11', '2015-08-13', '2015-08-11', null, '', '', '组员一', 'E01', '202', '009', '', '2', '0', '', '1', '4', '', '0', '0', '0', '0', '', '0', '0', '0', '0', '2', '19264.0h', '2408.0d', null, null, '', '', '', '10', '', '', '', '', '0', '', '', '', '0', '1', '1.2.1.6');
INSERT INTO `plan` VALUES ('1824', '1761', 'package1437987521316', 'PRJ2015614994576', 'C20156-0727', 'task1439297673056', '', '项目计划管理', '2015-08-11', '2015-09-01', '2015-08-11', null, '', '', '技术负责人', '008', '202', '009', '', '2', '0', '', '1', '4', '', '0', '0', '0', '0', '', '0', '0', '0', '0', '21', '19264.0h', '2408.0d', null, null, '', '', '', '10', '', '', '', '', '0', '', '', '', '0', '1', '1.2.1.4');
INSERT INTO `plan` VALUES ('1825', '1769', 'plan1437994128347', 'PRJ2015613360777', 'A2015-0727', 'package1463322783244', null, '21111113', '2016-05-15', '2016-05-29', null, null, null, null, '组员一', 'E01', '203', '204', null, '2', '0', null, '1', '3', null, '0', '0', '1', '0', null, null, null, '0', '0', null, '213', '123312', null, null, null, null, null, null, null, '硬件部', '125', '硬件组', '0', '123', null, '321', '0', '0', null);
INSERT INTO `plan` VALUES ('1826', null, '', 'PRJ2015619133005', 'B2015-0727', 'plan1464673090195', null, 'XXX项目', '2015-05-01', '2024-12-28', '2015-05-01', null, null, null, '项目经理', '203', '204', '204', null, '2', null, null, '0', '1', null, null, null, null, '1', null, null, null, null, '0', '2485.0d', '43344.0h', '2532.0d', null, null, null, null, null, null, null, null, null, null, '0', null, null, null, '0', '0', '1');
INSERT INTO `plan` VALUES ('1827', '1826', 'plan1464673090195', 'PRJ2015619133005', 'B2015-0727', 'plan1464673090195', null, '项目里程碑', '2015-05-01', '2016-03-30', '2015-05-01', null, null, null, '项目经理', '203', '204', '204', null, '2', null, null, '0', '2', null, null, null, null, '1', null, null, null, null, '0', '138.0d', '0.0h', '249.0d', null, null, null, null, null, null, null, null, null, null, '0', null, null, null, '0', '0', '1.1');
INSERT INTO `plan` VALUES ('1828', '1826', 'plan1464673090195', 'PRJ2015619133005', 'B2015-0727', 'package1464673090196', null, '完成首飞保障工作', '2015-05-01', '2015-10-30', '2015-05-01', null, null, null, '我是组长', '202', '203', '203', null, '2', null, null, '1', '3', null, null, null, null, '1', null, null, null, null, '0', '138.0d', '0.0h', '138.0d', null, null, null, null, null, null, null, null, null, null, '0', null, null, null, '0', '0', '1.1.1');
INSERT INTO `plan` VALUES ('1829', '1826', 'plan1464673090195', 'PRJ2015619133005', 'B2015-0727', 'plan1464673090197', null, '项目管理', '2015-05-01', '2024-10-24', '2015-05-01', null, null, null, '项目经理', '203', '204', '204', null, '2', null, null, '0', '2', null, null, null, null, '1', null, null, null, null, '0', '2408.0d', '43344.0h', '2485.0d', null, null, null, null, null, null, null, null, null, null, '0', null, null, null, '0', '0', '1.2');
INSERT INTO `plan` VALUES ('1830', '1829', 'plan1464673090197', 'PRJ2015619133005', 'B2015-0727', 'package1464673090198', null, '项目计划管理', '2015-05-01', '2024-07-09', '2015-05-01', null, null, null, '我是组长', '202', '203', '203', null, '2', null, null, '1', '3', null, null, null, null, '1', null, null, null, null, '0', '2408.0d', '19264.0h', '2408.0d', null, null, null, null, null, null, null, null, null, null, '0', null, null, null, '0', '0', '1.2.1');
INSERT INTO `plan` VALUES ('1831', '1829', 'plan1464673090197', 'PRJ2015619133005', 'B2015-0727', 'package1464673090199', null, '项目范围管理', '2015-05-01', '2016-04-26', '2015-05-01', null, null, null, '我是组长', '202', '203', '203', null, '2', null, null, '1', '3', null, null, null, null, '1', null, null, null, null, '0', '268.0d', '0.0h', '268.0d', null, null, null, null, null, null, null, null, null, null, '0', null, null, null, '0', '0', '1.2.2');
INSERT INTO `plan` VALUES ('1832', '1829', 'plan1464673090197', 'PRJ2015619133005', 'B2015-0727', 'package1464673090200', null, '项目团队管理', '2015-05-01', '2016-04-18', '2015-05-01', null, null, null, '我是组长', '202', '203', '203', null, '2', null, null, '1', '3', null, null, null, null, '1', null, null, null, null, '0', '262.0d', '0.0h', '262.0d', null, null, null, null, null, null, null, null, null, null, '0', null, null, null, '0', '0', '1.2.3');
INSERT INTO `plan` VALUES ('1833', '1829', 'plan1464673090197', 'PRJ2015619133005', 'B2015-0727', 'package1464673090201', null, '项目经费管理', '2015-05-01', '2015-05-01', '2015-05-01', null, null, null, '我是组长', '202', '203', '203', null, '2', null, null, '1', '3', null, null, null, null, '1', null, null, null, null, '0', '1.0d', '8.0h', '1.0d', null, null, null, null, null, null, null, null, null, null, '0', null, null, null, '0', '0', '1.2.4');
INSERT INTO `plan` VALUES ('1834', '1829', 'plan1464673090197', 'PRJ2015619133005', 'B2015-0727', 'package1464673090202', null, '项目沟通管理', '2015-05-01', '2016-04-18', '2015-05-01', null, null, null, '我是组长', '202', '203', '203', null, '2', null, null, '1', '3', null, null, null, null, '1', null, null, null, null, '0', '262.0d', '2096.0h', '262.0d', null, null, null, null, null, null, null, null, null, null, '0', null, null, null, '0', '0', '1.2.5');
INSERT INTO `plan` VALUES ('1835', '1829', 'plan1464673090197', 'PRJ2015619133005', 'B2015-0727', 'package1464673090203', null, '项目风险管理', '2015-05-01', '2016-04-18', '2015-05-01', null, null, null, '我是组长', '202', '203', '203', null, '2', null, null, '1', '3', null, null, null, null, '1', null, null, null, null, '0', '262.0d', '2096.0h', '262.0d', null, null, null, null, null, null, null, null, null, null, '0', null, null, null, '0', '0', '1.2.6');
INSERT INTO `plan` VALUES ('1836', '1826', 'plan1464673090195', 'PRJ2015619133005', 'B2015-0727', 'package1464673090204', null, '工程开发', '2015-05-01', '2016-05-05', '2015-05-01', null, null, null, '项目经理', '203', '203', '203', null, '2', null, null, '1', '2', null, null, null, null, '1', null, null, null, null, '0', '275.0d', '0.0h', '275.0d', null, null, null, null, null, null, null, null, null, null, '0', null, null, null, '0', '0', '1.3');
INSERT INTO `plan` VALUES ('1837', '1770', 'package1437994128348', 'PRJ2015613360777', 'A2015-0727', 'task1464673327862', '', '完成首飞保障工作', '2015-07-31', '2015-10-01', '2015-07-31', null, '', '', '组员二', 'E02', '203', '202', '', '2', '0', '', '1', '4', '', '0', '0', '1', '0', '', '0', '0', '0', '100', '-243', '0.0h', '76.0d', null, null, '', '', 'task2', '80', '', '', '', '', '0', '', '', '', '0', '1', '1.1.1.2');
INSERT INTO `plan` VALUES ('1838', '1770', 'package1437994128348', 'PRJ2015613360777', 'A2015-0727', 'task1437994181496', '', '完成首飞保障工作', '2015-07-27', '2015-07-31', '2015-07-27', '2015-07-27', '', '', '我是组员', '200', '203', '202', '', '4', '0', '', '1', '4', '', '0', '0', '1', '0', '', '0', '0', '0', '0', '-305', '', '', null, null, '', '', 'task1', '20', '', '', '', '', '0', '', '', '', '0', '1', '1.1.1.1');
INSERT INTO `plan` VALUES ('1839', null, '', 'PRJ2015619133005', 'B2015-0727', 'plan1464674124308', null, 'XXX项目', '2015-05-01', '2024-12-28', '2015-05-01', null, null, null, '项目经理', '203', '204', '204', null, '2', null, null, '0', '1', null, null, null, null, '0', null, null, null, null, '0', '2485.0d', '43344.0h', '2532.0d', null, null, null, null, null, null, null, null, null, null, '0', null, null, null, '0', '0', '1');
INSERT INTO `plan` VALUES ('1840', '1839', 'plan1464674124308', 'PRJ2015619133005', 'B2015-0727', 'plan1464674124309', null, '项目里程碑', '2015-05-01', '2016-03-30', '2015-05-01', null, null, null, '项目经理', '203', '204', '204', null, '2', null, null, '0', '2', null, null, null, null, '0', null, null, null, null, '0', '138.0d', '0.0h', '249.0d', null, null, null, null, null, null, null, null, null, null, '0', null, null, null, '0', '0', '1.1');
INSERT INTO `plan` VALUES ('1841', '1840', 'plan1464674124309', 'PRJ2015619133005', 'B2015-0727', 'package1464674124309', null, '完成首飞保障工作', '2015-05-01', '2015-10-30', '2015-05-01', null, null, null, '我是组长', '202', '203', '203', null, '2', null, null, '1', '3', null, null, null, null, '0', null, null, null, null, '0', '138.0d', '0.0h', '138.0d', null, null, null, null, null, null, null, null, null, null, '0', null, null, null, '0', '0', '1.1.1');
INSERT INTO `plan` VALUES ('1842', '1839', 'plan1464674124308', 'PRJ2015619133005', 'B2015-0727', 'plan1464674124310', null, '项目管理', '2015-05-01', '2024-10-24', '2015-05-01', null, null, null, '项目经理', '203', '204', '204', null, '2', null, null, '0', '2', null, null, null, null, '0', null, null, null, null, '0', '2408.0d', '43344.0h', '2485.0d', null, null, null, null, null, null, null, null, null, null, '0', null, null, null, '0', '0', '1.2');
INSERT INTO `plan` VALUES ('1843', '1842', 'plan1464674124310', 'PRJ2015619133005', 'B2015-0727', 'package1464674124311', null, '项目计划管理', '2015-05-01', '2024-07-09', '2015-05-01', null, null, null, '我是组长', '202', '203', '203', null, '2', null, null, '1', '3', null, null, null, null, '0', null, null, null, null, '0', '2408.0d', '19264.0h', '2408.0d', null, null, null, null, null, null, null, null, null, null, '0', null, null, null, '0', '0', '1.2.1');
INSERT INTO `plan` VALUES ('1844', '1842', 'plan1464674124310', 'PRJ2015619133005', 'B2015-0727', 'package1464674124311', null, '项目范围管理', '2015-05-01', '2016-04-26', '2015-05-01', null, null, null, '我是组长', '202', '203', '203', null, '2', null, null, '1', '3', null, null, null, null, '0', null, null, null, null, '0', '268.0d', '0.0h', '268.0d', null, null, null, null, null, null, null, null, null, null, '0', null, null, null, '0', '0', '1.2.2');
INSERT INTO `plan` VALUES ('1845', '1842', 'plan1464674124310', 'PRJ2015619133005', 'B2015-0727', 'package1464674124312', null, '项目团队管理', '2015-05-01', '2016-04-18', '2015-05-01', null, null, null, '我是组长', '202', '203', '203', null, '2', null, null, '1', '3', null, null, null, null, '0', null, null, null, null, '0', '262.0d', '0.0h', '262.0d', null, null, null, null, null, null, null, null, null, null, '0', null, null, null, '0', '0', '1.2.3');
INSERT INTO `plan` VALUES ('1846', '1842', 'plan1464674124310', 'PRJ2015619133005', 'B2015-0727', 'package1464674124313', null, '项目经费管理', '2015-05-01', '2015-05-01', '2015-05-01', null, null, null, '我是组长', '202', '203', '203', null, '2', null, null, '1', '3', null, null, null, null, '0', null, null, null, null, '0', '1.0d', '8.0h', '1.0d', null, null, null, null, null, null, null, null, null, null, '0', null, null, null, '0', '0', '1.2.4');
INSERT INTO `plan` VALUES ('1847', '1842', 'plan1464674124310', 'PRJ2015619133005', 'B2015-0727', 'package1464674124313', null, '项目沟通管理', '2015-05-01', '2016-04-18', '2015-05-01', null, null, null, '我是组长', '202', '203', '203', null, '2', null, null, '1', '3', null, null, null, null, '0', null, null, null, null, '0', '262.0d', '2096.0h', '262.0d', null, null, null, null, null, null, null, null, null, null, '0', null, null, null, '0', '0', '1.2.5');
INSERT INTO `plan` VALUES ('1848', '1842', 'plan1464674124310', 'PRJ2015619133005', 'B2015-0727', 'package1464674124314', null, '项目风险管理', '2015-05-01', '2016-04-18', '2015-05-01', null, null, null, '我是组长', '202', '203', '203', null, '2', null, null, '1', '3', null, null, null, null, '0', null, null, null, null, '0', '262.0d', '2096.0h', '262.0d', null, null, null, null, null, null, null, null, null, null, '0', null, null, null, '0', '0', '1.2.6');
INSERT INTO `plan` VALUES ('1849', '1839', 'plan1464674124308', 'PRJ2015619133005', 'B2015-0727', 'package1464674124315', null, '工程开发', '2015-05-01', '2016-05-05', '2015-05-01', null, null, null, '项目经理', '203', '203', '203', null, '2', null, null, '1', '2', null, null, null, null, '0', null, null, null, null, '0', '275.0d', '0.0h', '275.0d', null, null, null, null, null, null, null, null, null, null, '0', null, null, null, '0', '0', '1.3');
INSERT INTO `plan` VALUES ('1850', '1769', 'plan1437994128347', 'PRJ2015613360777', 'A2015-0727', 'package1464674307747', null, 'wwww', '2016-05-31', '2016-07-30', null, null, null, null, '我是组长', '202', '203', '204', null, '1', '0', null, '1', '3', null, '0', '0', '1', '0', null, null, null, '0', '0', null, '12', '21', null, null, null, null, null, null, null, '测试部门', null, null, '0', null, null, null, '0', '0', null);
INSERT INTO `plan` VALUES ('1851', '1771', 'plan1437994128350', 'PRJ2015613360777', 'A2015-0727', 'package1463993665957', null, '123', '2016-05-23', '2016-05-13', null, null, null, null, '组员一', 'E01', '203', '204', null, '1', '0', null, '1', '3', null, '0', '0', '1', '0', null, null, null, '0', '0', null, '123', '123', null, null, null, null, null, null, null, '测试部门', '123', '软件组', '123', '12', '32', '213', '123', '0', null);
INSERT INTO `plan` VALUES ('1852', '1774', 'package1437994128356', 'PRJ2015613360777', 'A2015-0727', 'task1463994666642', '', '项目团队管理', '2015-10-27', '2015-10-28', '2015-10-27', null, '', '', '项目经理', '203', '203', '202', '', '1', '0', '', '1', '4', '', '0', '0', '1', '0', '', '0', '0', '0', '0', '-208', '0.0h', '262.0d', null, null, '', '', 'ttt1', '100', '', '测试部门', '130', '技术组', '0', '', '', '', '0', '1', '1.2.2.1');

-- ----------------------------
-- Table structure for planoutput
-- ----------------------------
DROP TABLE IF EXISTS `planoutput`;
CREATE TABLE `planoutput` (
  `PlanOutputCode` int(32) NOT NULL AUTO_INCREMENT,
  `FilePath` varchar(512) NOT NULL,
  `DeleteMark` tinyint(1) NOT NULL,
  `TaskCode` varchar(255) NOT NULL,
  `FileName` varchar(512) NOT NULL,
  `UUID` varchar(64) NOT NULL,
  `UploadDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`PlanOutputCode`),
  KEY `pcFK` (`TaskCode`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of planoutput
-- ----------------------------
INSERT INTO `planoutput` VALUES ('17', 'F:\\Program Files\\java\\workplace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp1\\wtpwebapps\\615Project\\uploads\\b9e1406b-3c81-41a0-a8e2-442944b1c2e6-工作计划模板.mpp', '0', 'action1437987697204', '工作计划模板.mpp', 'b9e1406b-3c81-41a0-a8e2-442944b1c2e6', '2015-07-27 17:03:46');
INSERT INTO `planoutput` VALUES ('18', 'F:\\Program Files\\java\\workplace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp1\\wtpwebapps\\615Project\\uploads\\572cf1d4-2563-4e9a-865f-c3f260bf9959-工作计划模板.mpp', '0', 'action1437988111540', '工作计划模板.mpp', '572cf1d4-2563-4e9a-865f-c3f260bf9959', '2015-07-27 17:12:34');
INSERT INTO `planoutput` VALUES ('19', 'F:\\Program Files\\java\\workplace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp1\\wtpwebapps\\615Project\\uploads\\965347ba-a8e4-4caa-94c6-a505ad4fb2ce-工作计划模板.mpp', '0', 'action1437990295353', '工作计划模板.mpp', '965347ba-a8e4-4caa-94c6-a505ad4fb2ce', '2015-07-27 17:48:16');
INSERT INTO `planoutput` VALUES ('20', 'F:\\Program Files\\java\\workplace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp1\\wtpwebapps\\615Project\\uploads\\3e16a517-56fe-40ef-8396-1ca3e13ca9c8-工作计划模板.mpp', '0', 'action1437993523391', '工作计划模板.mpp', '3e16a517-56fe-40ef-8396-1ca3e13ca9c8', '2015-07-27 18:39:44');

-- ----------------------------
-- Table structure for prjtype
-- ----------------------------
DROP TABLE IF EXISTS `prjtype`;
CREATE TABLE `prjtype` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of prjtype
-- ----------------------------
INSERT INTO `prjtype` VALUES ('1', '型号项目');
INSERT INTO `prjtype` VALUES ('2', '市场项目');
INSERT INTO `prjtype` VALUES ('3', '预研项目');
INSERT INTO `prjtype` VALUES ('4', '内部项目');

-- ----------------------------
-- Table structure for project
-- ----------------------------
DROP TABLE IF EXISTS `project`;
CREATE TABLE `project` (
  `ProjectId` varchar(255) NOT NULL,
  `ProjectName` varchar(30) DEFAULT NULL,
  `DeleteMark` tinyint(1) DEFAULT NULL,
  `StartDate` date DEFAULT NULL,
  `EndDate` date DEFAULT NULL,
  `PrjShortName` varchar(30) DEFAULT NULL,
  `PrjTypeId` int(11) DEFAULT NULL,
  `PrjType` varchar(30) DEFAULT NULL,
  `PrjSubId` varchar(30) DEFAULT NULL,
  `ContractId` varchar(30) DEFAULT NULL,
  `InBudget` varchar(30) DEFAULT NULL,
  `OutBudget` varchar(30) DEFAULT NULL,
  `CreatorID` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`ProjectId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of project
-- ----------------------------
INSERT INTO `project` VALUES ('PRJ2015613360777', 'A2015-0727', '0', '2015-07-27', '2015-08-31', 'SADASD', '3', '预研项目', 'ASDFSADF', 'ASDFASDF', '3434', '3434', 'D01');
INSERT INTO `project` VALUES ('PRJ2015614994576', 'C20156-0727', '0', '2015-07-27', '2015-08-31', 'SDFSDF', '1', '类型项目', 'DFSDF', 'SDFDSF', '1225', '1225', 'D01');
INSERT INTO `project` VALUES ('PRJ2015619133005', 'B2015-0727', '0', '2015-07-27', '2015-08-30', 'ASDFASDF', '3', '预研项目', 'ASDFASDF', 'ASDFASDF', '3434', '343', 'D01');
INSERT INTO `project` VALUES ('PRJ2015626750160', 'C2015-0728', '0', '2015-07-28', '2015-09-30', 'ASDFAS', '2', '市场项目', 'ASDFSAD', 'FASDFASDF', '33434', '3434', 'D01');
INSERT INTO `project` VALUES ('PRJ2016418468616', 'test3', '0', '2016-05-01', '2016-05-31', '123', '2', '市场项目', '312', '123', '123', '12', null);
INSERT INTO `project` VALUES ('PRJ2016429597157', 'wqe', '0', '2016-05-01', '2016-05-20', 'qwe', '2', '市场项目', 'qw', 'eq', '12', '31', null);
INSERT INTO `project` VALUES ('PRJ2016429621936', 'wqe', '0', '2016-05-01', '2016-05-20', 'qwe', '2', '市场项目', 'qw', 'eq', '12', '31', null);
INSERT INTO `project` VALUES ('PRJ2016429622903', 'wqe', '0', '2016-05-01', '2016-05-20', 'qwe', '2', '市场项目', 'qw', 'eq', '12', '31', null);
INSERT INTO `project` VALUES ('PRJ2016429623073', 'wqe', '0', '2016-05-01', '2016-05-20', 'qwe', '2', '市场项目', 'qw', 'eq', '12', '31', null);
INSERT INTO `project` VALUES ('PRJ2016429623232', 'wqe', '0', '2016-05-01', '2016-05-20', 'qwe', '2', '市场项目', 'qw', 'eq', '12', '31', null);
INSERT INTO `project` VALUES ('PRJ2016429623379', 'wqe', '0', '2016-05-01', '2016-05-20', 'qwe', '2', '市场项目', 'qw', 'eq', '12', '31', null);
INSERT INTO `project` VALUES ('PRJ2016429623544', 'wqe', '0', '2016-05-01', '2016-05-20', 'qwe', '2', '市场项目', 'qw', 'eq', '12', '31', null);
INSERT INTO `project` VALUES ('PRJ2016429633797', 'wqe', '0', '2016-05-01', '2016-05-20', 'qwe', '2', '市场项目', 'qw', 'eq', '12', '31', null);
INSERT INTO `project` VALUES ('PRJ2016451265786', 'test1', '0', '2016-05-13', '2016-05-30', 't1', '2', '市场项目', '12345', '43668', '222', '222', null);
INSERT INTO `project` VALUES ('PRJ2016451905136', 'test1', '0', '2016-05-13', '2016-05-29', 't1', '2', '市场项目', '12345', '43668', '123', '123', null);
INSERT INTO `project` VALUES ('PRJ2016451919145', 'test1', '0', '2016-05-13', '2016-05-29', 't1', '2', '市场项目', '12345', '43668', '123', '123', null);
INSERT INTO `project` VALUES ('PRJ2016452175049', 'test1', '0', '2016-05-13', '2016-05-29', 't1', '2', '市场项目', '12345', '43668', '123', '123', null);
INSERT INTO `project` VALUES ('PRJ2016453793782', 'test2', '0', '2016-05-20', '2016-05-30', '312', '2', '市场项目', '123', '123', '123', '3213', null);
INSERT INTO `project` VALUES ('PRJ2016504252635', '20160619', '0', '2016-06-19', '2016-06-30', 'xxx', '1', '类型项目', 'xxx', 'xxx', '33', '333', 'D01');
INSERT INTO `project` VALUES ('PRJ2016506734062', 'test1234', '0', '2016-06-16', '2016-06-22', '123', '1', '类型项目', '12345', '21341', '900', '123', null);
INSERT INTO `project` VALUES ('PRJ2016507395093', 'test999', '0', '2016-06-01', '2016-06-25', '123', '2', '市场项目', '312', '123', '123', '213', null);
INSERT INTO `project` VALUES ('PRJ2016507700915', 'test_prj', '0', '2016-06-28', '2016-06-30', 'ttt', '1', '类型项目', 'sss', 'ss', '1', '1', 'D01');
INSERT INTO `project` VALUES ('PRJ2016507947108', 'tttttt', '0', '2016-06-15', '2016-06-30', 'wq', '2', '市场项目', '321', '213', '123', '213', 'D01');

-- ----------------------------
-- Table structure for remind
-- ----------------------------
DROP TABLE IF EXISTS `remind`;
CREATE TABLE `remind` (
  `RemindId` int(32) NOT NULL AUTO_INCREMENT,
  `RemindType` varchar(255) DEFAULT NULL,
  `RemindContent` varchar(255) DEFAULT NULL,
  `RemindSource` varchar(255) DEFAULT NULL,
  `Deadline` date DEFAULT NULL,
  `RemindDate` date DEFAULT NULL,
  `EmployeeId` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`RemindId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of remind
-- ----------------------------

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `RoleKey` int(16) NOT NULL AUTO_INCREMENT,
  `RoleId` int(16) DEFAULT NULL,
  `EmployeeId` varchar(255) DEFAULT NULL,
  `GroupId` int(16) DEFAULT NULL,
  `DeleteMark` tinyint(1) DEFAULT '0',
  `RoleName` varchar(255) DEFAULT NULL,
  `EmployeeName` varchar(255) DEFAULT NULL,
  `GroupName` varchar(255) DEFAULT NULL,
  `ProjectId` varchar(255) DEFAULT NULL,
  `ProjectName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`RoleKey`)
) ENGINE=InnoDB AUTO_INCREMENT=548 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('406', '8', '008', '47', '0', '技术负责人', '技术负责人', '默认', 'C919', 'C919');
INSERT INTO `role` VALUES ('407', '9', '009', '47', '0', '质量负责人', '质量负责人', '默认', 'C919', 'C919');
INSERT INTO `role` VALUES ('408', '10', '010', '47', '0', 'MRB', 'MRB', '默认', 'C919', 'C919');
INSERT INTO `role` VALUES ('409', '12', '012', '47', '0', '元数据管理员', '元数据管理员', '默认', 'C919', 'C919');
INSERT INTO `role` VALUES ('410', '16', '016', '47', '0', '部门主管', '部门主管', '默认', 'C919', 'C919');
INSERT INTO `role` VALUES ('411', '17', 'I01', null, '0', '所领导', '所领导一', null, 'PRJ2015614994576', 'C20156-0727');
INSERT INTO `role` VALUES ('412', '16', 'D01', null, '0', '部门领导', '部门领导一', null, 'PRJ2015614994576', 'C20156-0727');
INSERT INTO `role` VALUES ('413', '15', 'P01', null, '0', '项目领导', '项目领导一', null, 'PRJ2015614994576', 'C20156-0727');
INSERT INTO `role` VALUES ('414', '3', 'M01', null, '0', '项目经理', '项目经理一', null, 'PRJ2015614994576', 'C20156-0727');
INSERT INTO `role` VALUES ('415', '2', '008', '110', '0', '组长', '技术负责人', '软件组', 'PRJ2015614994576', 'C20156-0727');
INSERT INTO `role` VALUES ('416', '1', '009', '111', '0', '组员', '质量负责人', '硬件组', 'PRJ2015614994576', 'C20156-0727');
INSERT INTO `role` VALUES ('417', '1', '009', '110', '0', '组员', '质量负责人', '软件组', 'PRJ2015614994576', 'C20156-0727');
INSERT INTO `role` VALUES ('418', '1', '010', '110', '0', '组员', 'MRB', '软件组', 'PRJ2015614994576', 'C20156-0727');
INSERT INTO `role` VALUES ('419', '1', '200', '110', '0', '组员', '我是组员', '软件组', 'PRJ2015614994576', 'C20156-0727');
INSERT INTO `role` VALUES ('420', '1', '008', '111', '0', '组员', '技术负责人', '硬件组', 'PRJ2015614994576', 'C20156-0727');
INSERT INTO `role` VALUES ('421', '1', '010', '111', '1', '组员', 'MRB', '硬件组', 'PRJ2015614994576', 'C20156-0727');
INSERT INTO `role` VALUES ('422', '2', '200', '111', '0', '组长', '我是组员', '硬件组', 'PRJ2015614994576', 'C20156-0727');
INSERT INTO `role` VALUES ('423', '2', '010', '112', '0', '组长', 'MRB', '系统组', 'PRJ2015614994576', 'C20156-0727');
INSERT INTO `role` VALUES ('424', '1', '010', '111', '0', '组员', 'MRB', '硬件组', 'PRJ2015614994576', 'C20156-0727');
INSERT INTO `role` VALUES ('425', '2', '016', '113', '0', '组长', '部门主管', 'xxx', 'PRJ2015614994576', 'C20156-0727');
INSERT INTO `role` VALUES ('426', '2', '008', '114', '0', '组长', '技术负责人', 'sss', 'PRJ2015614994576', 'C20156-0727');
INSERT INTO `role` VALUES ('427', '2', '016', '115', '0', '组长', '部门主管', 'sss', 'PRJ2015614994576', 'C20156-0727');
INSERT INTO `role` VALUES ('428', '2', '016', '116', '0', '组长', '部门主管', '系统组', 'PRJ2015614994576', 'C20156-0727');
INSERT INTO `role` VALUES ('429', '2', '202', '117', '0', '组长', '我是组长', 'OP组', 'PRJ2015614994576', 'C20156-0727');
INSERT INTO `role` VALUES ('430', '2', 'G01', '118', '0', '组长', '组长一', '222', 'PRJ2015614994576', 'C20156-0727');
INSERT INTO `role` VALUES ('431', '2', '010', '119', '0', '组长', 'MRB', 'sss', 'PRJ2015614994576', 'C20156-0727');
INSERT INTO `role` VALUES ('432', '2', '009', '120', '0', '组长', '质量负责人', 'ss2', 'PRJ2015614994576', 'C20156-0727');
INSERT INTO `role` VALUES ('433', '2', 'E01', '121', '0', '组长', '组员一', '666', 'PRJ2015614994576', 'C20156-0727');
INSERT INTO `role` VALUES ('434', '2', '009', '122', '0', '组长', '质量负责人', 'ss', 'PRJ2015614994576', 'C20156-0727');
INSERT INTO `role` VALUES ('435', '17', 'I01', null, '0', '所领导', '所领导一', null, 'PRJ2015619133005', 'B2015-0727');
INSERT INTO `role` VALUES ('436', '16', 'D01', null, '0', '部门领导', '部门领导一', null, 'PRJ2015619133005', 'B2015-0727');
INSERT INTO `role` VALUES ('437', '15', '204', null, '0', '项目领导', '我是项目领导', null, 'PRJ2015619133005', 'B2015-0727');
INSERT INTO `role` VALUES ('438', '3', '203', '47', '0', '项目经理', '项目经理', null, 'PRJ2015619133005', 'B2015-0727');
INSERT INTO `role` VALUES ('439', '2', '202', '123', '0', '组长', '我是组长', '软件组', 'PRJ2015619133005', 'B2015-0727');
INSERT INTO `role` VALUES ('440', '1', '200', '123', '0', '组员', '我是组员', '软件组', 'PRJ2015619133005', 'B2015-0727');
INSERT INTO `role` VALUES ('441', '1', 'G01', '123', '1', '组员', '组长一', '软件组', 'PRJ2015619133005', 'B2015-0727');
INSERT INTO `role` VALUES ('442', '1', 'E01', '123', '0', '组员', '组员一', '软件组', 'PRJ2015619133005', 'B2015-0727');
INSERT INTO `role` VALUES ('443', '1', 'E02', '123', '0', '组员', '组员二', '软件组', 'PRJ2015619133005', 'B2015-0727');
INSERT INTO `role` VALUES ('444', '17', 'I01', null, '0', '所领导', '所领导一', null, 'PRJ2015613360777', 'A2015-0727');
INSERT INTO `role` VALUES ('445', '16', 'D01', null, '0', '部门领导', '部门领导一', null, 'PRJ2015613360777', 'A2015-0727');
INSERT INTO `role` VALUES ('446', '15', '204', null, '0', '项目领导', '我是项目领导', null, 'PRJ2015613360777', 'A2015-0727');
INSERT INTO `role` VALUES ('447', '3', '203', null, '0', '项目经理', '项目经理', null, 'PRJ2015613360777', 'A2015-0727');
INSERT INTO `role` VALUES ('448', '2', '202', '124', '0', '组长', '我是组长', '软件组', 'PRJ2015613360777', 'A2015-0727');
INSERT INTO `role` VALUES ('449', '2', '202', '125', '0', '组长', '我是组长', '硬件组', 'PRJ2015613360777', 'A2015-0727');
INSERT INTO `role` VALUES ('450', '1', '200', '124', '1', '组员', '我是组员', '软件组', 'PRJ2015613360777', 'A2015-0727');
INSERT INTO `role` VALUES ('451', '1', 'E01', '124', '0', '组员', '组员一', '软件组', 'PRJ2015613360777', 'A2015-0727');
INSERT INTO `role` VALUES ('452', '1', 'E02', '124', '0', '组员', '组员二', '软件组', 'PRJ2015613360777', 'A2015-0727');
INSERT INTO `role` VALUES ('453', '17', 'I01', null, '0', '所领导', '所领导一', null, 'PRJ2015626750160', 'C2015-0728');
INSERT INTO `role` VALUES ('454', '16', 'D01', null, '0', '部门领导', '部门领导一', null, 'PRJ2015626750160', 'C2015-0728');
INSERT INTO `role` VALUES ('455', '15', '204', null, '0', '项目领导', '我是项目领导', null, 'PRJ2015626750160', 'C2015-0728');
INSERT INTO `role` VALUES ('456', '3', '203', null, '0', '项目经理', '项目经理', null, 'PRJ2015626750160', 'C2015-0728');
INSERT INTO `role` VALUES ('457', '2', '202', '126', '0', '组长', '我是组长', '软件组', 'PRJ2015626750160', 'C2015-0728');
INSERT INTO `role` VALUES ('458', '2', '202', '127', '0', '组长', '我是组长', '硬件组', 'PRJ2015626750160', 'C2015-0728');
INSERT INTO `role` VALUES ('459', '1', '200', '126', '0', '组员', '我是组员', '软件组', 'PRJ2015626750160', 'C2015-0728');
INSERT INTO `role` VALUES ('460', '1', 'E01', '126', '0', '组员', '组员一', '软件组', 'PRJ2015626750160', 'C2015-0728');
INSERT INTO `role` VALUES ('461', '1', 'E02', '126', '0', '组员', '组员二', '软件组', 'PRJ2015626750160', 'C2015-0728');
INSERT INTO `role` VALUES ('462', '17', 'I01', null, '0', '所领导', '所领导一', null, 'PRJ2016452175049', 'test1');
INSERT INTO `role` VALUES ('463', '16', 'D01', null, '0', '部门领导', '部门领导一', null, 'PRJ2016452175049', 'test1');
INSERT INTO `role` VALUES ('464', '15', '204', null, '0', '项目领导', '我是项目领导', null, 'PRJ2016452175049', 'test1');
INSERT INTO `role` VALUES ('465', '3', '203', null, '0', '项目经理', '项目经理', null, 'PRJ2016452175049', 'test1');
INSERT INTO `role` VALUES ('466', '2', '008', '128', '0', '组长', '技术负责人', '技术组', 'PRJ2016452175049', 'test1');
INSERT INTO `role` VALUES ('467', '1', 'adsfasdf15', '128', '0', '组员', 'adsadsf15', '技术组', 'PRJ2016452175049', 'test1');
INSERT INTO `role` VALUES ('468', '1', 'asdfadsf16', '128', '0', '组员', 'adsfads16', '技术组', 'PRJ2016452175049', 'test1');
INSERT INTO `role` VALUES ('469', '1', 'asdfasdf13', '128', '0', '组员', 'adsfads13', '技术组', 'PRJ2016452175049', 'test1');
INSERT INTO `role` VALUES ('470', '1', 'adsafds17', '128', '0', '组员', 'adsfasdf17', '技术组', 'PRJ2016452175049', 'test1');
INSERT INTO `role` VALUES ('471', '1', 'asdasdf14', '128', '0', '组员', 'adsfadsf14', '技术组', 'PRJ2016452175049', 'test1');
INSERT INTO `role` VALUES ('500', '7', 'MVP', null, '0', null, null, null, null, null);
INSERT INTO `role` VALUES ('501', '17', 'I01', null, '0', '所领导', '所领导一', null, 'PRJ2016453793782', 'test2');
INSERT INTO `role` VALUES ('502', '16', 'D01', null, '0', '部门领导', '部门领导一', null, 'PRJ2016453793782', 'test2');
INSERT INTO `role` VALUES ('503', '15', '204', null, '0', '项目领导', '我是项目领导', null, 'PRJ2016453793782', 'test2');
INSERT INTO `role` VALUES ('504', '3', '203', null, '0', '项目经理', '项目经理', null, 'PRJ2016453793782', 'test2');
INSERT INTO `role` VALUES ('505', '2', 'E01', '129', '0', '组长', '组员一', 'werwe', 'PRJ2015613360777', 'A2015-0727');
INSERT INTO `role` VALUES ('506', '1', 'asdfasdfasdf19', '129', '0', '组员', 'asdfadsf19', 'werwe', 'PRJ2015613360777', 'A2015-0727');
INSERT INTO `role` VALUES ('507', '1', 'asdfasdfasdf18', '129', '1', '组员', 'asdfadsf18', 'werwe', 'PRJ2015613360777', 'A2015-0727');
INSERT INTO `role` VALUES ('508', '1', 'asdfasdf13', '129', '0', '组员', 'adsfads13', 'werwe', 'PRJ2015613360777', 'A2015-0727');
INSERT INTO `role` VALUES ('509', '17', 'I01', null, '0', '所领导', '所领导一', null, 'PRJ2016418468616', 'test3');
INSERT INTO `role` VALUES ('510', '16', 'D01', null, '0', '部门领导', '部门领导一', null, 'PRJ2016418468616', 'test3');
INSERT INTO `role` VALUES ('511', '15', '204', null, '0', '项目领导', '我是项目领导', null, 'PRJ2016418468616', 'test3');
INSERT INTO `role` VALUES ('512', '3', '203', null, '0', '项目经理', '项目经理', null, 'PRJ2016418468616', 'test3');
INSERT INTO `role` VALUES ('513', '2', '202', '130', '0', '组长', '我是组长', '技术组', 'PRJ2016418468616', 'test3');
INSERT INTO `role` VALUES ('514', '1', '009', '130', '0', '组员', '质量负责人', '技术组', 'PRJ2016418468616', 'test3');
INSERT INTO `role` VALUES ('515', '1', '008', '130', '0', '组员', '技术负责人', '技术组', 'PRJ2016418468616', 'test3');
INSERT INTO `role` VALUES ('516', '2', '008', '131', '0', '组长', '技术负责人', 'qwe', 'PRJ2016452175049', 'test1');
INSERT INTO `role` VALUES ('517', '17', '008', null, '0', '所领导', '技术负责人', null, 'PRJ2016504252635', '20160619');
INSERT INTO `role` VALUES ('518', '16', '009', null, '0', '部门领导', '质量负责人', null, 'PRJ2016504252635', '20160619');
INSERT INTO `role` VALUES ('519', '15', '010', null, '0', '项目领导', 'MRB', null, 'PRJ2016504252635', '20160619');
INSERT INTO `role` VALUES ('520', '3', '012', null, '0', '项目经理', '元数据管理员', null, 'PRJ2016504252635', '20160619');
INSERT INTO `role` VALUES ('521', '17', 'I01', null, '0', '所领导', '所领导一', null, 'PRJ2016506734062', 'test1234');
INSERT INTO `role` VALUES ('522', '16', 'D01', null, '0', '部门领导', '部门领导一', null, 'PRJ2016506734062', 'test1234');
INSERT INTO `role` VALUES ('523', '15', '204', null, '0', '项目领导', '我是项目领导', null, 'PRJ2016506734062', 'test1234');
INSERT INTO `role` VALUES ('524', '3', '203', null, '0', '项目经理', '项目经理', null, 'PRJ2016506734062', 'test1234');
INSERT INTO `role` VALUES ('525', '2', '203', '132', '0', '组长', '项目经理', 'qwrqw', 'PRJ2016506734062', 'test1234');
INSERT INTO `role` VALUES ('526', '1', '202', '132', '1', '组员', '我是组长', 'qwrqw', 'PRJ2016506734062', 'test1234');
INSERT INTO `role` VALUES ('527', '1', '200', '132', '1', '组员', '我是组员', 'qwrqw', 'PRJ2016506734062', 'test1234');
INSERT INTO `role` VALUES ('528', '1', '210', '132', '0', '组员', '张新', 'qwrqw', 'PRJ2016506734062', 'test1234');
INSERT INTO `role` VALUES ('529', '17', 'I01', null, '0', '所领导', '所领导一', null, 'PRJ2016507395093', 'test999');
INSERT INTO `role` VALUES ('530', '16', 'D02', null, '0', '部门领导', '部门领导二', null, 'PRJ2016507395093', 'test999');
INSERT INTO `role` VALUES ('531', '16', 'D01', null, '0', '部门领导', '部门领导一', null, 'PRJ2016507395093', 'test999');
INSERT INTO `role` VALUES ('532', '15', 'P01', null, '0', '项目领导', '项目领导一', null, 'PRJ2016507395093', 'test999');
INSERT INTO `role` VALUES ('533', '3', 'M01', null, '0', '项目经理', '项目经理一', null, 'PRJ2016507395093', 'test999');
INSERT INTO `role` VALUES ('534', '3', 'M02', null, '0', '项目经理', '项目经理二', null, 'PRJ2016507395093', 'test999');
INSERT INTO `role` VALUES ('535', '17', 'I01', null, '0', '所领导', '所领导一', null, 'PRJ2016507700915', 'test_prj');
INSERT INTO `role` VALUES ('536', '16', 'D01', null, '0', '部门领导', '部门领导一', null, 'PRJ2016507700915', 'test_prj');
INSERT INTO `role` VALUES ('537', '15', 'P01', null, '0', '项目领导', '项目领导一', null, 'PRJ2016507700915', 'test_prj');
INSERT INTO `role` VALUES ('538', '3', 'M02', null, '0', '项目经理', '项目经理二', null, 'PRJ2016507700915', 'test_prj');
INSERT INTO `role` VALUES ('539', '17', 'I01', null, '0', '所领导', '所领导一', null, 'PRJ2016507947108', 'tttttt');
INSERT INTO `role` VALUES ('540', '16', 'D01', null, '0', '部门领导', '部门领导一', null, 'PRJ2016507947108', 'tttttt');
INSERT INTO `role` VALUES ('541', '16', 'D02', null, '0', '部门领导', '部门领导二', null, 'PRJ2016507947108', 'tttttt');
INSERT INTO `role` VALUES ('542', '15', 'P01', null, '0', '项目领导', '项目领导一', null, 'PRJ2016507947108', 'tttttt');
INSERT INTO `role` VALUES ('543', '3', 'M01', null, '0', '项目经理', '项目经理一', null, 'PRJ2016507947108', 'tttttt');
INSERT INTO `role` VALUES ('544', '3', 'M02', null, '0', '项目经理', '项目经理二', null, 'PRJ2016507947108', 'tttttt');
INSERT INTO `role` VALUES ('545', '2', '008', '135', '0', '组长', '技术负责人', 'wer', 'PRJ2016506734062', 'test1234');
INSERT INTO `role` VALUES ('546', '1', '200', '135', '0', '组员', '我是组员', 'wer', 'PRJ2016506734062', 'test1234');
INSERT INTO `role` VALUES ('547', '1', '210', '135', '0', '组员', '张新', 'wer', 'PRJ2016506734062', 'test1234');

-- ----------------------------
-- Table structure for roleinfo
-- ----------------------------
DROP TABLE IF EXISTS `roleinfo`;
CREATE TABLE `roleinfo` (
  `RoleId` int(16) NOT NULL AUTO_INCREMENT,
  `RoleName` varchar(255) DEFAULT NULL,
  `PermissionLevel` int(11) DEFAULT NULL,
  `DeleteMark` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`RoleId`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of roleinfo
-- ----------------------------
INSERT INTO `roleinfo` VALUES ('1', '组员', '4', '0');
INSERT INTO `roleinfo` VALUES ('2', '组长', '3', '0');
INSERT INTO `roleinfo` VALUES ('3', '项目经理', '2', '0');
INSERT INTO `roleinfo` VALUES ('4', '计划管理员', '5', '0');
INSERT INTO `roleinfo` VALUES ('7', '超级管理员', '1', '0');
INSERT INTO `roleinfo` VALUES ('8', '技术负责人', '4', '0');
INSERT INTO `roleinfo` VALUES ('9', '质量负责人', '4', '0');
INSERT INTO `roleinfo` VALUES ('10', 'MRB', '4', '0');
INSERT INTO `roleinfo` VALUES ('12', '元数据管理员', '4', '0');
INSERT INTO `roleinfo` VALUES ('14', '计划审核员', '4', '0');
INSERT INTO `roleinfo` VALUES ('15', '项目领导', null, '0');
INSERT INTO `roleinfo` VALUES ('16', '部门领导', null, '0');
INSERT INTO `roleinfo` VALUES ('17', '所领导', null, '0');
INSERT INTO `roleinfo` VALUES ('18', '平台管理员', null, '0');

-- ----------------------------
-- Table structure for script
-- ----------------------------
DROP TABLE IF EXISTS `script`;
CREATE TABLE `script` (
  `ScriptKey` int(11) NOT NULL AUTO_INCREMENT,
  `ScriptType` varchar(255) NOT NULL,
  `EmployeeId` varchar(255) DEFAULT NULL,
  `ScriptContent` varchar(1000) NOT NULL,
  `UUID` varchar(255) NOT NULL,
  PRIMARY KEY (`ScriptKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of script
-- ----------------------------

-- ----------------------------
-- Table structure for testlink
-- ----------------------------
DROP TABLE IF EXISTS `testlink`;
CREATE TABLE `testlink` (
  `id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of testlink
-- ----------------------------

-- ----------------------------
-- Function structure for find_child_plans_bak
-- ----------------------------
DROP FUNCTION IF EXISTS `find_child_plans_bak`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` FUNCTION `find_child_plans_bak`(`rootId` int) RETURNS varchar(1000) CHARSET utf8
BEGIN
	#Routine body goes here...
  DECLARE sTemp VARCHAR(1000);
  DECLARE sTempChd VARCHAR(1000);
  SET sTemp = '$';
  SET sTempChd =cast(rootId as CHAR);
  WHILE sTempChd is not null DO
		SET sTemp = concat(sTemp,',',sTempChd);
    SELECT group_concat(PlanKey) INTO sTempChd FROM plan where FIND_IN_SET(ParentKey,sTempChd)>0;
  END WHILE;
  RETURN sTemp;
END
;;
DELIMITER ;
