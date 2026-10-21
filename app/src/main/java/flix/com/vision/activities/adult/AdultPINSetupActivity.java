package flix.com.vision.activities.adult;

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
import flix.com.vision.activities.adult.AdultPINSetupActivity;
import flix.com.vision.activities.adult.AdultZonePINEntryActivity;
import flix.com.vision.tv.Constant;
import h5.C0996j;

/* loaded from: classes2.dex */
public class AdultPINSetupActivity extends AbstractActivityC0842v {

    /* renamed from: t, reason: collision with root package name */
    public static final /* synthetic */ int f15336t = 0;

    /* renamed from: b, reason: collision with root package name */
    public C0996j f15337b;

    /* renamed from: e, reason: collision with root package name */
    public Typeface f15338e;

    /* renamed from: f, reason: collision with root package name */
    public TextView f15339f;

    /* renamed from: j, reason: collision with root package name */
    public TextView f15340j;

    /* renamed from: m, reason: collision with root package name */
    public TextView f15341m;

    /* renamed from: n, reason: collision with root package name */
    public RelativeLayout f15342n;

    /* renamed from: p, reason: collision with root package name */
    public RelativeLayout f15343p;

    /* renamed from: q, reason: collision with root package name */
    public FrameLayout f15344q;

    /* renamed from: r, reason: collision with root package name */
    public EditText f15345r;

    /* renamed from: s, reason: collision with root package name */
    public EditText f15346s;

