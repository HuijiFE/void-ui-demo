<template>
  <div class="list">
    <vd-swimlane>
      <vd-container>
        <vd-flexbox gap>

          <vd-flexbox :flex="1/3">
            <vd-list>
              <vd-list-item v-for="(item, index) of items"
                            :key="index">
                <!-- 图片在左侧 -->
                <img slot="left"
                     style="width:64px;height:64px"
                     :src="item.img">
                <span>{{item.content}}</span>
              </vd-list-item>
            </vd-list>
          </vd-flexbox>

          <vd-flexbox :flex="1/3">
            <vd-list>
              <vd-list-item v-for="(item, index) of items"
                            :key="index">
                <!-- 图片在右侧 -->
                <img slot="right"
                     style="width:64px;height:64px"
                     :src="item.img">
                <span>{{item.content}}</span>
              </vd-list-item>
            </vd-list>
          </vd-flexbox>

          <vd-flexbox :flex="1/3">
            <!-- 添加分间距和割线 -->
            <vd-list gap
                     divided>
              <vd-list-item v-for="(item, index) of items"
                            :key="index">
                <img slot="left"
                     style="width:64px;height:64px"
                     :src="item.img">
                <span>{{item.content}}</span>
              </vd-list-item>
            </vd-list>
          </vd-flexbox>

        </vd-flexbox>
      </vd-container>
    </vd-swimlane>

    <vd-swimlane>
      <vd-container>
        <vd-flexbox gap>

          <vd-flexbox :flex="1 / 3">
            <!-- html原生列表，无样式 -->
            <ul>
              <li v-for="(item, index) of items"
                  :key="index">
                <img style="width:64px;height:64px"
                     :src="item.img">
                <span>{{item.content}}</span>
              </li>
            </ul>
          </vd-flexbox>

        </vd-flexbox>
      </vd-container>
    </vd-swimlane>
  </div>
</template>

<script lang="ts">
/**
 * 建议通过导入json作为随机假数据
 */
export default {
  name: "list",
  data() {
    return {
      items: [
        {
          img:
            "https://img2.tgbus.com/i/gl_game-cover/games/cover/87c089acc9ddeb9bf4c512c0cb4e8669.png",
          content: "item 1"
        },
        {
          img:
            "https://img2.tgbus.com/i/gl_game-cover/games/cover/87c089acc9ddeb9bf4c512c0cb4e8669.png",
          content: "item 2"
        },
        {
          img:
            "https://img2.tgbus.com/i/gl_game-cover/games/cover/87c089acc9ddeb9bf4c512c0cb4e8669.png",
          content: "item 3"
        },
        {
          img:
            "https://img2.tgbus.com/i/gl_game-cover/games/cover/87c089acc9ddeb9bf4c512c0cb4e8669.png",
          content: "item 4"
        },
        {
          img:
            "https://img2.tgbus.com/i/gl_game-cover/games/cover/87c089acc9ddeb9bf4c512c0cb4e8669.png",
          content: "item 5"
        }
      ]
    };
  }
};
</script>
