-- Travel Grant Inserts
INSERT INTO Travel_Grant VALUES('7001', 'NSF', 'US Students', 1750, 'Travel and lodging');
INSERT INTO Travel_Grant VALUES('7002', 'SPEND', 'Non US Students', 1500, 'Travel and lodging');

-- Workshop Inserts
INSERT INTO	Workshop VALUES('1001', 'Cloud DB', '2023-08-28', '08:30:00', '17:00:00', 'Junior Ballroom D');
INSERT INTO	Workshop VALUES('1002', 'TPCTC', '2023-08-28', '8:30:00', '17:00:00', 'Junior ballroom AB');
INSERT INTO	Workshop VALUES('1003', 'Industry Challenge', '2023-09-01', '10:00:00', '17:20:00', 'Finback');
INSERT INTO	Workshop VALUES('1004', 'QDSM', '2023-09-01', '10:30:00', '16:00:00', 'Junior Ballroom C');

-- Workshop topic inserts
INSERT INTO ws_topic VALUES('multitenancy', '1001');
INSERT INTO ws_topic VALUES('autonomous databases', '1001');
INSERT INTO ws_topic VALUES('resource usage prediction', '1001');
INSERT INTO ws_topic VALUES('disaggregation', '1001');
INSERT INTO ws_topic VALUES('cloudDBA', '1001');
INSERT INTO ws_topic VALUES('AI', '1002');
INSERT INTO ws_topic VALUES('Big Data Analytics', '1002');
INSERT INTO ws_topic VALUES('cloud computing', '1002');
INSERT INTO ws_topic VALUES('blockchain', '1002');
INSERT INTO ws_topic VALUES('sustainability', '1002');
INSERT INTO ws_topic VALUES('hybrid workloads', '1002');
INSERT INTO ws_topic VALUES('Universal Hardware Accelerated Relational Execution Engines', '1003');
INSERT INTO ws_topic VALUES('Accelerator Engine Extensions for Cloud CPUs', '1003');
INSERT INTO ws_topic VALUES('Declarative Pipeline Optimization', '1003');
INSERT INTO ws_topic VALUES('SQL Rewrite', '1003');
INSERT INTO ws_topic VALUES('Natural Language to SQL (NL2SQL)', '1003');
INSERT INTO ws_topic VALUES('Multi-tenant Computing Acceleration in consistent memory access CPU-GPU architecture (e.g., Grace-Hopper', '1003');
INSERT INTO ws_topic VALUES('Multi-Tenant Database Systems in Disaggregated Architecture', '1003');
INSERT INTO ws_topic VALUES('Quantum Computing for problems related to Data Science and Management', '1004');
INSERT INTO ws_topic VALUES('Quantum Data Science', '1004');
INSERT INTO ws_topic VALUES('Quantum Data Management', '1004');
INSERT INTO ws_topic VALUES('Quantum Machine Learning', '1004');
INSERT INTO ws_topic VALUES('Quantum Algorithms with applications in Quantum Data Science and Management', '1004');
INSERT INTO ws_topic VALUES('Quantum Software Tools for Quantum Data Science and Management', '1004');

-- Committee Inserts
INSERT INTO Committee VALUES('2001', 'QDSM Program Commitee', '1004');
INSERT INTO Committee VALUES('2002', 'TPCTC Program Commitee', '1002');

