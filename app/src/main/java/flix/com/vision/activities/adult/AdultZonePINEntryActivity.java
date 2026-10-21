package flix.com.vision.activities.adult;

import E4.a;
import Q4.d;
import android.app.FragmentManager;
import android.content.Intent;
import android.content.res.AssetManager;
import android.graphics.Typeface;
import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import e.AbstractActivityC0842v;
import flix.com.vision.App;
import flix.com.vision.R;
import flix.com.vision.activities.adult.AdultZonePINEntryActivity;
import flix.com.vision.tv.Constant;
import h5.C0996j;
import z4.ViewOnClickListenerC2007p;

/* loaded from: classes2.dex */
public class AdultZonePINEntryActivity extends AbstractActivityC0842v {

    /* renamed from: t, reason: collision with root package name */
    public static final /* synthetic */ int f15396t = 0;

    /* renamed from: b, reason: collision with root package name */
    public C0996j f15397b;

    /* renamed from: e, reason: collision with root package name */
    public Typeface f15398e;

    /* renamed from: f, reason: collision with root package name */
    public TextView f15399f;

    /* renamed from: j, reason: collision with root package name */
    public TextView f15400j;

    /* renamed from: m, reason: collision with root package name */
    public TextView f15401m;

    /* renamed from: n, reason: collision with root package name */
    public RelativeLayout f15402n;

    /* renamed from: p, reason: collision with root package name */
    public RelativeLayout f15403p;

    /* renamed from: q, reason: collision with root package name */
    public FrameLayout f15404q;

    /* renamed from: r, reason: collision with root package name */
    public EditText f15405r;

    /* renamed from: s, reason: collision with root package name */
    public boolean f15406s = false;

    public final void e() {
        if (!this.f15405r.getText().toString().equalsIgnoreCase(App.getInstance().f14440s.getString("pref_adult_zone_pin", null))) {
            Toast.makeText(getBaseContext(), "Wrong PIN!", 1).show();
            this.f15405r.setText("");
            return;
        }
        if (this.f15406s) {
            App.getInstance().f14440s.edit().putBoolean("pref_adult_zone_pin_set", false).apply();
            startActivity(new Intent(this, (Class<?>) AdultPINSetupActivity.class));
            finish();
            return;
        }
        FragmentManager fragmentManager = getFragmentManager();
        d newInstance = d.newInstance(this, false);
        newInstance.setTitle("Adult Only");
        newInstance.setMessage("Can you please confirm YOU ARE 18+ ?");
        newInstance.setButton1("NEVER MIND", new ViewOnClickListenerC2007p(this, 2));
        newInstance.setButton2("YES, I AM", new ViewOnClickListenerC2007p(this, 3));
        try {
            newInstance.show(fragmentManager, "");
        } catch (Exception e3) {
            e3.printStackTrace();
        }
    }

    @Override // androidx.fragment.app.H, androidx.activity.ComponentActivity, z.r, android.app.Activity
    public void onCreate(Bundle bundle) {
        final int i2 = 1;
        super.onCreate(bundle);
        setContentView(R.layout.adult_pin_entry_activity);
        AssetManager assets = getAssets();
        String str = Constant.f16184b;
        this.f15398e = Typeface.createFromAsset(assets, "fonts/pproduct_sans_rregular.ttf");
        this.f15397b = new C0996j();
        final int i7 = 0;
        this.f15406s = getIntent().getBooleanExtra("isPINChange", false);
        this.f15404q = (FrameLayout) findViewById(R.id.main_relative_view);
        this.f15403p = (RelativeLayout) findViewById(R.id.confirm_pin_button);
        this.f15402n = (RelativeLayout) findViewById(R.id.cancel_button);
        this.f15405r = (EditText) findViewById(R.id.edit_text_enter_pin);
        this.f15401m = (TextView) findViewById(R.id.adult_pin_entry_title);
        this.f15399f = (TextView) findViewById(R.id.confirm_adult_label);
        this.f15400j = (TextView) findViewById(R.id.save_label);
        App.extractDominantColor(this.f15404q);
        this.f15403p.setOnFocusChangeListener(new View.OnFocusChangeListener(this) { // from class: z4.o

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ AdultZonePINEntryActivity f21463e;

            {
                this.f21463e = this;
            }

            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z6) {
                switch (i7) {
                    case 0:
                        AdultZonePINEntryActivity adultZonePINEntryActivity = this.f21463e;
                        if (!z6) {
                            adultZonePINEntryActivity.f15399f.setTextColor(adultZonePINEntryActivity.getResources().getColor(R.color.white));
                            break;
                        } else {
                            adultZonePINEntryActivity.f15399f.setTextColor(adultZonePINEntryActivity.getResources().getColor(R.color.black));
                            break;
                        }
                    default:
                        AdultZonePINEntryActivity adultZonePINEntryActivity2 = this.f21463e;
                        if (!z6) {
                            adultZonePINEntryActivity2.f15400j.setTextColor(adultZonePINEntryActivity2.getResources().getColor(R.color.white));
                            break;
                        } else {
                            adultZonePINEntryActivity2.f15400j.setTextColor(adultZonePINEntryActivity2.getResources().getColor(R.color.black));
                            break;
                        }
                }
            }
        });
        this.f15402n.setOnFocusChangeListener(new View.OnFocusChangeListener(this) { // from class: z4.o

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ AdultZonePINEntryActivity f21463e;

            {
                this.f21463e = this;
            }

            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z6) {
                switch (i2) {
                    case 0:
                        AdultZonePINEntryActivity adultZonePINEntryActivity = this.f21463e;
                        if (!z6) {
                            adultZonePINEntryActivity.f15399f.setTextColor(adultZonePINEntryActivity.getResources().getColor(R.color.white));
                            break;
                        } else {
                            adultZonePINEntryActivity.f15399f.setTextColor(adultZonePINEntryActivity.getResources().getColor(R.color.black));
                            break;
                        }
                    default:
                        AdultZonePINEntryActivity adultZonePINEntryActivity2 = this.f21463e;
                        if (!z6) {
                            adultZonePINEntryActivity2.f15400j.setTextColor(adultZonePINEntryActivity2.getResources().getColor(R.color.white));
                            break;
                        } else {
                            adultZonePINEntryActivity2.f15400j.setTextColor(adultZonePINEntryActivity2.getResources().getColor(R.color.black));
                            break;
                        }
                }
            }
        });
        this.f15405r.setOnEditorActionListener(new a(this, 4));
        this.f15402n.setOnClickListener(new ViewOnClickListenerC2007p(this, i7));
        this.f15403p.setOnClickListener(new ViewOnClickListenerC2007p(this, i2));
        this.f15397b.applyFontToView(this.f15399f, this.f15398e);
        this.f15397b.applyFontToView(this.f15400j, this.f15398e);
        this.f15397b.applyFontToView(this.f15405r, this.f15398e);
        this.f15397b.applyFontToView(this.f15401m, this.f15398e);
    }
}
