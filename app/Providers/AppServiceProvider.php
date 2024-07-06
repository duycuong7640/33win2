<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     */
    public function register(): void
    {
        //
    }

    /**
     * Bootstrap any application services.
     */
    public function boot(): void
    {
        $request = app(\Illuminate\Http\Request::class);
        $domain = $request->getHost();
        echo $domain;
        if (
            $domain == '33win2' ||
            $domain == '33win2.blog' ||
            $domain == 'www.33win2.blog' ||
            $domain == '33win03.blog' ||
            $domain == 'www.33win03.blog' ||
            $domain == '33win39.blog' ||
            $domain == 'www.33win39.blog' ||
            $domain == '33win5.org' ||
            $domain == 'www.33win5.org' ||
            $domain == '33win7.blog' ||
            $domain == 'www.33win7.blog' ||
            $domain == '33win8.blog' ||
            $domain == 'www.33win8.blog' ||
            $domain == '33win99.org' ||
            $domain == 'www.33win99.org' ||
            $domain == '33win9.blog' ||
            $domain == 'www.33win9.blog'
        ) {
        } else {
            exit;
        }
    }
}
