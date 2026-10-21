package g5;

import android.content.Intent;
import android.view.View;
import flix.com.vision.ui.auth.LoginActivity;
import flix.com.vision.ui.auth.RegisterActivity;

/* loaded from: classes2.dex */
public final class b implements View.OnClickListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ LoginActivity f16473b;

    public b(LoginActivity loginActivity) {
        this.f16473b = loginActivity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        LoginActivity loginActivity = this.f16473b;
        loginActivity.startActivity(new Intent(loginActivity, (Class<?>) RegisterActivity.class));
    }
}
