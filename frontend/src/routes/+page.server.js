import { supabase } from "$lib/supabaseClient";

export async function load() {
    const { data: cards, error } = await supabase
        .from('cards')
        .select('*')

    console.log(error);
    return {
        cards: cards ?? [],
    };
}