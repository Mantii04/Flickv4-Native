package flix.com.vision.api.realdebrid;

import A.i;
import I4.c;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.widget.TextView;
import com.github.ybq.android.spinkit.SpinKitView;
import e.AbstractActivityC0842v;
import flix.com.vision.App;
import flix.com.vision.R;
import okhttp3.OkHttpClient;
import okhttp3.Request;

/* loaded from: classes2.dex */
public class RealDebridLoginActivity extends AbstractActivityC0842v {

    /* renamed from: q, reason: collision with root package name */
    public static final /* synthetic */ int f15833q = 0;

    /* renamed from: b, reason: collision with root package name */
    public SpinKitView f15834b;

    /* renamed from: e, reason: collision with root package name */
    public TextView f15835e;

    /* renamed from: f, reason: collision with root package name */
    public String f15836f;

    /* renamed from: j, reason: collision with root package name */
    public String f15837j;

    /* renamed from: m, reason: collision with root package name */
    public String f15838m;

    /* renamed from: n, reason: collision with root package name */
    public String f15839n;

    /* renamed from: p, reason: collision with root package name */
    public SharedPreferences f15840p;

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
        finish();
    }

    @Override // androidx.fragment.app.H, androidx.activity.ComponentActivity, z.r, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.real_debrid_activiity);
        try {
            getWindow().addFlags(128);
        } catch (Exception unused) {
        }
        i.x(App.getInstance().f14440s, "RD_CLEANED", true);
        this.f15834b = (SpinKitView) findViewById(R.id.loader);
        this.f15835e = (TextView) findViewById(R.id.rd_code);
        this.f15840p = App.getInstance().f14440s;
        new OkHttpClient().newCall(new Request.Builder().header("User-Agent", RealDebridCommon.f15832r).url(RealDebridCommon.f15830p).build()).enqueue(new c(this));
    }
}
