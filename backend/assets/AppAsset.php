<?php

namespace backend\assets;

use yii\web\AssetBundle;

/**
 * Main backend application asset bundle.
 */
class AppAsset extends AssetBundle
{
    public $basePath = '@webroot';
    public $baseUrl = '@web';
    public $css = [
        // 'dist/metisMenu/metisMenu.min.css',
        // 'dist/css/sb-admin-2.css',
        // 'dist/morrisjs/morris.css',
        // 'dist/font-awesome/css/font-awesome.min.css',
        'css/site.css',
    ];
    public $js = [
        // 'dist/metisMenu/metisMenu.min.js',
        // 'dist/raphael/raphael.min.js',
        // 'dist/morrisjs/morris.min.js',
        // 'dist/js/sb-admin-2.js',
    ];
    public $depends = [
        'yii\web\YiiAsset',
        'yii\bootstrap\BootstrapAsset',
    ];
}
