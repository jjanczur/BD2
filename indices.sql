CREATE UNIQUE INDEX user_pk ON public.vuser (id);
CREATE UNIQUE INDEX reservation_pk ON public.reservation (id);
CREATE UNIQUE INDEX room_pk ON public.room (id);
CREATE UNIQUE INDEX room_joiner_pk ON public.room_joiner (room_id, reservation_id);

CREATE INDEX reservation_fk ON public.reservation (user_id);
CREATE INDEX reservation_date ON public.reservation (start_datetime, end_datetime);

CREATE INDEX room_seats ON public.room (seats_nr);