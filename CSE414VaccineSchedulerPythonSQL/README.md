# Python Application for Vaccine Scheduler

**Patients**: these are customers that want to receive the vaccine.  
**Caregivers**: these are employees of the health organization administering the vaccines.  
**Vaccines**: these are vaccine doses in the health organization’s inventory of medical supplies that are on hand and ready to be given to the patients.  

## Tables Created
1. **Caregivers**: Username, Salt, Hash
2. **Patients**: pUsername, Salt, Hash
3. **Reservations**: ID, cUsername REFERENCES Caregivers, pUsername REFERENCES Patients.
4. **Vaccines**:  Name, Doses
5. **Used**: rID REFERENCES Reservations, vName REFERENCES Vaccines, PRIMARY KEY (rID, vName)
6. **Availabilities**: Time, cUsername REFERENCES Caregivers, pUsername REFERENCES Patients, vName REFERENCES Vaccines, PRIMARY KEY (Time, cUsername, pUsername, vName)

## Some Commands For Future Reference
### SQL
- Before dropping tables, need to first check on the foreign key constriants.
  - `SELECT * FROM sys.foreign_keys;`
  - Then, remove the constraints using `ALTER TABLE <Table> DROP CONSTRAINT <CONSTRAINT name>;`
### Python