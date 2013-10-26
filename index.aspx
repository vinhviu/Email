<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Email App</title>
    <link href="css/index2.css" rel="stylesheet" />
    <script src="js/JavaScript.js"></script>
    <script src="js/index.js"></script>
    <script src="http://code.jquery.com/jquery-1.9.1.js"></script>
    <script src="js/jquery.nicescroll.min.js"></script>
    <script src="js/jquery.nicescroll.plus.js"></script>

    <script type="text/javascript">
        $(function () {
            $('#content').niceScroll({ cursorcolor: "#00F" });
            $('.nd').niceScroll({ cursorcolor: "#00F" });
            $('#main').outerHeight(0, $(document).outerHeight());
            $('#main').outerWidth(0, $(document).outerWidth());
            var a = $(document).outerHeight() - $('#header').outerHeight(true);
            $('#content').outerHeight(a);

            var $subitem = $('.nav-sub-item');
            var $gmail = $('#gmail');
            var $nav = $('#nav');
            var $email = $('#email');
            var $detail = $('#detail');
            var $emailitem = $('.email-item');
            var $emailitemcontent = $('.email-item-content');
            var $checkbox = $('.checkbox');
            var $signbox = $('.signbox');
            var $item = $('nav-item');

            $('.nav-item').hide();
            $('.nav-sub-item').hide();

            $gmail.click(function () {

                //$('.button-email').removeClass('absolute');
                //$('.nd').removeClass('absolute');

                if ($gmail.attr('show-nav') == '0') {

                    $gmail.attr('show-nav', '1');
                    $nav.removeClass('hide');
                    $nav.addClass('show-nav');
                    $('.nav-item').show();
                    $('.nav-sub-item').show();
                    $emailitemcontent.hide();
                }
                else {
                    $gmail.attr('show-nav', '0');
                    $nav.removeClass('show-nav');
                    $nav.addClass('hide');
                    $('.nav-item').hide();
                    $('.nav-sub-item').hide();
                    $emailitemcontent.show();
                }

            });

            $subitem.click(function () {
                $gmail.attr('show-nav', '0');

                $('#new').removeClass('none');
                $('#new').addClass('block');
                $('#delete').removeClass('none');
                $('#delete').addClass('block');

                if ($gmail.attr('show-list') == '1') {

                    $nav.removeClass('show');
                    $nav.addClass('hide');
                    $('.nav-item').hide();
                    $('.nav-sub-item').hide();
                    $emailitemcontent.show();
                }

                else {
                    $gmail.attr('show-list', '1');

                    $('.nav-item').hide();
                    $('.nav-sub-item').hide();
                    $nav.removeClass('show');
                    $nav.addClass('hide');

                    $detail.removeClass('show');
                    $detail.addClass('hide');
                    $detail.hide();

                    $email.show();
                    $email.removeClass('hide');
                    $email.addClass('show');
                    $emailitemcontent.show();
                }
            });

            $item.click(function () {
                $gmail.attr('show-nav', '0');

                $('#new').removeClass('none');
                $('#new').addClass('block');
                $('#delete').removeClass('none');
                $('#delete').addClass('block');

                if ($gmail.attr('show-list') == '1') {

                    $nav.removeClass('show');
                    $nav.addClass('hide');
                    $('.nav-item').hide();
                    $('.nav-sub-item').hide();

                    $email.show();
                    $email.removeClass('hide');
                    $email.addClass('show');
                    $emailitemcontent.show();
                }

                else {
                    $gmail.attr('show-list', '1');

                    $('.nav-item').hide();
                    $('.nav-sub-item').hide();
                    $nav.removeClass('show');
                    $nav.addClass('hide');

                    $detail.removeClass('show');
                    $detail.addClass('hide');
                    $detail.hide();

                    $email.show();
                    $emailitemcontent.show();
                    $email.removeClass('hide');
                    $email.addClass('show');
                }
            });

            $nav.click(function () {

                $gmail.attr('show-nav', '0');

                $('#new').removeClass('none');
                $('#new').addClass('block');
                $('#delete').removeClass('none');
                $('#delete').addClass('block');

                if ($gmail.attr('show-list') == '1') {

                    $nav.removeClass('show');
                    $nav.addClass('hide');
                    $('.nav-item').hide();
                    $('.nav-sub-item').hide();
                    $emailitemcontent.show();
                }

                else {
                    $gmail.attr('show-list', '1');

                    $('.nav-item').hide();
                    $('.nav-sub-item').hide();
                    $nav.removeClass('show');
                    $nav.addClass('hide');

                    $detail.removeClass('show');
                    $detail.addClass('hide');
                    $detail.hide();

                    $email.show();
                    $email.removeClass('hide');
                    $email.addClass('show');
                    $emailitemcontent.show();
                }
            });

            $checkbox.click(function () {
                if ($(this).attr('ischeck') == '1') {
                    $(this).attr('ischeck', '0');
                    $(this).removeClass('email-item-check');
                    $(this).addClass('email-item-uncheck');

                    var select = $('.checkbox');
                    var kt = "0";

                    $.each(select, function () {
                        if ($(this).attr('ischeck') == '1') {
                            $('#delete').removeClass('none');
                            $('#delete').addClass('block');
                            kt = "1";
                            return;
                        }
                    });

                    if (kt == "0") {
                        $('#delete').removeClass('block');
                        $('#delete').addClass('none');
                    }
                }
                else {
                    $(this).attr('ischeck', '1');
                    $(this).removeClass('email-item-uncheck');
                    $(this).addClass('email-item-check');
                    $('#delete').removeClass('none');
                    $('#delete').addClass('block');
                }
            });

            $signbox.click(function () {
                if ($(this).attr('issign') == '1') {
                    $(this).attr('issign', '0');
                    $(this).removeClass('email-item-sign');
                    $(this).addClass('email-item-unsign');
                }
                else {
                    $(this).attr('issign', '1');
                    $(this).removeClass('email-item-unsign');
                    $(this).addClass('email-item-sign');
                }
            });

            $('.aaa').click(function () {

                $gmail.attr('show-list', '0');

                $email.hide();
                $email.removeClass('show');
                $email.addClass('hide');

                //$('.button-email').addClass('absolute');
                //$('.nd').addClass('absolute');

                $detail.show();
                $detail.removeClass('hide');
                $detail.addClass('show');

                $('#new').removeClass('block');
                $('#delete').removeClass('block');
                $('#new').addClass('none');
                $('#delete').addClass('none');
            });
        })
    </script>
