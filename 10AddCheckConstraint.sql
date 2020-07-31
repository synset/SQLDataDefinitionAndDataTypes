ALTER TABLE Users
ADD CHECK (len(Password)>=5);