const path = require('path');
const HtmlWebpackPlugin = require('html-webpack-plugin');
const CopyPlugin = require("copy-webpack-plugin");

module.exports = {
    mode: 'production',
    entry: '/src/index.js',
    output: {
        path: path.resolve(__dirname, './dist'),
        filename: 'app.js',
    },
    plugins: [
        new HtmlWebpackPlugin({
            template: "/src/index.html"
        }),
        new CopyPlugin({
            patterns: [
                "src/style.css"
            ]
        })
    ],
};