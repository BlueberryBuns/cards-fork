<script lang="ts">
    export let deck_data: {
        deck_name: string,
        created_at: Date,
        id: number,
        profiles: {
            username: string
        },
        cards: Array<{id: number, content: string}>
    };
</script>

<div>
    <h1>{deck_data.deck_name}</h1>
    <h3>{deck_data.profiles.username}</h3>
    <ol>
        {#each deck_data.cards as card}
            <li>{card.content}</li>
        {/each}
    </ol>
</div>

<style>
    div {
        border: 1px solid black;
    }
</style>