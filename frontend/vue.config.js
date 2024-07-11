const webpack = require('webpack'); // เพิ่มการนำเข้า webpack

module.exports = {
  configureWebpack: {
    plugins: [
      new webpack.DefinePlugin({
        __VUE_OPTIONS_API__: true,
        __VUE_PROD_DEVTOOLS__: false,
        __VUE_PROD_HYDRATION_MISMATCH_DETAILS__: false // เพิ่ม feature flag ที่ขาดหายไป
      }),
    ],
  },
};
