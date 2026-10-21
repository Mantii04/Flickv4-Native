package g5;

import android.view.View;
import android.widget.Toast;
import flix.com.vision.ui.auth.LoginActivity;

/* renamed from: g5.a, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class ViewOnClickListenerC0956a implements View.OnClickListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ LoginActivity f16472b;

    public ViewOnClickListenerC0956a(LoginActivity loginActivity) {
        this.f16472b = loginActivity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        LoginActivity loginActivity = this.f16472b;
        String trim = loginActivity.f16292b.getText().toString().trim();
        String trim2 = loginActivity.f16293e.getText().toString().trim();
        if (trim.isEmpty() || trim2.isEmpty()) {
            Toast.makeText(loginActivity, "Please enter both email and password", 0).show();
            return;
        }
        loginActivity.f16294f.setEnabled(false);
        loginActivity.f16295j.setEnabled(false);
        loginActivity.f16300r.login(trim, trim2, new e(loginActivity));
    }
}
