# Схема SQLite  
```sql  
-- Пользователи  
CREATE TABLE Users (  
    id INTEGER PRIMARY KEY,  
    login TEXT UNIQUE NOT NULL,  
    password TEXT NOT NULL  
);  

-- Счета  
CREATE TABLE Accounts (  
    id INTEGER PRIMARY KEY,  
    user_id INTEGER,  
    type TEXT CHECK(type IN ('current', 'savings', 'credit', 'card')),  
    subtype TEXT CHECK(subtype IN ('salary', 'savings', 'credit')),  
    balance REAL,  
    status TEXT CHECK(status IN ('active', 'blocked')),  
    overdraft BOOLEAN DEFAULT FALSE,  
    FOREIGN KEY(user_id) REFERENCES Users(id)  
);  