    @Override // androidx.fragment.app.H, androidx.activity.ComponentActivity, z.r, android.app.Activity
    public void onCreate(Bundle bundle) {
        final int i2 = 1;
        final int i7 = 0;
        super.onCreate(bundle);
        setContentView(R.layout.activity_adult_pin_setup);
        AssetManager assets = getAssets();
        String str = Constant.f16184b;
        this.f15338e = Typeface.createFromAsset(assets, "fonts/pproduct_sans_rregular.ttf");
        this.f15337b = new C0996j();
        this.f15344q = (FrameLayout) findViewById(R.id.main_relative_view);
        this.f15341m = (TextView) findViewById(R.id.adult_pin_set_title);
        this.f15343p = (RelativeLayout) findViewById(R.id.save_button);
        this.f15342n = (RelativeLayout) findViewById(R.id.cancel_button);
        this.f15345r = (EditText) findViewById(R.id.edit_text_enter_pin);
        this.f15346s = (EditText) findViewById(R.id.edit_text_repeat_pin);
        this.f15339f = (TextView) findViewById(R.id.save_open_label);
        this.f15340j = (TextView) findViewById(R.id.save_label);
        App.extractDominantColor(this.f15344q);
        this.f15345r.clearFocus();
        this.f15343p.setOnFocusChangeListener(new View.OnFocusChangeListener(this) { // from class: z4.f

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ AdultPINSetupActivity f21447e;

            {
                this.f21447e = this;
            }

            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z6) {
                switch (i7) {
                    case 0:
                        AdultPINSetupActivity adultPINSetupActivity = this.f21447e;
                        if (!z6) {
                            adultPINSetupActivity.f15339f.setTextColor(adultPINSetupActivity.getResources().getColor(R.color.white));
                            break;
                        } else {
                            adultPINSetupActivity.f15339f.setTextColor(adultPINSetupActivity.getResources().getColor(R.color.black));
                            break;
                        }
                    default:
                        AdultPINSetupActivity adultPINSetupActivity2 = this.f21447e;
                        if (!z6) {
                            adultPINSetupActivity2.f15340j.setTextColor(adultPINSetupActivity2.getResources().getColor(R.color.white));
                            break;
                        } else {
                            adultPINSetupActivity2.f15340j.setTextColor(adultPINSetupActivity2.getResources().getColor(R.color.black));
                            break;
                        }
                }
            }
        });
        this.f15342n.setOnFocusChangeListener(new View.OnFocusChangeListener(this) { // from class: z4.f

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ AdultPINSetupActivity f21447e;

            {
                this.f21447e = this;
            }

            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z6) {
                switch (i2) {
                    case 0:
                        AdultPINSetupActivity adultPINSetupActivity = this.f21447e;
                        if (!z6) {
                            adultPINSetupActivity.f15339f.setTextColor(adultPINSetupActivity.getResources().getColor(R.color.white));
                            break;
                        } else {
                            adultPINSetupActivity.f15339f.setTextColor(adultPINSetupActivity.getResources().getColor(R.color.black));
                            break;
                        }
                    default:
                        AdultPINSetupActivity adultPINSetupActivity2 = this.f21447e;
                        if (!z6) {
                            adultPINSetupActivity2.f15340j.setTextColor(adultPINSetupActivity2.getResources().getColor(R.color.white));
                            break;
                        } else {
                            adultPINSetupActivity2.f15340j.setTextColor(adultPINSetupActivity2.getResources().getColor(R.color.black));
                            break;
                        }
                }
            }
        });
        this.f15342n.setOnClickListener(new View.OnClickListener(this) { // from class: z4.g

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ AdultPINSetupActivity f21449e;

            {
                this.f21449e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AdultPINSetupActivity adultPINSetupActivity = this.f21449e;
                switch (i7) {
                    case 0:
                        int i8 = AdultPINSetupActivity.f15336t;
                        adultPINSetupActivity.finish();
                        break;
                    default:
                        String obj = adultPINSetupActivity.f15345r.getText().toString();
                        String obj2 = adultPINSetupActivity.f15346s.getText().toString();
                        if (!obj.isEmpty() && !obj2.isEmpty()) {
                            if (obj.length() != 4 || obj2.length() != 4) {
                                Toast.makeText(adultPINSetupActivity.getBaseContext(), "Please enter 4 digit PIN", 1).show();
                                break;
                            } else if (!obj.equalsIgnoreCase(obj2)) {
                                Toast.makeText(adultPINSetupActivity.getBaseContext(), "Please repeat same PIN", 1).show();
                                break;
                            } else {
                                App.getInstance().f14440s.edit().putBoolean("pref_adult_zone_pin_set", true).apply();
                                App.getInstance().f14440s.edit().putString("pref_adult_zone_pin", obj).apply();
                                Toast.makeText(adultPINSetupActivity.getBaseContext(), "PIN Successfully Saved", 1).show();
                                adultPINSetupActivity.startActivity(new Intent(adultPINSetupActivity, (Class<?>) AdultZonePINEntryActivity.class));
                                adultPINSetupActivity.finish();
                                break;
                            }
                        } else {
                            Toast.makeText(adultPINSetupActivity.getBaseContext(), "Please enter PIN", 1).show();
                            break;
                        }
                        break;
                }
            }
        });
        this.f15343p.setOnClickListener(new View.OnClickListener(this) { // from class: z4.g

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ AdultPINSetupActivity f21449e;

            {
                this.f21449e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AdultPINSetupActivity adultPINSetupActivity = this.f21449e;
                switch (i2) {
                    case 0:
                        int i8 = AdultPINSetupActivity.f15336t;
                        adultPINSetupActivity.finish();
                        break;
                    default:
                        String obj = adultPINSetupActivity.f15345r.getText().toString();
                        String obj2 = adultPINSetupActivity.f15346s.getText().toString();
                        if (!obj.isEmpty() && !obj2.isEmpty()) {
                            if (obj.length() != 4 || obj2.length() != 4) {
                                Toast.makeText(adultPINSetupActivity.getBaseContext(), "Please enter 4 digit PIN", 1).show();
                                break;
                            } else if (!obj.equalsIgnoreCase(obj2)) {
                                Toast.makeText(adultPINSetupActivity.getBaseContext(), "Please repeat same PIN", 1).show();
                                break;
                            } else {
                                App.getInstance().f14440s.edit().putBoolean("pref_adult_zone_pin_set", true).apply();
                                App.getInstance().f14440s.edit().putString("pref_adult_zone_pin", obj).apply();
                                Toast.makeText(adultPINSetupActivity.getBaseContext(), "PIN Successfully Saved", 1).show();
                                adultPINSetupActivity.startActivity(new Intent(adultPINSetupActivity, (Class<?>) AdultZonePINEntryActivity.class));
                                adultPINSetupActivity.finish();
                                break;
                            }
                        } else {
                            Toast.makeText(adultPINSetupActivity.getBaseContext(), "Please enter PIN", 1).show();
                            break;
                        }
                        break;
                }
            }
        });
        this.f15337b.applyFontToView(this.f15339f, this.f15338e);
        this.f15337b.applyFontToView(this.f15341m, this.f15338e);
        this.f15337b.applyFontToView(this.f15340j, this.f15338e);
        this.f15337b.applyFontToView(this.f15345r, this.f15338e);
        this.f15337b.applyFontToView(this.f15346s, this.f15338e);
    }
}
