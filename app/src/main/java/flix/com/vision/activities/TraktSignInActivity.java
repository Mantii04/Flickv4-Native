package flix.com.vision.activities;

import android.content.res.AssetManager;
import android.graphics.Typeface;
import android.os.Bundle;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.github.ybq.android.spinkit.SpinKitView;
import e.AbstractActivityC0842v;
import flix.com.vision.App;
import flix.com.vision.R;
import flix.com.vision.tv.Constant;
import h5.C0996j;
import org.json.JSONException;
import org.json.JSONObject;
import y4.m1;
import y4.n1;
import y4.r1;

/* loaded from: classes2.dex */
public class TraktSignInActivity extends AbstractActivityC0842v {

    /* renamed from: y, reason: collision with root package name */
    public static final /* synthetic */ int f15246y = 0;

    /* renamed from: b, reason: collision with root package name */
    public C0996j f15247b;

    /* renamed from: e, reason: collision with root package name */
    public Typeface f15248e;

    /* renamed from: f, reason: collision with root package name */
    public r1 f15249f;

    /* renamed from: j, reason: collision with root package name */
    public String f15250j;

    /* renamed from: m, reason: collision with root package name */
    public String f15251m;

    /* renamed from: n, reason: collision with root package name */
    public int f15252n;

    /* renamed from: p, reason: collision with root package name */
    public int f15253p;

    /* renamed from: q, reason: collision with root package name */
    public LinearLayout f15254q;

    /* renamed from: r, reason: collision with root package name */
    public SpinKitView f15255r;

    /* renamed from: s, reason: collision with root package name */
    public TextView f15256s;

    /* renamed from: t, reason: collision with root package name */
    public TextView f15257t;

    /* renamed from: u, reason: collision with root package name */
    public TextView f15258u;

    /* renamed from: v, reason: collision with root package name */
    public TextView f15259v;

    /* renamed from: w, reason: collision with root package name */
    public TextView f15260w;

    /* renamed from: x, reason: collision with root package name */
    public boolean f15261x = false;

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
        try {
            this.f15249f.cancel();
        } catch (Exception e3) {
            e3.printStackTrace();
        }
    }

    @Override // androidx.fragment.app.H, androidx.activity.ComponentActivity, z.r, android.app.Activity
    public void onCreate(Bundle bundle) {
        JSONObject jSONObject;
        super.onCreate(bundle);
        setContentView(R.layout.activity_trakt_activation);
        AssetManager assets = getAssets();
        String str = Constant.f16184b;
        this.f15248e = Typeface.createFromAsset(assets, "fonts/pproduct_sans_rregular.ttf");
        this.f15247b = new C0996j();
        this.f15254q = (LinearLayout) findViewById(R.id.main_content);
        this.f15255r = (SpinKitView) findViewById(R.id.loader);
        this.f15256s = (TextView) findViewById(R.id.activation_code_text);
        this.f15257t = (TextView) findViewById(R.id.trakt_text_1);
        this.f15258u = (TextView) findViewById(R.id.trakt_text_2);
        this.f15259v = (TextView) findViewById(R.id.trakt_text_3);
        this.f15260w = (TextView) findViewById(R.id.trakt_text_4);
        this.f15247b.applyFontToView(this.f15257t, this.f15248e);
        this.f15247b.applyFontToView(this.f15258u, this.f15248e);
        this.f15247b.applyFontToView(this.f15259v, this.f15248e);
        this.f15247b.applyFontToView(this.f15260w, this.f15248e);
        this.f15247b.applyFontToView(this.f15256s, this.f15248e);
        try {
            jSONObject = new JSONObject("{\n    \"client_id\": \"39c944040d5f19862b77e7a66b6c419af653c1e3bf226cc691eb2abbb551730c\"\n}");
        } catch (JSONException e3) {
            e3.printStackTrace();
            jSONObject = null;
        }
        JSONObject jSONObject2 = jSONObject;
        if (jSONObject2 == null) {
            return;
        }
        App.getInstance().getRequestQueue().add(new n1(1, "https://api.trakt.tv/oauth/device/code", jSONObject2, new m1(this, 0), new androidx.media3.exoplayer.source.chunk.a(27)));
    }
}
