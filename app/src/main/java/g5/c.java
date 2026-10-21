package g5;

import android.view.View;
import flix.com.vision.ui.auth.LoginActivity;

/* loaded from: classes2.dex */
public final class c implements View.OnClickListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ LoginActivity f16474b;

    public c(LoginActivity loginActivity) {
        this.f16474b = loginActivity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        LoginActivity loginActivity = this.f16474b;
        loginActivity.f16296m.setEnabled(false);
        loginActivity.f16300r.logout(new d(loginActivity));
    }
}
