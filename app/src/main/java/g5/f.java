package g5;

import android.view.View;
import android.widget.Toast;
import flix.com.vision.ui.auth.RegisterActivity;

/* loaded from: classes2.dex */
public final class f implements View.OnClickListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ RegisterActivity f16477b;

    public f(RegisterActivity registerActivity) {
        this.f16477b = registerActivity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        RegisterActivity registerActivity = this.f16477b;
        String trim = registerActivity.f16301b.getText().toString().trim();
        String trim2 = registerActivity.f16302e.getText().toString().trim();
        String trim3 = registerActivity.f16303f.getText().toString().trim();
        if (trim.isEmpty() || trim2.isEmpty() || trim3.isEmpty()) {
            Toast.makeText(registerActivity, "Please enter name, email, and password", 0).show();
        } else {
            registerActivity.f16304j.setEnabled(false);
            registerActivity.f16305m.register(trim, trim2, trim3, new g(registerActivity));
        }
    }
}
