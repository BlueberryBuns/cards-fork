<script lang="ts">
    import Deck from './Deck.svelte';
    export let data: {decks: Array<{
            deck_name: string,
            created_at: Date,
            id: number,
            profiles: {
                username: string
            },
            cards: Array<{id: number, content: string}>
        }>
    };
</script>

<svelte:head>
	<title>Decks</title>
	<meta name="description" content="Decks" />
</svelte:head>

<div class="text-column">
	<h1>Decks</h1>

	{#each data.decks as deck}
        <Deck deck_data={deck} />
    {/each}
</div>
