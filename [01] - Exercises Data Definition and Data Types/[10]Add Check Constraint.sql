--Task 10
ALTER TABLE Users
ADD CONSTRAINT [User Password] CHECK(LEN([User Password]) >= 5);