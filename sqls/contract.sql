
use testdb;

start transaction;

drop table if exists account_role_rel;
drop table if exists contract_role;
drop table if exists receivenode;
drop table if exists paynode;
drop table if exists contract;

create table contract(
	`ContractID` int auto_increment primary key,
    `CreatedUsername` varchar(128), # 创建本合同的人
    `Number` varchar(128),
    `Name` varchar(128),
    `FinancialFlow` int,
    `IsForeignContract` boolean,
    `Description` varchar(1024),
    `SubjectObjects` varchar(128),
    `SubjectObjectOther` varchar(128),
    `FundsType` int,
    `Departments` varchar(128),
    `Operator` varchar(128),
    `ProjectNumber` varchar(128),
    `BudgetNumber` varchar(128),
    `Money` varchar(128),
    `Currency` int,
    `StartDate` datetime,
    `EndDate` datetime,
    `TargetCompanyName` varchar(128),
    `ArchiveMaterials` varchar(128),
    `ArchiveMaterialOther` varchar(128),
    `PreRegisterContractManagerComments` varchar(1024),
    `PreRegisterContractManager` varchar(128),
    `PreRegisterProjectManagerComments` varchar(1024),
    `PreRegisterProjectManager` varchar(128),
    `FormalRegisterContractManagerComments` varchar(1024),
    `FormalRegisterContractManager` varchar(128),
    `FormalRegisterProjectManagerComments` varchar(1024),
    `FormalRegisterProjectManager` varchar(128),
    `State` int default 0
);

create table paynode(
	`PayNodeID` int auto_increment primary key,
    `ContractID` int,
    `Type` int,
    `ExpectedMoney` varchar(128),
    `ExpectedCurrency` int,
    `PayCondition` varchar(128),
    `PayDate` datetime,
    `PayCredential` varchar(128),
    `ActualMoney` varchar(128),
    `ActualCurrency` int,
    `PayType` int,
    `CreatedTime` datetime default now(),
    `IsCredentialFiled` boolean,
    `Composition` varchar(128),
    `ContractManagerComments` varchar(1024),
    `ContractManager` varchar(128),
    `ProjectManagerComments` varchar(1024),
    `ProjectManager` varchar(128),
    `State` int default 0,
    foreign key (`ContractID`) references contract(`ContractID`)
);

create table receivenode(
	`ReceiveNodeID` int auto_increment primary key,
    `ContractID` int,
    `Type` int,
    `ExpectedMoney` varchar(128),
    `ExpectedCurrency` int,
    `ReceiveCondition` varchar(128),
    `ReceiveDate` datetime,
    `ActualMoney` varchar(128),
    `ActualCurrency` int,
    `InvoiceState` int,
    `InvoiceTime` datetime default now(),
    `ContractManagerComments` varchar(1024),
    `ContractManager` varchar(128),
    `ProjectManagerComments` varchar(1024),
    `ProjectManager` varchar(128),
    `State` int default 0,
    foreign key (`ContractID`) references contract(`ContractID`)
);

#create table `account`(
#	`AccountID` int auto_increment primary key,
#    `Username` varchar(128) unique key,
#    `Password` varchar(128),
#    `Email` varchar(128)
#);

create table `contract_role`(
	`RoleID` int auto_increment primary key,
    `RoleName` varchar(128)
);

create table `account_role_rel`(
	`EmployeeNumber` varchar(128),
    `RoleID` int,
    foreign key (`EmployeeNumber`) references `employee`(`EmployeeNumber`),
    foreign key (`RoleID`) references `contract_role`(`RoleID`)
);

# 没有审核权限
delete from employee where EmployeeNumber='delin';
insert into employee(EmployeeNumber, LoginPassword, EmployeeEmail)
values ('delin', '123456', 'ldl434020@126.com');

# 全部权限
delete from employee where EmployeeNumber='admin';
insert into employee(EmployeeNumber, LoginPassword, EmployeeEmail)
values ('admin', '123456', 'ldl434020@126.com');

# 合同管理员
delete from employee where EmployeeNumber='ContractMng1';
delete from employee where EmployeeNumber='ContractMng2';
insert into employee(EmployeeNumber, LoginPassword, EmployeeEmail)
values ('ContractMng1', '123456', 'ldl434020@126.com');
insert into employee(EmployeeNumber, LoginPassword, EmployeeEmail)
values ('ContractMng2', '123456', 'ldl434020@126.com');

# 项目分管领导
delete from employee where EmployeeNumber='ProjectMng1';
delete from employee where EmployeeNumber='ProjectMng2';
insert into employee(EmployeeNumber, LoginPassword, EmployeeEmail)
values ('ProjectMng1', '123456', 'ldl434020@126.com');
insert into employee(EmployeeNumber, LoginPassword, EmployeeEmail)
values ('ProjectMng2', '123456', 'ldl434020@126.com');

insert into contract_role(RoleID, RoleName)
values (1, 'ROLE_CONTRACT_MANAGER'), (2, 'ROLE_PROJECT_MANAGER'), (3, 'ROLE_OPERATOR');

insert into account_role_rel(EmployeeNumber, RoleID)
values ('admin', 1), ('admin', 2),
('ContractMng1', 1), ('ContractMng2', 1),
('ProjectMng1', 2), ('ProjectMng2', 2),
('delin', 3);

commit;