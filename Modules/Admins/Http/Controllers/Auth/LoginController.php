<?php

namespace Modules\Admins\Http\Controllers\Auth;

use App\Helpers\Helpers;
use App\Services\Admins\LoginService;
use Illuminate\Contracts\Support\Renderable;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\MessageBag;
use Modules\Admins\Http\Requests\LoginRequest;

class LoginController extends Controller
{
    private $loginService;

    public function __construct(LoginService $loginService)
    {
        $this->loginService = $loginService;
    }

    /**
     * Login admin
     * @method GET
     */
    public function login()
    {
        try {
            if (Auth::guard('admins')->check()) {
                return redirect()->route('admin.index');
            }
            $data['common'] = Helpers::titleAction([\adminForm::FORM_HEAD['LOGIN']]);
            return view('admins::auth.login', ['data' => $data]);
        } catch (\Exception $e) {
            Helpers::pre($e->getMessage());
            abort('500');
        }
    }

    public function browser(){
        return view('admins::ckfinder.index');
    }

    /**
     * Login admin
     * @method POST
     */
    public function postLogin(LoginRequest $request)
    {
        try {
            $data = $request->all();
            $userAfterLogin = $this->loginService->loginAdmin($data);
            if (!$userAfterLogin) {
                $errors = new MessageBag(['accountNotFound' => \adminNotify::LOGIN_FAIL]);
                return back()->withInput($data)->withErrors($errors);
            }
            return redirect()->route('admin.index');
        } catch (\Exception $e) {Helpers::pre($e->getMessage());
            abort('500');
        }
    }

    public function logout()
    {
        Auth::guard(Helpers::renderGuard())->logout();
        return redirect()->route('admin.get_login_admin');
    }
}
