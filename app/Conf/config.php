<?php
$app_config = array(
	//'配置项'=>'配置值'
    'URL_MODEL'              => 2, //URL路径规则:0=PATHINFO模式（默认模式）
    //'URL_PATHINFO_MODEL'=>2, //
    //'URL_PATHINFO_DEPR'=>'-', // 更改PATHINFO参数分隔符

    //'URL_CASE_INSENSITIVE'   => true,  //不区分路径大小写

//    'ERROR_PAGE'=>'/Public/error.html' // 定义错误跳转页面URL地址
//    'TMPL_EXCEPTION_FILE' => './App/Tpl/Public/404.php',  // 定义404跳转模板
//    'TMPL_EXCEPTION_FILE'    => './App/Tpl/Public/error.php', // 定义公共错误模板
    //默认错误跳转对应的模板文件
//    'TMPL_ACTION_ERROR' => THINK_PATH . 'Tpl/dispatch_jump.tpl',
    //默认成功跳转对应的模板文件
//    'TMPL_ACTION_SUCCESS' => THINK_PATH . 'Tpl/dispatch_jump.tpl'


    //'TMPL_VAR_IDENTIFY'      => 'array',  //{$user.name}和{$user['name']}等效

//    'LOG_RECORD'=>true,//开启了日志记录
//    'LOG_RECORD_LEVEL'=>array('EMERG','ALERT','ERR'),
//redirectURL
);


$web_config = array(
    'APP_NAME'               => 'Strider',     //项目名称
    'APP_TITLENAME'          => '行客',        //项目标题名称

//    'MESSAGE'                => 'message',     //消息变量

    //模版变量
//    'MESSAGE_M'              => 'message',     //全局消息模版
);
$global_config = include './config.inc.php';
return array_merge($global_config,$app_config,$web_config);
?>