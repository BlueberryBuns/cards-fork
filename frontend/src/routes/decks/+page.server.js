import { supabase } from "$lib/supabaseClient";

export async function load() {
    const { data: decks, error } = await supabase
        .from('decks')
        .select('id,created_at,deck_name,profiles (username), cards (id, content)')

    console.log(error);
    return {
        decks: decks ?? [],
    };
}