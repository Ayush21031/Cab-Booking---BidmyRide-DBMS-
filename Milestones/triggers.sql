use finalbidmyride;
Drop trigger if exists send_msg_rider;
Drop trigger if exists delete_trip_change_status;
Drop trigger if exists insert_trip_change_status;


Delimiter //
create trigger send_msg_rider after insert on billing
for each row
begin
insert into msg(User_ID,Transaction_msg) values (new.Rider_ID,concat('Dear User',new.Rider_ID,'Your Trip Fare Rs.',new.Fare,'has been deducted from your wallet'));
update wallet w join rider r on r.Wallet_id = w.wallet_id set w.amount = w.amount-new.Fare where r.Rider_Id = new.Rider_ID;
update rider set status = 1 where Rider_Id = new.Rider_ID;
insert into msg(User_ID,Transaction_msg) values (new.Driver_ID,concat('Dear User',new.Driver_ID,'Your Trip Fare Rs.',new.Fare,'has been added to your wallet'));
update wallet w join driver d on d.Wallet_id = w.wallet_id set w.amount = w.amount+new.Fare where d.Driver_id = new.Driver_ID;
update driver set status = 1 where Driver_id = new.Driver_ID;
end; //

DELIMITER //
CREATE TRIGGER delete_trip_change_status
AFTER DELETE ON trip
FOR EACH ROW
BEGIN
    update driver set Status = 1 where Driver_id = OLD.Driver_ID;
    update rider set status = 1 where Rider_Id IN (Select Rider_id from request where Request_ID = old.Request_ID);
END; //
DELIMITER ;

DELIMITER //
CREATE TRIGGER insert_trip_change_status
AFTER INSERT ON trip
FOR EACH ROW
BEGIN
    update driver set Status = 0 where Driver_id = NEW.Driver_ID;
    update rider set status = 0 where Rider_Id IN (Select Rider_id from request where Request_ID = NEW.Request_ID);
END; //