-- P2 - Write a query to list down all the shows on a given date at a given theatre along with their respective show timings.

select * from SHOWS s
where show_time::date = '2023-10-01' -- Replace with the desired date
and s.screen_id in (
    select screen_id from SCREENS
    where theatre_id = (select theatre_id from THEATRES where name = 'Your Theatre Name') -- Replace with the desired theatre name
);

