<?php

if (!class_exists('dataCategory')) {
    final class dataCategory
    {
//        public const TYPE = ['home', 'new', 'product', 'footer'];
        public const TYPE = ['link'];
        public const TYPE_NAME = ['link' => 'Link', 'home' => 'Trang chủ', 'new' => 'Tin tức', 'product' => 'Sản phẩm', 'footer' => 'Footer'];
        public const ACTIVE = 1;
        public const DE_ACTIVE = 0;

    }
}
