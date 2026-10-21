package g5;

import android.util.Log;
import android.widget.Toast;
import flix.com.vision.ui.auth.RegisterActivity;

/* loaded from: classes2.dex */
public final class g implements O4.d {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ RegisterActivity f16478a;

    public g(RegisterActivity registerActivity) {
        this.f16478a = registerActivity;
    }

    @Override // O4.d
    public void onError(int i2, String str) {
        String str2 = "Registration failed: " + str + " (Code: " + i2 + ")";
        RegisterActivity registerActivity = this.f16478a;
        Toast.makeText(registerActivity, str2, 1).show();
        Log.e("RegisterActivity", str2);
        registerActivity.f16304j.setEnabled(true);
    }

    @Override // O4.d
    public void onFailure(Throwable th) {
        String str = "Network error: " + th.getMessage();
        RegisterActivity registerActivity = this.f16478a;
        Toast.makeText(registerActivity, str, 1).show();
        Log.e("RegisterActivity", str, th);
        registerActivity.f16304j.setEnabled(true);
    }

    @Override // O4.d
    public /* synthetic */ void onSuccess(Object obj) {
        if (obj != null) {
            throw new ClassCastException();
        }
        onSuccess((F4.e) null);
    }

    public void onSuccess(F4.e eVar) {
        Toast.makeText(this.f16478a, "Registration successful!", 0).show();
        throw null;
    }
}
