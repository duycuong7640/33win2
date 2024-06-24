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
        if ($domain == '33win2' || $domain == '33win2.blog') {
        } else {
            exit;
        }
    }
}
