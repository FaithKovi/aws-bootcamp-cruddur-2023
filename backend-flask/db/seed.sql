INSERT INTO public.users (display_name, email, handle, cognito_user_id)
VALUES
  ('Faith Kovi','faithkovivera@gmail.com' , 'faithkovi' ,'MOCK'),
  ('Alt Kovi','faithkovivera+1@gmail.com' , 'altkovi' ,'MOCK'),
  ('Londo Mollari', 'lmollari@centari.com','londo','MOCK');


INSERT INTO public.activities (user_uuid, message, expires_at)
VALUES
  (
    (SELECT uuid from public.users WHERE users.handle = 'faithkovi' LIMIT 1),
    'This was imported as seed data!',
    current_timestamp + interval '10 day'
  ),
  (
    (SELECT uuid from public.users WHERE users.handle = 'altkovi' LIMIT 1),
    'I am the other!',
    current_timestamp + interval '10 day'
  );