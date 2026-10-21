package g5;

import android.util.Log;
import android.widget.Toast;
import flix.com.vision.ui.auth.LoginActivity;

/* loaded from: classes2.dex */
public final class e implements O4.d {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ LoginActivity f16476a;

    public e(LoginActivity loginActivity) {
        this.f16476a = loginActivity;
    }

    @Override // O4.d
    public void onError(int i2, String str) {
        String str2 = "Login failed: " + str + " (Code: " + i2 + ")";
        LoginActivity loginActivity = this.f16476a;
        Toast.makeText(loginActivity, str2, 1).show();
        Log.e("LoginActivity", str2);
        loginActivity.f16294f.setEnabled(true);
        loginActivity.f16295j.setEnabled(true);
    }

    @Override // O4.d
    public void onFailure(Throwable th) {
        String str = "Network error: " + th.getMessage();
        LoginActivity loginActivity = this.f16476a;
        Toast.makeText(loginActivity, str, 1).show();
        Log.e("LoginActivity", str, th);
        loginActivity.f16294f.setEnabled(true);
        loginActivity.f16295j.setEnabled(true);
    }

    @Override // O4.d
    public /* synthetic */ void onSuccess(Object obj) {
        if (obj != null) {
            throw new ClassCastException();
        }
        onSuccess((F4.e) null);
    }

    public void onSuccess(F4.e eVar) {
        Toast.makeText(this.f16476a, "Login successful!", 0).show();
        throw null;
    }
}
