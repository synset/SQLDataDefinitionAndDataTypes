alter table Users
add constraint df_LastLoginTime
default current_timestamp for LastLoginTime;