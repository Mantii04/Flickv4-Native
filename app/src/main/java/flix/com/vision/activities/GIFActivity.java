package flix.com.vision.activities;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.widget.LinearLayout;
import e.AbstractActivityC0842v;
import flix.com.vision.App;
import flix.com.vision.R;
import flix.com.vision.activities.GIFActivity;

/* loaded from: classes2.dex */
public class GIFActivity extends AbstractActivityC0842v {

    /* renamed from: f, reason: collision with root package name */
    public static final /* synthetic */ int f14699f = 0;

    /* renamed from: b, reason: collision with root package name */
    public LinearLayout f14700b;

    /* renamed from: e, reason: collision with root package name */
    public LinearLayout f14701e;

    @Override // androidx.fragment.app.H, androidx.activity.ComponentActivity, z.r, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_gifactivity);
        this.f14701e = (LinearLayout) findViewById(R.id.install_android);
        this.f14700b = (LinearLayout) findViewById(R.id.install_firetv);
        final int i2 = 0;
        this.f14701e.setOnClickListener(new View.OnClickListener(this) { // from class: y4.P

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ GIFActivity f21158e;

            {
                this.f21158e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                GIFActivity gIFActivity = this.f21158e;
                switch (i2) {
                    case 0:
                        int i7 = GIFActivity.f14699f;
                        gIFActivity.getClass();
                        String o6 = A.i.o(new StringBuilder(), App.getInstance().f14444w, "/androidtv.html");
                        Intent intent = new Intent("android.intent.action.VIEW");
                        intent.setData(Uri.parse(o6));
                        gIFActivity.startActivity(intent);
                        break;
                    default:
                        int i8 = GIFActivity.f14699f;
                        gIFActivity.getClass();
                        String o7 = A.i.o(new StringBuilder(), App.getInstance().f14444w, "/firetv.html");
                        Intent intent2 = new Intent("android.intent.action.VIEW");
                        intent2.setData(Uri.parse(o7));
                        gIFActivity.startActivity(intent2);
                        break;
                }
            }
        });
        final int i7 = 1;
        this.f14700b.setOnClickListener(new View.OnClickListener(this) { // from class: y4.P

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ GIFActivity f21158e;

            {
                this.f21158e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                GIFActivity gIFActivity = this.f21158e;
                switch (i7) {
                    case 0:
                        int i72 = GIFActivity.f14699f;
                        gIFActivity.getClass();
                        String o6 = A.i.o(new StringBuilder(), App.getInstance().f14444w, "/androidtv.html");
                        Intent intent = new Intent("android.intent.action.VIEW");
                        intent.setData(Uri.parse(o6));
                        gIFActivity.startActivity(intent);
                        break;
                    default:
                        int i8 = GIFActivity.f14699f;
                        gIFActivity.getClass();
                        String o7 = A.i.o(new StringBuilder(), App.getInstance().f14444w, "/firetv.html");
                        Intent intent2 = new Intent("android.intent.action.VIEW");
                        intent2.setData(Uri.parse(o7));
                        gIFActivity.startActivity(intent2);
                        break;
                }
            }
        });
    }
}
