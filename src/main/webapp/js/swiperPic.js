var mySwiper = new Swiper('.swiper', {
    direction: 'horizontal', // 垂直切换选项
    loop: true, // 循环模式选项
    autoplay: true, // 自动播放
    grabCursor: true, // 抓手
    autoHeight: true, //自动高度
    effect: 'coverflow', // 轮播效果
    keyboard : true,

    // 如果需要分页器
    pagination: {
        el: '.swiper-pagination',
    },

    // 如果需要前进后退按钮
    navigation: {
        nextEl: '.swiper-button-next',
        prevEl: '.swiper-button-prev',
    },

    // // 如果需要滚动条
    scrollbar: {
        el: '.swiper-scrollbar',
    },
})        
