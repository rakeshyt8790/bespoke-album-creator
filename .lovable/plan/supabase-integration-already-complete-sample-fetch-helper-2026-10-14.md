# Supabase Integration — Already Complete + Sample Fetch Helper

## Current State (verified)
- `@supabase/supabase-js` ^2.117.3 is installed in package.json
- `src/integrations/supabase/client.ts` is auto-generated and already creates the client from `VITE_SUPABASE_URL` + `VITE_SUPABASE_PUBLISHABLE_KEY` env vars — this file cannot and should not be edited
- `.env` already contains `VITE_SUPABASE_URL`, `VITE_SUPABASE_PUBLISHABLE_KEY`, `VITE_SUPABASE_PROJECT_ID`
- Working fetch functions already exist in `src/lib/studio.ts` (`useSettings`, `useMedia`, `useEventTypes`, `useServices`)
- Database is live with tables: site_settings, portfolio_media, event_types, services_cameras, quote_inquiries

## What This Plan Adds
One new file: `src/lib/supabase-examples.ts` — a documented reference file with simple, copy-paste-ready sample fetch functions:

1. `fetchSiteSettings()` — plain async fetch of one row from site_settings
2. `fetchEventTypes()` — fetch all rows from a table
3. `fetchServices()` — fetch with a filter (is_active = true)
4. `fetchInquiries()` — fetch with ordering
5. A commented example showing how to use them inside a React component with useState/useEffect

No existing files are modified. No new packages installed. No env changes needed.

## Technical Notes
- The env var is named `VITE_SUPABASE_PUBLISHABLE_KEY` (not `VITE_SUPABASE_ANON_KEY`) — this is the platform's standard naming for the public anon key; it serves the same purpose
- The client file is auto-generated; editing it would be overwritten by the platform