</head>
<body>
    <div id="main">
        <div id="header">
            <div class="icon" id="gmail" show-nav="0" show-list="1">
                &nbsp;
            </div>

            <div id="user">
                <table>
                    <tr>
                        <td style="font-weight: bold;">Hộp thư ưu tiên</td>
                    </tr>
                    <tr>
                        <td>vinhbq1902@gmail.com</td>
                    </tr>
                </table>
            </div>

            <div class="icon" id="new">&nbsp;</div>
            <div class="icon" id="delete">&nbsp;</div>
            <div class="clearer"></div>
        </div>

        <div id="content">

            <div id="nav" class="hide">
                <div style="float: left; height: 30px; width: 100%;"></div>
                <div class="nav-item">&nbsp;&nbsp;HỘP THƯ ĐẾN</div>
                <div class="nav-sub-item sub-icon" id="chinh">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Chính
                    <div class="nav-sub-item-quantity" style="background-color: red">12</div>
                </div>
                <div class="nav-sub-item sub-icon" id="xahoi">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Xã hội
                    <div class="nav-sub-item-quantity" style="background-color: green">4</div>
                </div>
                <div class="nav-sub-item sub-icon" id="quangcao">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Quảng cáo
                    <div class="nav-sub-item-quantity" style="background-color: orange">9</div>
                </div>
                <div class="nav-sub-item sub-icon" style="font-size: 12px">
                    &nbsp;&nbsp;Hộp thư ưu tiên
                    <div class="nav-sub-item-quantity">2</div>
                </div>
                <div style="float: left; height: 30px; width: 100%;"></div>
                <div class="nav-item">&nbsp;&nbsp;TẤT CẢ NHÃN</div>
                <div class="nav-sub-item sub-icon" style="font-size: 12px">
                    &nbsp;&nbsp;Được gắn dấu sao
                    <div class="nav-sub-item-quantity"></div>
                </div>
                <div class="nav-sub-item sub-icon" style="font-size: 12px">
                    &nbsp;&nbsp;Quan trọng
                    <div class="nav-sub-item-quantity">2</div>
                </div>
                <div class="nav-sub-item sub-icon" style="font-size: 12px">
                    &nbsp;&nbsp;Cuộc trò chuyện
                    <div class="nav-sub-item-quantity"></div>
                </div>
                <div class="nav-sub-item sub-icon" style="font-size: 12px">
                    &nbsp;&nbsp;Đã gửi
                    <div class="nav-sub-item-quantity"></div>
                </div>
                <div class="nav-sub-item sub-icon" style="font-size: 12px">
                    &nbsp;&nbsp;Hộp thư đi
                    <div class="nav-sub-item-quantity"></div>
                </div>
                <div class="nav-sub-item sub-icon" style="font-size: 12px">
                    &nbsp;&nbsp;Tin nháp
                    <div class="nav-sub-item-quantity">2</div>
                </div>
                <div class="nav-sub-item sub-icon" style="font-size: 12px">
                    &nbsp;&nbsp;Tất cả thư
                    <div class="nav-sub-item-quantity">24</div>
                </div>
                <div class="nav-sub-item sub-icon" style="font-size: 12px">
                    &nbsp;&nbsp;Spam
                    <div class="nav-sub-item-quantity">9</div>
                </div>
                <div class="nav-sub-item sub-icon" style="font-size: 12px">
                    &nbsp;&nbsp;Thùng rác
                    <div class="nav-sub-item-quantity">3</div>
                </div>
                <div class="nav-sub-item sub-icon" style="font-size: 12px">
                    &nbsp;&nbsp;[Imap]/Trash
                    <div class="nav-sub-item-quantity">7</div>
                </div>
            </div>

            <div id="email" class="show">
                <div class="email-item">
                    <div class="email-item-content">
                        <table class="tb-email-item-content" border="0" cellpadding="0" cellspacing="0">
                            <tr>
                                <td style="width: 24px;">
                                    <div ischeck="1" class="checkbox email-item-check">&nbsp;</div>
                                </td>
                                <td style="width: 100%;">
                                    <table class="aaa" border="0" cellpadding="0" cellspacing="0">
                                        <tr>
                                            <td style="height: 20px; width: 100%;">Song, Toi</td>
                                            <td style="height: 20px; text-wrap: none;"><span>20/12/2012</span></td>
                                        </tr>
                                        <tr>
                                            <td style="height: 20px;" colspan="2">Email ve du an sharepoint 2013</td>
                                        </tr>
                                        <tr>
                                            <td style="height: 20px;" colspan="2">Tai sao lai the ma khong la the nay ma lai la the kia ....</td>
                                        </tr>
                                    </table>
                                </td>
                                <td style="width: 24px;">
                                    <div issign="1" class="signbox email-item-sign">&nbsp;</div>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>

                <div class="email-item">
                    <div class="email-item-content">
                        <table class="tb-email-item-content" border="0" cellpadding="0" cellspacing="0">
                            <tr>
                                <td style="width: 24px;">
                                    <div ischeck="1" class="checkbox email-item-check">&nbsp;</div>
                                </td>
                                <td style="width: 100%;">
                                    <table class="aaa" border="0" cellpadding="0" cellspacing="0">
                                        <tr>
                                            <td style="height: 20px; width: 100%;">Song, Toi</td>
                                            <td style="height: 20px; text-wrap: none;"><span>20/12/2012</span></td>
                                        </tr>
                                        <tr>
                                            <td style="height: 20px;" colspan="2">Email ve du an sharepoint 2013</td>
                                        </tr>
                                        <tr>
                                            <td style="height: 20px;" colspan="2">Tai sao lai the ma khong la the nay ma lai la the kia ....</td>
                                        </tr>
                                    </table>
                                </td>
                                <td style="width: 24px;">
                                    <div issign="1" class="signbox email-item-sign">&nbsp;</div>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>

                <div class="email-item">
                    <div class="email-item-content">
                        <table class="tb-email-item-content" border="0" cellpadding="0" cellspacing="0">
                            <tr>
                                <td style="width: 24px;">
                                    <div ischeck="1" class="checkbox email-item-check">&nbsp;</div>
                                </td>
                                <td style="width: 100%;">
                                    <table class="aaa" border="0" cellpadding="0" cellspacing="0">
                                        <tr>
                                            <td style="height: 20px; width: 100%;">Song, Toi</td>
                                            <td style="height: 20px; text-wrap: none;"><span>20/12/2012</span></td>
                                        </tr>
                                        <tr>
                                            <td style="height: 20px;" colspan="2">Email ve du an sharepoint 2013</td>
                                        </tr>
                                        <tr>
                                            <td style="height: 20px;" colspan="2">Tai sao lai the ma khong la the nay ma lai la the kia ....</td>
                                        </tr>
                                    </table>
                                </td>
                                <td style="width: 24px;">
                                    <div issign="1" class="signbox email-item-sign">&nbsp;</div>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>

                <div class="email-item">
                    <div class="email-item-content">
                        <table class="tb-email-item-content" border="0" cellpadding="0" cellspacing="0">
                            <tr>
                                <td style="width: 24px;">
                                    <div ischeck="1" class="checkbox email-item-check">&nbsp;</div>
                                </td>
                                <td style="width: 100%;">
                                    <table class="aaa" border="0" cellpadding="0" cellspacing="0">
                                        <tr>
                                            <td style="height: 20px; width: 100%;">Song, Toi</td>
                                            <td style="height: 20px; text-wrap: none;"><span>20/12/2012</span></td>
                                        </tr>
                                        <tr>
                                            <td style="height: 20px;" colspan="2">Email ve du an sharepoint 2013</td>
                                        </tr>
                                        <tr>
                                            <td style="height: 20px;" colspan="2">Tai sao lai the ma khong la the nay ma lai la the kia ....</td>
                                        </tr>
                                    </table>
                                </td>
                                <td style="width: 24px;">
                                    <div issign="1" class="signbox email-item-sign">&nbsp;</div>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>

                <div class="email-item">
                    <div class="email-item-content">
                        <table class="tb-email-item-content" border="0" cellpadding="0" cellspacing="0">
                            <tr>
                                <td style="width: 24px;">
                                    <div ischeck="1" class="checkbox email-item-check">&nbsp;</div>
                                </td>
                                <td style="width: 100%;">
                                    <table class="aaa" border="0" cellpadding="0" cellspacing="0">
                                        <tr>
                                            <td style="height: 20px; width: 100%;">Song, Toi</td>
                                            <td style="height: 20px; text-wrap: none;"><span>20/12/2012</span></td>
                                        </tr>
                                        <tr>
                                            <td style="height: 20px;" colspan="2">Email ve du an sharepoint 2013</td>
                                        </tr>
                                        <tr>
                                            <td style="height: 20px;" colspan="2">Tai sao lai the ma khong la the nay ma lai la the kia ....</td>
                                        </tr>
                                    </table>
                                </td>
                                <td style="width: 24px;">
                                    <div issign="1" class="signbox email-item-sign">&nbsp;</div>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
                <div class="email-item">
                    <div class="email-item-content">
                        <table class="tb-email-item-content" border="0" cellpadding="0" cellspacing="0">
                            <tr>
                                <td style="width: 24px;">
                                    <div ischeck="1" class="checkbox email-item-check">&nbsp;</div>
                                </td>
                                <td style="width: 100%;">
                                    <table class="aaa" border="0" cellpadding="0" cellspacing="0">
                                        <tr>
                                            <td style="height: 20px; width: 100%;">Song, Toi</td>
                                            <td style="height: 20px; text-wrap: none;"><span>20/12/2012</span></td>
                                        </tr>
                                        <tr>
                                            <td style="height: 20px;" colspan="2">Email ve du an sharepoint 2013</td>
                                        </tr>
                                        <tr>
                                            <td style="height: 20px;" colspan="2">Tai sao lai the ma khong la the nay ma lai la the kia ....</td>
                                        </tr>
                                    </table>
                                </td>
                                <td style="width: 24px;">
                                    <div issign="1" class="signbox email-item-sign">&nbsp;</div>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
                <div class="email-item">
                    <div class="email-item-content">
                        <table class="tb-email-item-content" border="0" cellpadding="0" cellspacing="0">
                            <tr>
                                <td style="width: 24px;">
                                    <div ischeck="1" class="checkbox email-item-check">&nbsp;</div>
                                </td>
                                <td style="width: 100%;">
                                    <table class="aaa" border="0" cellpadding="0" cellspacing="0">
                                        <tr>
                                            <td style="height: 20px; width: 100%;">Song, Toi</td>
                                            <td style="height: 20px; text-wrap: none;"><span>20/12/2012</span></td>
                                        </tr>
                                        <tr>
                                            <td style="height: 20px;" colspan="2">Email ve du an sharepoint 2013</td>
                                        </tr>
                                        <tr>
                                            <td style="height: 20px;" colspan="2">Tai sao lai the ma khong la the nay ma lai la the kia ....</td>
                                        </tr>
                                    </table>
                                </td>
                                <td style="width: 24px;">
                                    <div issign="1" class="signbox email-item-sign">&nbsp;</div>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
                <div class="email-item">
                    <div class="email-item-content">
                        <table class="tb-email-item-content" border="0" cellpadding="0" cellspacing="0">
                            <tr>
                                <td style="width: 24px;">
                                    <div ischeck="1" class="checkbox email-item-check">&nbsp;</div>
                                </td>
                                <td style="width: 100%;">
                                    <table class="aaa" border="0" cellpadding="0" cellspacing="0">
                                        <tr>
                                            <td style="height: 20px; width: 100%;">Song, Toi</td>
                                            <td style="height: 20px; text-wrap: none;"><span>20/12/2012</span></td>
                                        </tr>
                                        <tr>
                                            <td style="height: 20px;" colspan="2">Email ve du an sharepoint 2013</td>
                                        </tr>
                                        <tr>
                                            <td style="height: 20px;" colspan="2">Tai sao lai the ma khong la the nay ma lai la the kia ....</td>
                                        </tr>
                                    </table>
                                </td>
                                <td style="width: 24px;">
                                    <div issign="1" class="signbox email-item-sign">&nbsp;</div>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
                <div class="email-item">
                    <div class="email-item-content">
                        <table class="tb-email-item-content" border="0" cellpadding="0" cellspacing="0">
                            <tr>
                                <td style="width: 24px;">
                                    <div class="checkbox email-item-check">&nbsp;</div>
                                </td>
                                <td style="width: 100%;">
                                    <table class="aaa" border="0" cellpadding="0" cellspacing="0">
                                        <tr>
                                            <td style="height: 20px; width: 100%;">Song, Toi</td>
                                            <td style="height: 20px; text-wrap: none;"><span>20/12/2012</span></td>
                                        </tr>
                                        <tr>
                                            <td style="height: 20px;" colspan="2">Email ve du an sharepoint 2013</td>
                                        </tr>
                                        <tr>
                                            <td style="height: 20px;" colspan="2">Tai sao lai the ma khong la the nay ma lai la the kia ....</td>
                                        </tr>
                                    </table>
                                </td>
                                <td style="width: 24px;">
                                    <div issign="1" class="signbox email-item-sign">&nbsp;</div>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>

                <div class="email-item">
                    <div class="email-item-content">
                        <table class="tb-email-item-content" border="0" cellpadding="0" cellspacing="0">
                            <tr>
                                <td style="width: 24px;">
                                    <div ischeck="1" class="checkbox email-item-check">&nbsp;</div>
                                </td>
                                <td style="width: 100%;">
                                    <table class="aaa" border="0" cellpadding="0" cellspacing="0">
                                        <tr>
                                            <td style="height: 20px; width: 100%;">Song, Toi</td>
                                            <td style="height: 20px; text-wrap: none;"><span>20/12/2012</span></td>
                                        </tr>
                                        <tr>
                                            <td style="height: 20px;" colspan="2">Email ve du an sharepoint 2013</td>
                                        </tr>
                                        <tr>
                                            <td style="height: 20px;" colspan="2">Tai sao lai the ma khong la the nay ma lai la the kia ....</td>
                                        </tr>
                                    </table>
                                </td>
                                <td style="width: 24px;">
                                    <div issign="1" class="signbox email-item-sign">&nbsp;</div>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>

                <div class="email-item">
                    <div class="email-item-content">
                        <table class="tb-email-item-content" border="0" cellpadding="0" cellspacing="0">
                            <tr>
                                <td style="width: 24px;">
                                    <div ischeck="1" class="checkbox email-item-check">&nbsp;</div>
                                </td>
                                <td style="width: 100%;">
                                    <table class="aaa" border="0" cellpadding="0" cellspacing="0">
                                        <tr>
                                            <td style="height: 20px; width: 100%;">Song, Toi</td>
                                            <td style="height: 20px; text-wrap: none;"><span>20/12/2012</span></td>
                                        </tr>
                                        <tr>
                                            <td style="height: 20px;" colspan="2">Email ve du an sharepoint 2013</td>
                                        </tr>
                                        <tr>
                                            <td style="height: 20px;" colspan="2">Tai sao lai the ma khong la the nay ma lai la the kia ....</td>
                                        </tr>
                                    </table>
                                </td>
                                <td style="width: 24px;">
                                    <div issign="1" class="signbox email-item-sign">&nbsp;</div>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>

                <div class="email-item">
                    <div class="email-item-content">
                        <table class="tb-email-item-content" border="0" cellpadding="0" cellspacing="0">
                            <tr>
                                <td style="width: 24px;">
                                    <div ischeck="1" class="checkbox email-item-check">&nbsp;</div>
                                </td>
                                <td style="width: 100%;">
                                    <table class="aaa" border="0" cellpadding="0" cellspacing="0">
                                        <tr>
                                            <td style="height: 20px; width: 100%;">Song, Toi</td>
                                            <td style="height: 20px; text-wrap: none;"><span>20/12/2012</span></td>
                                        </tr>
                                        <tr>
                                            <td style="height: 20px;" colspan="2">Email ve du an sharepoint 2013</td>
                                        </tr>
                                        <tr>
                                            <td style="height: 20px;" colspan="2">Tai sao lai the ma khong la the nay ma lai la the kia ....</td>
                                        </tr>
                                    </table>
                                </td>
                                <td style="width: 24px;">
                                    <div issign="1" class="signbox email-item-sign">&nbsp;</div>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>

                <div class="email-item">
                    <div class="email-item-content">
                        <table class="tb-email-item-content" border="0" cellpadding="0" cellspacing="0">
                            <tr>
                                <td style="width: 24px;">
                                    <div ischeck="1" class="checkbox email-item-check">&nbsp;</div>
                                </td>
                                <td style="width: 100%;">
                                    <table class="aaa" border="0" cellpadding="0" cellspacing="0">
                                        <tr>
                                            <td style="height: 20px; width: 100%;">Song, Toi</td>
                                            <td style="height: 20px; text-wrap: none;"><span>20/12/2012</span></td>
                                        </tr>
                                        <tr>
                                            <td style="height: 20px;" colspan="2">Email ve du an sharepoint 2013</td>
                                        </tr>
                                        <tr>
                                            <td style="height: 20px;" colspan="2">Tai sao lai the ma khong la the nay ma lai la the kia ....</td>
                                        </tr>
                                    </table>
                                </td>
                                <td style="width: 24px;">
                                    <div issign="1" class="signbox email-item-sign">&nbsp;</div>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>

                <div class="email-item">
                    <div class="email-item-content">
                        <table class="tb-email-item-content" border="0" cellpadding="0" cellspacing="0">
                            <tr>
                                <td style="width: 24px;">
                                    <div ischeck="1" class="checkbox email-item-check">&nbsp;</div>
                                </td>
                                <td style="width: 100%;">
                                    <table class="aaa" border="0" cellpadding="0" cellspacing="0">
                                        <tr>
                                            <td style="height: 20px; width: 100%;">Song, Toi</td>
                                            <td style="height: 20px; text-wrap: none;"><span>20/12/2012</span></td>
                                        </tr>
                                        <tr>
                                            <td style="height: 20px;" colspan="2">Email ve du an sharepoint 2013</td>
                                        </tr>
                                        <tr>
                                            <td style="height: 20px;" colspan="2">Tai sao lai the ma khong la the nay ma lai la the kia ....</td>
                                        </tr>
                                    </table>
                                </td>
                                <td style="width: 24px;">
                                    <div issign="1" class="signbox email-item-sign">&nbsp;</div>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>

                <div class="email-item">
                    <div class="email-item-content">
                        <table class="tb-email-item-content" border="0" cellpadding="0" cellspacing="0">
                            <tr>
                                <td style="width: 24px;">
                                    <div ischeck="1" class="checkbox email-item-check">&nbsp;</div>
                                </td>
                                <td style="width: 100%;">
                                    <table class="aaa" border="0" cellpadding="0" cellspacing="0">
                                        <tr>
                                            <td style="height: 20px; width: 100%;">Song, Toi</td>
                                            <td style="height: 20px; text-wrap: none;"><span>20/12/2012</span></td>
                                        </tr>
                                        <tr>
                                            <td style="height: 20px;" colspan="2">Email ve du an sharepoint 2013</td>
                                        </tr>
                                        <tr>
                                            <td style="height: 20px;" colspan="2">Tai sao lai the ma khong la the nay ma lai la the kia ....</td>
                                        </tr>
                                    </table>
                                </td>
                                <td style="width: 24px;">
                                    <div issign="1" class="signbox email-item-sign">&nbsp;</div>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>

                <div class="email-item">
                    <div class="email-item-content">
                        <table class="tb-email-item-content" border="0" cellpadding="0" cellspacing="0">
                            <tr>
                                <td style="width: 24px;">
                                    <div ischeck="1" class="checkbox email-item-check">&nbsp;</div>
                                </td>
                                <td style="width: 100%;">
                                    <table class="aaa" border="0" cellpadding="0" cellspacing="0">
                                        <tr>
                                            <td style="height: 20px; width: 100%;">Song, Toi</td>
                                            <td style="height: 20px; text-wrap: none;"><span>20/12/2012</span></td>
                                        </tr>
                                        <tr>
                                            <td style="height: 20px;" colspan="2">Email ve du an sharepoint 2013</td>
                                        </tr>
                                        <tr>
                                            <td style="height: 20px;" colspan="2">Tai sao lai the ma khong la the nay ma lai la the kia ....</td>
                                        </tr>
                                    </table>
                                </td>
                                <td style="width: 24px;">
                                    <div issign="1" class="signbox email-item-sign">&nbsp;</div>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>

            </div>

            <div id="detail" class="hide">
                <div class="sender-email">sender: songtran@yahoo.com.vn&nbsp;&nbsp;</div>

                <div class="nd absolute">
                    <div class="nd-email">
                        tai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhitai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                        tai sao lai the nhi<br />
                    </div>
                </div>

                <div class="button-email">
                    <div id="reply-button" class="bottom-icon">
                    </div>
                    <div id="delete-button" class="bottom-icon">
                    </div>
                    <div id="sign-button" class="bottom-icon">
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
