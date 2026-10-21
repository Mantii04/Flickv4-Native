package flix.com.vision.ui.auth;

import O4.e;
import android.os.Bundle;
import android.widget.Button;
import android.widget.EditText;
import e.AbstractActivityC0842v;
import flix.com.vision.R;
import g5.f;

/* loaded from: classes2.dex */
public class RegisterActivity extends AbstractActivityC0842v {

    /* renamed from: b, reason: collision with root package name */
    public EditText f16301b;

    /* renamed from: e, reason: collision with root package name */
    public EditText f16302e;

    /* renamed from: f, reason: collision with root package name */
    public EditText f16303f;

    /* renamed from: j, reason: collision with root package name */
    public Button f16304j;

    /* renamed from: m, reason: collision with root package name */
    public e f16305m;

    @Override // androidx.fragment.app.H, androidx.activity.ComponentActivity, z.r, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_register);
        this.f16301b = (EditText) findViewById(R.id.name_edit_text);
        this.f16302e = (EditText) findViewById(R.id.email_edit_text);
        this.f16303f = (EditText) findViewById(R.id.password_edit_text);
        this.f16304j = (Button) findViewById(R.id.register_button);
        this.f16305m = e.getInstance(getApplicationContext());
        this.f16304j.setOnClickListener(new f(this));
    }
}