-- Session Inserts 
INSERT INTO Session VALUES('4001', 'breakfast', '2023-08-28', 'junior Ballroom Foyers', '7:30:00', '8:30:00');
INSERT INTO Session VALUES('4002', 'breakfast', '2023-08-28', 'pavillion', '7:30:00', '8:30:00');
INSERT INTO Session VALUES('4003', 'breakfast', '2023-08-29', 'junior ballroom foyers', '7:30:00', '8:30:00');
INSERT INTO Session VALUES('4004', 'breakfast', '2023-08-29', 'pavillion', '7:30:00', '8:30:00');
INSERT INTO Session VALUES('4005', 'breakfast', '2023-08-29', 'grand ballroom foyers', '7:30:00', '8:30:00');
INSERT INTO Session VALUES('4006', 'coffee break', '2023-08-29', 'pavilion', '10:00:00', '10:30:00');
INSERT INTO Session VALUES('4007', 'coffee break', '2023-08-29', 'junior ballroom foyers', '10:00:00', '10:30:00');
INSERT INTO Session VALUES('4008', 'exhibits', '2023-08-29', 'pavilion ballroom', '10:00:00','17:30:00');
INSERT INTO Session VALUES('4009', 'VLDB Endowment Report', '2023-08-31', 'ballroom', '8:30:00', '10:00:00');
INSERT INTO Session VALUES('4010', 'Tutorial', '2023-08-31', 'port mcneil', '15:30:00', '17:00:00');
INSERT INTO Session VALUES('4011', 'Panel', '2023-08-29', 'grand ballroom', '15:30:00', '17:00:00');
INSERT INTO Session VALUES('4012', 'paper', '2023-08-29', 'grand ballroom', '10:30:00', '12:00:00');
INSERT INTO Session VALUES('4013', 'paper', '2023-08-29','gulf island BC', '15:30:00', '17:00:00');
INSERT INTO Session VALUES('4014', 'paper', '2023-08-30', 'junior ballroom AB', '10:30:00', '12:00:00');
INSERT INTO Session VALUES('4015', 'paper', '2023-08-31', 'parksville', '10:30:00', '12:00:00');
INSERT INTO Session VALUES('4016', 'paper', '2023-08-31','finback', '13:30:00', '15:00:00');
INSERT INTO Session VALUES('4017', 'paper', '2023-08-29','junior ballroom AB', '10:30:00', '12:00:00');
INSERT INTO Session VALUES('4018', 'paper', '2023-08-30','gulf islands BC', '10:30:00', '12:00:00');
INSERT INTO Session VALUES('4019', 'paper', '2023-08-31','parksville', '13:30:00', '15:00:00');
INSERT INTO Session VALUES('4020', 'paper', '2023-08-30','parksville', '15:30:00', '17:00:00');
INSERT INTO Session VALUES('4021', 'paper', '2023-08-31','orca', '10:30:00', '12:00:00');
INSERT INTO Session VALUES('4022', 'paper', '2023-08-30','parksville', '15:30:00', '17:00:00');
INSERT INTO Session VALUES('4023', 'paper', '2023-08-31','grand ballroom', '15:30:00', '17:00:00');
INSERT INTO Session VALUES('4024', 'paper', '2023-08-30','grand ballroom', '13:30:00', '15:00:00');
INSERT INTO Session VALUES('4025', 'paper', '2023-09-01','online', '16:00:00', '17:30:00');
INSERT INTO Session VALUES('4026', 'Sponsored Talk', '2023-08-29','grand ballroom', '18:00:00', '18:20:00');
INSERT INTO Session VALUES('4027', 'Sponsored Talk', '2023-08-29','grand ballroom', '17:30:00', '18:00:00');
INSERT INTO Session VALUES('4028', 'Sponsored Talk', '2023-08-29','grand ballroom', '19:05:00', '19:25:00');
INSERT INTO Session VALUES('4029', 'Sponsored Talk', '2023-08-29','grand ballroom', '18:50:00', '19:05:00');
INSERT INTO Session VALUES('4030', 'Sponsored Talk', '2023-08-29','junior ballroom AB', '18:15:00', '18:45:00');
INSERT INTO Session VALUES('4031', 'Sponsored Talk', '2023-08-29','junior ballroom AB', '17:30:00', '17:45:00');
INSERT INTO Session VALUES('4032', 'Sponsored Talk', '2023-08-29','junior ballroom AB', '17:45:00', '18:00:00');
INSERT INTO Session VALUES('4033', 'Sponsored Talk', '2023-08-31','port mcneil', '17:30:00', '18:00:00');
INSERT INTO Session VALUES('4034', 'Sponsored Talk', '2023-08-31','port mcneil', '18:00:00', '18:15:00');
INSERT INTO Session VALUES('4035', 'Sponsored Talk', '2023-08-31','junior ballroom AB', '17:30:00', '18:00:00');

-- Workshop Session Inserts
INSERT INTO workshop_session VALUES('3001', '1002');
INSERT INTO workshop_session VALUES('3002', '1003');
INSERT INTO workshop_session VALUES('3003', '1004');
INSERT INTO workshop_session VALUES('3004', '1001');

-- Paper Inserts
INSERT INTO Papers VALUES('5001', '2023', 'The Composable Data Management System Manifesto', '4012');
INSERT INTO Papers VALUES('5002', '2023', 'An Experimental Evaluation of Process Concept Drift Detection','4013');
INSERT INTO Papers VALUES('5003','2022','Can Foundation Models Wrangle Your Data?' ,'4014');
INSERT INTO Papers VALUES('5004', '2023', 'InfiniStore: Elastic Serverless Cloud Storage' ,'4015');
INSERT INTO Papers VALUES('5005', '2022', 'Sage: A System for Uncertain Network Analysis' ,'4016');
INSERT INTO Papers VALUES('5006', '2023', 'Auto-Tables: Synthesizing Multi-Step Transformations to Relationalize Tables without Using Examples' ,'4017');
INSERT INTO Papers VALUES('5007', '2023', 'DBSP: Automatic Incremental View Maintenance for Rich Query Languages' ,'4018');
INSERT INTO Papers VALUES('5008', '2022', 'PIM-tree: A Skew-resistant Index for Processing-in-Memory' ,'4019');
INSERT INTO Papers VALUES('5009', '2022', 'The LDBC Social Network Benchmark: Business Intelligence Workload' ,'4020');
INSERT INTO Papers VALUES('5010', '2023', 'Epistemic Parity: Reproducibility as an Evaluation Metric for Differential Privacy' ,'4021');
INSERT INTO Papers VALUES('5011', '2023', 'A Deep Dive into Common Open Formats for Analytical DBMSs' ,'4022');
INSERT INTO Papers VALUES('5012', '2023', 'Kora: A Cloud-Native Event Streaming Platform For Kafka' ,'4023');
INSERT INTO Papers VALUES('5013', '2023', 'PyTorch FSDP: Experiences on Scaling Fully Sharded Data Parallel' ,'4024');
INSERT INTO Papers VALUES('5014', '2023', 'FEBench: A Benchmark for Real-Time Relational Data Feature Extraction' ,'4025');


