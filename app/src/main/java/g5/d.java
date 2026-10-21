package g5;

import android.widget.Toast;
import flix.com.vision.ui.auth.LoginActivity;

/* loaded from: classes2.dex */
public final class d implements O4.d {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ LoginActivity f16475a;

    public d(LoginActivity loginActivity) {
        this.f16475a = loginActivity;
    }

    @Override // O4.d
    public void onError(int i2, String str) {
        LoginActivity loginActivity = this.f16475a;
        Toast.makeText(loginActivity, "Logout failed: " + str, 0).show();
        loginActivity.f16296m.setEnabled(true);
    }

    @Override // O4.d
    public void onFailure(Throwable th) {
        LoginActivity loginActivity = this.f16475a;
        Toast.makeText(loginActivity, "Network error during logout", 0).show();
        loginActivity.f16296m.setEnabled(true);
    }

    @Override // O4.d
    public void onSuccess(Void r32) {
        LoginActivity loginActivity = this.f16475a;
        Toast.makeText(loginActivity, "Logged out successfully", 0).show();
        loginActivity.f16296m.setEnabled(true);
        loginActivity.e();
    }
}
