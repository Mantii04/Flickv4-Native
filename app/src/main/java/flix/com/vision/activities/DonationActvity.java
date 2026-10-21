package flix.com.vision.activities;

import B4.ViewOnClickListenerC0038a;
import android.os.Bundle;
import android.widget.Button;
import e.AbstractActivityC0842v;
import flix.com.vision.R;

/* loaded from: classes2.dex */
public class DonationActvity extends AbstractActivityC0842v {

    /* renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ int f14550b = 0;

    @Override // androidx.fragment.app.H, androidx.activity.ComponentActivity, z.r, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_donation_actvity);
        ((Button) findViewById(R.id.mail_open)).setOnClickListener(new ViewOnClickListenerC0038a(this, 11));
    }
}
