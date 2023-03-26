INSERT INTO public.users (display_name, handle, cognito_user_id)
VALUES
  ('Andrew Brown', 'andrewbrown' , 'andrew@test.com', 'MOCK'),
  ('Andrew Bayko', 'bayko' , 'bayko@test.com', 'MOCK'),
  ('Faith Kovi', 'faithkovi' , 'faithkovivera@gmail.com', 'MOCK');

INSERT INTO public.activities (user_uuid, message, expires_at)
VALUES
  (
    (SELECT uuid from public.users WHERE users.handle = 'andrewbrown' LIMIT 1),
    'This was imported as seed data!',
    current_timestamp + interval '10 day'
  )