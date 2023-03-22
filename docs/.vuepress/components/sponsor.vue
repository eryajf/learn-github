<template>
    <div class="sponsor-container">
      <div
        class="sponsor-love position-absolute transition-3ms"
        :class="{ blurry: isBlurry }"
      >
      </div>
      <ul
        class="sponsor-payment-options transition-3ms"
        :class="{ blurry: isBlurry }"
      >
        <li
          id="alipay-option"
          class="transition-3ms"
          @click="showQRCode(alipayQR, '支付宝')"
        ></li>
        <li
          id="wechat-option"
          class="transition-3ms"
          @click="showQRCode(wechatQR, '微信支付')"
        ></li>
      </ul>
      <transition name="fade-qrcode-container">
        <div
          class="sponsor-qrcode-container position-absolute"
          v-show="isShowQRContainer"
        >
          <transition name="fade-qrcode">
            <div
              class="sponsor-qrcode-info"
              :style="{
                backgroundImage: 'url(' + currentQRCode + ')',
                pointerEvents: isShowQRCode ? 'auto' : 'none',
              }"
              @click="closeQRCode()"
              v-show="isShowQRCode"
            ></div>
          </transition>
        </div>
      </transition>
      <transition name="fade-message">
        <div class="sponsor-message position-absolute" v-show="isShowMessage">
          {{ message }}
        </div>
      </transition>
    </div>
  </template>

  <script>
  export default {
    name: "Sponsor",
    props: {
      options: {
        required: false,
        type: Object,
        default: () => {
          return {
            theme: "simple",
            alipay:
              "支付宝二维码地址",
            wechat:
              "微信二维码地址",
            duration: 2000,
          };
        },
      },
    },
    data() {
      return {
        alipayQR: this.options.alipay,
        wechatQR: this.options.wechat,
        qqQR: this.options.qq,
        paypalURL: this.options.paypal,
        messageDuration: this.options.duration,
        currentQRCode: "",
        currentMessageName: "",
        isShowMessage: false,
        isBlurry: false,
        isShowQRContainer: false,
        isShowQRCode: false,
      };
    },
    computed: {
      message() {
        return `主人忘记设置${this.currentMessageName}啦`;
      },
    },
    methods: {
      showQRCode(path, name) {
        if (!path) {
          return this.showMessage(name);
        }
        this.isShowMessage = false;
        this.isBlurry = true;
        this.currentQRCode = path;
        this.isShowQRContainer = true;
        this.isShowQRCode = true;
      },
      jumpToNewTab(url, name) {
        if (!url) {
          return this.showMessage(name);
        }
        window.open(url, "_blank");
      },
      showMessage(name) {
        this.currentMessageName = name;
        if (!this.isShowMessage) {
          this.isShowMessage = true;
          setTimeout(() => {
            this.isShowMessage = false;
          }, this.messageDuration);
        }
      },
      closeQRCode() {
        this.isShowQRCode = false;
        setTimeout(() => {
          this.isShowQRContainer = false;
          this.isBlurry = false;
        }, 600);
      },
    },
  };
  </script>

  <style lang="stylus" scoped>
  .sponsor-container {
    display: flex;
    justify-content: center;
    position: relative;
    margin: 100px 0;
    a {
      color: #000;
      text-decoration: none;
    }
    ul, li {
      list-style: none;
      list-style-type: none;
      margin: 0;
      padding: 0;
    }
    .position-absolute {
      position: absolute;
    }
    .blurry {
      -webkit-filter: blur(3px);
      filter: blur(3px);
    }
    .transition-3ms {
      transition: all 0.3s;
      -moz-transition: all 0.3s;
      -webkit-transition: all 0.3s;
      -o-transition: all 0.3s;
    }
    .sponsor-love {
      font-size: 12px;
      width: 50px;
      height: 50px;
      line-height: 50px;
      color: #fff;
      background: url('/sponsor-logo/love.svg')  no-repeat center 10px;
      background-size: 20px;
      border-radius: 35px;
      text-align: center;
      left: calc(50% - 100px);
      top: calc(50% - 40px);
      transform: rotatez(-15deg);
      -ms-transform: rotatez(-15deg);
      -moz-transform: rotatez(-15deg);
      -webkit-transform: rotatez(-15deg);
      -o-transform: rotatez(-15deg);
    }
    .sponsor-payment-options {
      display: flex;
      background-color: #fff;
      border: 1px solid #ddd;
      border-radius: 6px;
      height: 28px;
      z-index: 1;
      li {
        width: 74px;
        border-left: 1px solid #ddd;
        background: no-repeat center center;
        background-color: rgba(204, 217, 220, 0.1);
        background-size: 45px;
        cursor: pointer;
        -webkit-filter: grayscale(1);
        filter: grayscale(1);
        opacity: 0.5;
        &:hover {
          background-color: rgba(204, 217, 220, 0.3);
          -webkit-filter: grayscale(0);
          filter: grayscale(0);
          opacity: 1;
        }
        &:first-child {
          border-width: 0;
        }
      }
      #alipay-option {
        background-image: url('/sponsor-logo/alipay.svg');
      }
      #wechat-option {
        background-image: url('/sponsor-logo/wechat.svg');
      }

    }
    .sponsor-qrcode-container {
      width: 100%;
      height: 100%;
      z-index: 1;
      perspective: 400px;
      transition: opacity 0.3s;
      -moz-transition: opacity 0.3s;
      -webkit-transition: opacity 0.3s;
      -o-transition: opacity 0.3s;
      .sponsor-qrcode-info {
        cursor: pointer;
        position: absolute;
        text-align: center;
        width: 200px;
        height: 200px;
        left: calc(50% - 100px);
        top: calc(50% - 100px);
        background: #fff no-repeat center center;
        background-size: 190px;
        border-radius: 6px;
        box-shadow: 0px 2px 7px rgba(0, 0, 0, 0.3);
        transition: all 1s ease-in-out;
        -moz-transition: all 1s ease-in-out;
        -webkit-transition: all 1s ease-in-out;
        -o-transition: all 1s ease-in-out;
        transform-style: preserve-3d;
        -webkit-transform-style: preserve-3d;
        transform-origin: center center;
        -ms-transform-origin: center center;
        -webkit-transform-origin: center center;
        -moz-transform-origin: center center;
        -o-transform-origin: center center;
        overflow: hidden;
      }
    }
    .sponsor-message {
      bottom: -36px;
      border-radius: 6px;
      background-color: rgba(100, 100, 100, 0.8);
      padding: 0 6px;
      font-size: 12px;
      text-align: center;
      height: 24px;
      line-height: 24px;
      color: #fff;
    }
  }
  @keyframes show-qrcode {
    from {
      transform: rotateX(90deg);
    }
    8% {
      opacity: 1;
      transform: rotateX(-60deg);
    }
    18% {
      opacity: 1;
      transform: rotateX(40deg);
    }
    34% {
      opacity: 1;
      transform: rotateX(-28deg);
    }
    44% {
      opacity: 1;
      transform: rotateX(18deg);
    }
    58% {
      opacity: 1;
      transform: rotateX(-12deg);
    }
    72% {
      opacity: 1;
      transform: rotateX(9deg);
    }
    88% {
      opacity: 1;
      transform: rotateX(-5deg);
    }
    96% {
      opacity: 1;
      transform: rotateX(2deg);
    }
    to {
      opacity: 1;
    }
  }
  @keyframes hide-qrcode {
    from {
    }
    20%, 50% {
      transform: scale(1.08, 1.08);
      opacity: 1;
    }
    to {
      opacity: 0;
      transform: rotateZ(40deg) scale(0.6, 0.6);
    }
  }
  .fade-qrcode-container-enter, .fade-qrcode-container-leave-to {
    opacity: 0;
  }
  .fade-qrcode-enter-active {
    animation-name: show-qrcode;
    animation-duration: 3s;
    animation-timing-function: ease-in-out;
    animation-iteration-count: 1;
    animation-fill-mode: forwards;
    -webkit-animation: show-qrcode 3s ease-in-out 0s 1 normal forwards;
  }
  .fade-qrcode-leave-active {
    animation-name: hide-qrcode;
    animation-duration: 0.5s;
    animation-timing-function: ease-in-out;
    animation-iteration-count: 1;
    animation-fill-mode: forwards;
    -webkit-animation: hide-qrcode 0.5s ease-in-out 0s 1 normal forwards;
  }
  .fade-message-enter-active, .fade-message-leave-active {
    transition: opacity 0.3s;
    -moz-transition: opacity 0.3s;
    -webkit-transition: opacity 0.3s;
    -o-transition: opacity 0.3s;
  }
  .fade-message-enter, .fade-message-leave-to {
    opacity: 0;
  }
  </style>