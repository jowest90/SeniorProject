<p>You are receiving this email because we received a password reset request for your ADMIN account.</p>
<p>Click here to reset your password: <a href="{{ $link = url('admin/password/reset', $token).'?email='.urlencode($user->getEmailForPasswordReset()) }}"> {{ $link }} </a></p>
<p>If you did not request a password reset, no further action is required.</p>
