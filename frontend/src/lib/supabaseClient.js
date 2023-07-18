import { createClient } from '@supabase/supabase-js'
import { PROJECT_TOKEN, SUPABASE_PROJECT } from '$env/static/private';

export const supabase = createClient(`https://${SUPABASE_PROJECT}.supabase.co`, `${PROJECT_TOKEN}`)