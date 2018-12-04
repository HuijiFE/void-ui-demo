<template>
  <div class="cards">
    <vd-swimlane>
      <vd-container>
        <vd-flexbox gap>

          <vd-flexbox v-for="card of cards"
                      :key="card.header">
            <vd-card raise>
              <vd-card-header>{{card.header}}</vd-card-header>
              <vd-card-content>{{card.content}}</vd-card-content>
            </vd-card>
          </vd-flexbox>

        </vd-flexbox>
      </vd-container>
    </vd-swimlane>


    <vd-swimlane>
      <vd-container>
        <vd-flexbox gap>

          <vd-flexbox v-for="(card, index) of cards"
                      :key="index">
            <vd-card raise>
              <img style="width:100%;height:auto;"
                   src="https://img2.tgbus.com/i/gl_game-cover/games/cover/87c089acc9ddeb9bf4c512c0cb4e8669.png">
              <vd-card-content>
                <vd-card-title>{{card.header}}</vd-card-title>
                <vd-card-summary>{{card.content}}</vd-card-summary>
              </vd-card-content>
            </vd-card>
          </vd-flexbox>

        </vd-flexbox>
      </vd-container>
    </vd-swimlane>
  </div>
</template>

<script lang="ts">
export default {
  name: "cards",
  data() {
    return {
      cards: [
        {
          header: "Card 1",
          content: "Card 1 content 12345"
        },
        {
          header: "Card 2",
          content: "Card 2 content 67890"
        },
        {
          header: "Card 3",
          content: "Card 3 content abcdef"
        },
        {
          header: "Card 4",
          content: "Card 4 content ghijk"
        },
        {
          header: "Card 5",
          content: "Card 5 content qwert"
        }
      ]
    };
  }
};
</script>
