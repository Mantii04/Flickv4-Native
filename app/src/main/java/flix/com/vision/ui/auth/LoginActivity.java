package flix.com.vision.ui.auth;

import D4.c;
import O4.e;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import e.AbstractActivityC0842v;
import flix.com.vision.R;
import g5.ViewOnClickListenerC0956a;
import g5.b;

/* loaded from: classes2.dex */
public class LoginActivity extends AbstractActivityC0842v {

    /* renamed from: b, reason: collision with root package name */
    public EditText f16292b;

    /* renamed from: e, reason: collision with root package name */
    public EditText f16293e;

    /* renamed from: f, reason: collision with root package name */
    public Button f16294f;

    /* renamed from: j, reason: collision with root package name */
    public Button f16295j;

    /* renamed from: m, reason: collision with root package name */
    public Button f16296m;

    /* renamed from: n, reason: collision with root package name */
    public View f16297n;

    /* renamed from: p, reason: collision with root package name */
    public View f16298p;

    /* renamed from: q, reason: collision with root package name */
    public TextView f16299q;

    /* renamed from: r, reason: collision with root package name */
    public e f16300r;

    public final void e() {
        if (!c.isLoggedIn(this)) {
            this.f16297n.setVisibility(0);
            this.f16298p.setVisibility(8);
            return;
        }
        this.f16297n.setVisibility(8);
        this.f16298p.setVisibility(0);
        String userEmail = c.getUserEmail(this);
        if (userEmail == null || userEmail.isEmpty()) {
            this.f16299q.setVisibility(8);
        } else {
            this.f16299q.setText(userEmail);
            this.f16299q.setVisibility(0);
        }
    }

    @Override // androidx.fragment.app.H, androidx.activity.ComponentActivity, z.r, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_login);
        this.f16292b = (EditText) findViewById(R.id.email_edit_text);
        this.f16293e = (EditText) findViewById(R.id.password_edit_text);
        this.f16294f = (Button) findViewById(R.id.login_button);
        this.f16295j = (Button) findViewById(R.id.register_button);
        this.f16296m = (Button) findViewById(R.id.logout_button);
        this.f16297n = findViewById(R.id.login_form_container);
        this.f16298p = findViewById(R.id.logged_in_container);
        this.f16299q = (TextView) findViewById(R.id.user_email_text);
        this.f16300r = e.getInstance(getApplicationContext());
        this.f16294f.setOnClickListener(new ViewOnClickListenerC0956a(this));
        this.f16295j.setOnClickListener(new b(this));
        this.f16296m.setOnClickListener(new g5.c(this));
        e();
    }

    @Override // androidx.fragment.app.H, android.app.Activity
    public void onResume() {
        super.onResume();
        e();
    }
}
