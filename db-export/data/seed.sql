-- =============================================================================
-- Parinaya Wedding Films — all data, as SQL INSERTs
-- Exported from this project's Lovable Cloud database on 2026-10-14 (UTC).
--
-- Run schema.sql first. Re-running this file is safe: existing rows are kept.
-- =============================================================================

BEGIN;

-- site_settings (1 row)
INSERT INTO public.site_settings
  (id, studio_name, tagline, bio, logo_url, whatsapp_number, phone_number,
   instagram_url, youtube_url, studio_address, updated_at)
VALUES
  ('2990e2ec-6dd1-4ddf-b1e0-e239b51acf1c',
   'Parinaya Wedding Films',
   'Wedding stories told with quiet elegance',
   'We are a boutique wedding studio documenting Indian weddings with an editorial, unhurried eye. Every frame is crafted to feel like a memory, not a pose.',
   NULL,
   '919000000000',
   '+91 90000 00000',
   'https://instagram.com',
   'https://youtube.com',
   'Jubilee Hills, Hyderabad, India',
   '2026-10-14 08:25:16.286152+00')
ON CONFLICT (id) DO NOTHING;

-- event_types (6 rows)
INSERT INTO public.event_types (id, name, is_active, display_order, created_at) VALUES
  ('920a3c81-3905-44d7-aaf8-6452967d52dd', 'Haldi',               true, 1, '2026-10-14 08:25:16.286152+00'),
  ('92883dfa-dae9-4ad0-affc-651e48f001ea', 'Mehendi',             true, 2, '2026-10-14 08:25:16.286152+00'),
  ('4f876f3d-0a46-45db-a5ad-148775c6ca78', 'Sangeet',             true, 3, '2026-10-14 08:25:16.286152+00'),
  ('942ed1c6-5d81-4849-8bd7-1e27f7700c1a', 'Muhurtham / Wedding', true, 4, '2026-10-14 08:25:16.286152+00'),
  ('3199cc4b-b7d1-4427-ba7e-84698cc344a8', 'Reception',           true, 5, '2026-10-14 08:25:16.286152+00'),
  ('72ffbaef-951d-4a56-b7b0-e052b37f8b99', 'Engagement',          true, 6, '2026-10-14 08:25:16.286152+00')
ON CONFLICT (id) DO NOTHING;

-- services_cameras (9 rows)
INSERT INTO public.services_cameras (id, name, category, unit_price, is_active, display_order, created_at) VALUES
  ('120236f0-ebd0-467f-b6a0-6e6155ca0117', 'Candid Photographer',     'camera', 25000, true, 1, '2026-10-14 08:25:16.286152+00'),
  ('6d0c171c-c997-4bd5-8488-9d1409714520', 'Traditional Photographer','camera', 15000, true, 2, '2026-10-14 08:25:16.286152+00'),
  ('5fe1315f-57e2-40b7-86e2-358d00eb095d', 'Cinematic Video',         'camera', 30000, true, 3, '2026-10-14 08:25:16.286152+00'),
  ('54a94d4f-a3bc-40c9-b6fe-e7ef4cddbc3d', 'Traditional Video',       'camera', 15000, true, 4, '2026-10-14 08:25:16.286152+00'),
  ('37963a27-48e5-4e11-942d-d4b0d90a66f2', 'Drone',                   'camera', 20000, true, 5, '2026-10-14 08:25:16.286152+00'),
  ('d4db0ca1-dd65-4931-a489-e6dce8ada27b', 'Crane / Jib',             'camera', 18000, true, 6, '2026-10-14 08:25:16.286152+00'),
  ('eebe498a-2b61-4298-84d1-1dc7f1624492', 'Luxury Handcrafted Album','addon',  35000, true, 7, '2026-10-14 08:25:16.286152+00'),
  ('95d5cd36-5964-4afb-bfda-2e9538d4f103', 'Raw Footage SSD/HDD',     'addon',   8000, true, 8, '2026-10-14 08:25:16.286152+00'),
  ('03f3d8de-b5d7-4654-92b9-01cd8e88be88', 'Pre-Wedding Session',     'addon',  60000, true, 9, '2026-10-14 08:25:16.286152+00')
ON CONFLICT (id) DO NOTHING;

-- portfolio_media (0 rows at export time — nothing uploaded yet)
-- quote_inquiries (0 rows at export time — no enquiries yet)

COMMIT;