-- Participant Inserts
INSERT INTO Participant VALUES('6001', 'eunjae@linecorp.com', 'Eunjae', 'Lee', 'LINE+', NULL);
INSERT INTO Participant VALUES('6002', 'samhnoh@unist.ac.kr', 'Sam', 'Noh', 'UNIST', NULL);
INSERT INTO Participant VALUES('6003', 'seojiwon@hanyang.ac.kr', 'Jiwon', 'Seo', 'Hanyang University', NULL);
INSERT INTO Participant VALUES('6004', 'jzhang33@gmu.edu', 'Jingyuan', 'Zhang', 'George Mason Uni', NULL);
INSERT INTO Participant VALUES('6005', 'shenlan.wa@alibaba-inc.com', 'Ao', 'Wang', 'Alibaba Group', NULL);
INSERT INTO Participant VALUES('6006', 'xiaolongm@nevada.unr.edu', 'Xiaolong', 'Ma', 'Uni of Nevada', NULL);
INSERT INTO Participant VALUES('6007', 'bcarver2@gmu.edu', 'Benjamin' , 'Carver', 'George Mason Uni', NULL);
INSERT INTO Participant VALUES('6008', 'nnewman7@gmu.edu', 'Nicholas', 'Newman', 'George Mason Uni', NULL);
INSERT INTO Participant VALUES('6009', 'aanwar@umn.edu', 'Ali' , 'Anwar', 'University of Minnesota', NULL);
INSERT INTO Participant VALUES('6010', 'lukas.rupprecht@ibm.com', 'Lukas', 'Rupprecht', 'IBM Research', NULL);
INSERT INTO Participant VALUES('6011', 'vtarasov@us.ibm.com', 'Vasily', 'Tarasov', 'IBM Research', NULL);
INSERT INTO Participant VALUES('6012', 'skourtis@soe.ucsc.edu', 'Dimitrios', 'Skourtis', 'Redpanda Data', NULL);
INSERT INTO Participant VALUES('6013', 'fyan5@central.uh.edu', 'Feng', 'Yan', 'Uni of Houston', NULL);
INSERT INTO Participant VALUES('6014', 'mrz7dp@virginia.edu', 'Yue', 'Cheng', 'Uni of Virginia', NULL);
INSERT INTO Participant VALUES('6015', 'avanika@cs.stanford.edu', 'Avanika', 'Narayan', 'Stanford University', NULL);
INSERT INTO Participant VALUES('6016', 'ines.chami@numbersstation.ai', 'Ines', 'Chami', 'Numbers Station', NULL);
INSERT INTO Participant VALUES('6017', 'lorr1@cs.stanford.edu', 'Laurel', 'Orr', 'Stanford University', NULL);
INSERT INTO Participant VALUES('6018', 'chrismre@cs.stanford.edu', 'Christopher', 'Ré', 'Stanford University', NULL);
INSERT INTO Participant VALUES('6019', 'niklas.adams@pads.rwth-aachen.de', 'Jan', 'Adams', 'RWTH Aachen University', NULL);
INSERT INTO Participant VALUES('6020', 'brockhoff@pads.rwth-aachen.de', 'Tobias', 'Brockhoff', 'RWTH Aachen University', NULL);
INSERT INTO Participant VALUES('6021', 'cameron.pitsch@rwth-aachen.de', 'Cameron', 'Pitsch', 'RWTH Aachen University', NULL);
INSERT INTO Participant VALUES('6022', 'wvdaalst@pads.rwth-aachen.de', 'Wil', 'Van Der Aalst', 'RWTH Aachen University', NULL);
INSERT INTO Participant VALUES('6023', 'pedroerp@meta.com', 'Pedro', 'Pedreira', 'Meta Platforms Inc.', NULL);
INSERT INTO Participant VALUES('6024', 'wes@voltrondata.com', 'Wes', 'McKinney', 'Voltron Data', NULL);
INSERT INTO Participant VALUES('6025', 'oerling@meta.com', 'Orri', 'Erling', 'Meta Platforms Inc.', NULL);
INSERT INTO Participant VALUES('6026', 'satya.valluri@databricks.com', 'Satya', 'Valluri', 'Databricks Inc.', NULL);
INSERT INTO Participant VALUES('6027', 'kkaranasos@meta.com', 'Konstantinos', 'Karanasos', 'Meta Platforms Inc.', NULL);
INSERT INTO Participant VALUES('6028', 'mohamed.zait@databricks.com', 'Mohamed', 'Zait', 'Databricks Inc.', NULL);
INSERT INTO Participant VALUES('6029', 'scottas@meta.com', 'Scott', 'Schneider', 'Meta Platforms Inc.', NULL);
INSERT INTO Participant VALUES('6030', 'jacques@sundeck.io', 'Jacques', 'Nadeau', 'Sundeck', NULL);

-- writes Inserts

INSERT INTO writes VALUES('5005', '6001');
INSERT INTO writes VALUES('5005', '6002');
INSERT INTO writes VALUES('5005', '6003');
INSERT INTO writes VALUES('5004', '6004');
INSERT INTO writes VALUES('5004', '6005');
INSERT INTO writes VALUES('5004', '6006');
INSERT INTO writes VALUES('5004', '6007');
INSERT INTO writes VALUES('5004', '6008');
INSERT INTO writes VALUES('5004', '6009');
INSERT INTO writes VALUES('5004', '6010');
INSERT INTO writes VALUES('5004', '6011');
INSERT INTO writes VALUES('5004', '6012');
INSERT INTO writes VALUES('5004', '6013');
INSERT INTO writes VALUES('5004', '6014');
INSERT INTO writes VALUES('5003', '6015');
INSERT INTO writes VALUES('5003', '6016');
INSERT INTO writes VALUES('5003', '6017');
INSERT INTO writes VALUES('5003', '6018');
INSERT INTO writes VALUES('5002', '6019');
INSERT INTO writes VALUES('5002', '6020');
INSERT INTO writes VALUES('5002', '6021');
INSERT INTO writes VALUES('5002', '6022');
INSERT INTO writes VALUES('5001', '6023');
INSERT INTO writes VALUES('5001', '6024');
INSERT INTO writes VALUES('5001', '6025');
INSERT INTO writes VALUES('5001', '6026');
INSERT INTO writes VALUES('5001', '6027');
INSERT INTO writes VALUES('5001', '6028');
INSERT INTO writes VALUES('5001', '6029');
INSERT INTO writes VALUES('5001', '6030');

-- Award Inserts
INSERT INTO Award VALUES('7001', 'Best Research Paper');
INSERT INTO Award VALUES('7002', 'Best Research Paper Runner Up');
INSERT INTO Award VALUES('7003', 'Best Experiment, Analysis, & Benchmark Paper');
INSERT INTO Award VALUES('7004', 'Best Experiment, Analysis, & Benchmark Paper Runner Up');
INSERT INTO Award VALUES('7005', 'Best Industy Paper');
INSERT INTO Award VALUES('7006', 'Best Industy Paper Runner Up');

-- Awarded Papers Inserts
INSERT INTO awarded_paper VALUES('7001', '5006');
INSERT INTO awarded_paper VALUES('7001', '5007');
INSERT INTO awarded_paper VALUES('7002', '5008');
INSERT INTO awarded_paper VALUES('7003', '5009');
INSERT INTO awarded_paper VALUES('7004', '5010');
INSERT INTO awarded_paper VALUES('7004', '5011');
INSERT INTO awarded_paper VALUES('7005', '5012');
INSERT INTO awarded_paper VALUES('7006', '5013');
INSERT INTO awarded_paper VALUES('7006', '5014');

-- Sponsor Inserts
INSERT INTO Sponsor VALUES('8001', 30000, 'Diamond', 'Microsoft', '4033');
INSERT INTO Sponsor VALUES('8002', 30000, 'Diamond', 'Google', '4030');
INSERT INTO Sponsor VALUES('8003', 30000, 'Diamond', 'Huawei', '4035');
INSERT INTO Sponsor VALUES('8004', 30000, 'Diamond', 'Salesforce', '4027');
INSERT INTO Sponsor VALUES('8005', 20000, 'Platinum', 'Amazon', '4026');
INSERT INTO Sponsor VALUES('8006', 20000, 'Platinum', 'Databricks', '4028');
INSERT INTO Sponsor VALUES('8007', 10000, 'Gold', 'Oracle', '4031');
INSERT INTO Sponsor VALUES('8008', 10000, 'Gold', 'OceanBase', '4032');
INSERT INTO Sponsor VALUES('8009', 10000, 'Gold', 'SnowFlake', '4029');
INSERT INTO Sponsor VALUES('8010', 10000, 'Gold', 'Alibaba', '4034');



