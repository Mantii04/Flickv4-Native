package flix.com.vision.activities;

import A.i;
import A4.g;
import android.os.Bundle;
import android.view.View;
import android.widget.CheckBox;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import e.AbstractActivityC0842v;
import e.DialogInterfaceC0839s;
import flix.com.vision.App;
import flix.com.vision.R;
import flix.com.vision.activities.TraktTvConfigActivity;
import org.apache.commons.lang3.StringUtils;
import q3.C1517a;
import y4.V0;

/* loaded from: classes2.dex */
public class TraktTvConfigActivity extends AbstractActivityC0842v {

    /* renamed from: z, reason: collision with root package name */
    public static final /* synthetic */ int f15262z = 0;

    /* renamed from: b, reason: collision with root package name */
    public LinearLayout f15263b;

    /* renamed from: e, reason: collision with root package name */
    public LinearLayout f15264e;

    /* renamed from: f, reason: collision with root package name */
    public LinearLayout f15265f;

    /* renamed from: j, reason: collision with root package name */
    public LinearLayout f15266j;

    /* renamed from: m, reason: collision with root package name */
    public LinearLayout f15267m;

    /* renamed from: n, reason: collision with root package name */
    public LinearLayout f15268n;

    /* renamed from: p, reason: collision with root package name */
    public LinearLayout f15269p;

    /* renamed from: q, reason: collision with root package name */
    public CheckBox f15270q;

    /* renamed from: r, reason: collision with root package name */
    public CheckBox f15271r;

    /* renamed from: s, reason: collision with root package name */
    public CheckBox f15272s;

    /* renamed from: t, reason: collision with root package name */
    public CheckBox f15273t;

    /* renamed from: u, reason: collision with root package name */
    public CheckBox f15274u;

    /* renamed from: v, reason: collision with root package name */
    public CheckBox f15275v;

    /* renamed from: w, reason: collision with root package name */
    public CheckBox f15276w;

    /* renamed from: x, reason: collision with root package name */
    public TextView f15277x;

    /* renamed from: y, reason: collision with root package name */
    public RelativeLayout f15278y;

    @Override // androidx.fragment.app.H, androidx.activity.ComponentActivity, z.r, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_trakt_tv_settings);
        this.f15277x = (TextView) findViewById(R.id.label_signout_button);
        this.f15269p = (LinearLayout) findViewById(R.id.setting_add_watched_list);
        this.f15264e = (LinearLayout) findViewById(R.id.setting_check_me_in);
        this.f15265f = (LinearLayout) findViewById(R.id.setting_facebook);
        this.f15266j = (LinearLayout) findViewById(R.id.setting_twitter);
        this.f15267m = (LinearLayout) findViewById(R.id.setting_tumblr);
        this.f15268n = (LinearLayout) findViewById(R.id.setting_add_favorite);
        this.f15263b = (LinearLayout) findViewById(R.id.setting_add_favorite_shows);
        this.f15270q = (CheckBox) findViewById(R.id.switch_add_favorite_shows);
        this.f15271r = (CheckBox) findViewById(R.id.switch_check_me_in);
        this.f15272s = (CheckBox) findViewById(R.id.switch_facebook);
        this.f15273t = (CheckBox) findViewById(R.id.switch_twitter);
        this.f15274u = (CheckBox) findViewById(R.id.switch_tumblr);
        this.f15275v = (CheckBox) findViewById(R.id.switch_add_favorite);
        this.f15276w = (CheckBox) findViewById(R.id.switch_add_watched_list);
        RelativeLayout relativeLayout = (RelativeLayout) findViewById(R.id.sign_out);
        this.f15278y = relativeLayout;
        final int i2 = 0;
        relativeLayout.setOnClickListener(new View.OnClickListener(this) { // from class: y4.s1

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ TraktTvConfigActivity f21285e;

            {
                this.f21285e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TraktTvConfigActivity traktTvConfigActivity = this.f21285e;
                switch (i2) {
                    case 0:
                        int i7 = TraktTvConfigActivity.f15262z;
                        DialogInterfaceC0839s create = new e.r(traktTvConfigActivity).create();
                        create.setTitle(traktTvConfigActivity.getString(R.string.trakt_tv_label));
                        create.setIcon(R.drawable.trakt_logo_3);
                        create.setMessage(traktTvConfigActivity.getString(R.string.currently_signed_as_label) + StringUtils.SPACE + App.getInstance().f14440s.getString("trakt_user_name", "") + traktTvConfigActivity.getString(R.string.do_you_want_sign_out_mess));
                        create.setButton(-1, traktTvConfigActivity.getString(R.string.yes_sign_out_label), new K(traktTvConfigActivity, 2));
                        create.setButton(-2, traktTvConfigActivity.getString(R.string.cancel_label), new Z(4));
                        try {
                            create.show();
                            break;
                        } catch (Exception e3) {
                            e3.printStackTrace();
                            return;
                        }
                    case 1:
                        int i8 = TraktTvConfigActivity.f15262z;
                        traktTvConfigActivity.getClass();
                        if (!App.getInstance().f14440s.getBoolean("check_me_in", true)) {
                            traktTvConfigActivity.f15274u.performClick();
                            break;
                        }
                        break;
                    case 2:
                        traktTvConfigActivity.f15275v.performClick();
                        break;
                    case 3:
                        traktTvConfigActivity.f15270q.performClick();
                        break;
                    case 4:
                        traktTvConfigActivity.f15276w.performClick();
                        break;
                    case 5:
                        traktTvConfigActivity.f15271r.performClick();
                        break;
                    case 6:
                        int i9 = TraktTvConfigActivity.f15262z;
                        traktTvConfigActivity.getClass();
                        if (!App.getInstance().f14440s.getBoolean("check_me_in", true)) {
                            traktTvConfigActivity.f15272s.performClick();
                            break;
                        }
                        break;
                    default:
                        int i10 = TraktTvConfigActivity.f15262z;
                        traktTvConfigActivity.getClass();
                        if (!App.getInstance().f14440s.getBoolean("check_me_in", true)) {
                            traktTvConfigActivity.f15273t.performClick();
                            break;
                        }
                        break;
                }
            }
        });
        this.f15270q.setChecked(App.getInstance().f14440s.getBoolean("add_favorites_on_shows", true));
        this.f15271r.setChecked(App.getInstance().f14440s.getBoolean("check_me_in", true));
        this.f15273t.setChecked(App.getInstance().f14440s.getBoolean("twitter_on", true));
        this.f15274u.setChecked(App.getInstance().f14440s.getBoolean("tumblr_on", true));
        this.f15272s.setChecked(App.getInstance().f14440s.getBoolean("facebook_on", true));
        this.f15276w.setChecked(App.getInstance().f14440s.getBoolean("sync_watched_list_on", true));
        this.f15275v.setChecked(App.getInstance().f14440s.getBoolean("add_favorites_on", true));
        if (App.getInstance().f14440s.getBoolean("check_me_in", true)) {
            this.f15269p.setAlpha(0.5f);
            i.x(App.getInstance().f14440s, "sync_watched_list_on", true);
        } else {
            this.f15269p.setAlpha(1.0f);
            this.f15265f.setAlpha(0.5f);
            this.f15267m.setAlpha(0.5f);
            this.f15266j.setAlpha(0.5f);
        }
        final int i7 = 5;
        this.f15264e.setOnClickListener(new View.OnClickListener(this) { // from class: y4.s1

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ TraktTvConfigActivity f21285e;

            {
                this.f21285e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TraktTvConfigActivity traktTvConfigActivity = this.f21285e;
                switch (i7) {
                    case 0:
                        int i72 = TraktTvConfigActivity.f15262z;
                        DialogInterfaceC0839s create = new e.r(traktTvConfigActivity).create();
                        create.setTitle(traktTvConfigActivity.getString(R.string.trakt_tv_label));
                        create.setIcon(R.drawable.trakt_logo_3);
                        create.setMessage(traktTvConfigActivity.getString(R.string.currently_signed_as_label) + StringUtils.SPACE + App.getInstance().f14440s.getString("trakt_user_name", "") + traktTvConfigActivity.getString(R.string.do_you_want_sign_out_mess));
                        create.setButton(-1, traktTvConfigActivity.getString(R.string.yes_sign_out_label), new K(traktTvConfigActivity, 2));
                        create.setButton(-2, traktTvConfigActivity.getString(R.string.cancel_label), new Z(4));
                        try {
                            create.show();
                            break;
                        } catch (Exception e3) {
                            e3.printStackTrace();
                            return;
                        }
                    case 1:
                        int i8 = TraktTvConfigActivity.f15262z;
                        traktTvConfigActivity.getClass();
                        if (!App.getInstance().f14440s.getBoolean("check_me_in", true)) {
                            traktTvConfigActivity.f15274u.performClick();
                            break;
                        }
                        break;
                    case 2:
                        traktTvConfigActivity.f15275v.performClick();
                        break;
                    case 3:
                        traktTvConfigActivity.f15270q.performClick();
                        break;
                    case 4:
                        traktTvConfigActivity.f15276w.performClick();
                        break;
                    case 5:
                        traktTvConfigActivity.f15271r.performClick();
                        break;
                    case 6:
                        int i9 = TraktTvConfigActivity.f15262z;
                        traktTvConfigActivity.getClass();
                        if (!App.getInstance().f14440s.getBoolean("check_me_in", true)) {
                            traktTvConfigActivity.f15272s.performClick();
                            break;
                        }
                        break;
                    default:
                        int i10 = TraktTvConfigActivity.f15262z;
                        traktTvConfigActivity.getClass();
                        if (!App.getInstance().f14440s.getBoolean("check_me_in", true)) {
                            traktTvConfigActivity.f15273t.performClick();
                            break;
                        }
                        break;
                }
            }
        });
        final int i8 = 6;
        this.f15265f.setOnClickListener(new View.OnClickListener(this) { // from class: y4.s1

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ TraktTvConfigActivity f21285e;

            {
                this.f21285e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TraktTvConfigActivity traktTvConfigActivity = this.f21285e;
                switch (i8) {
                    case 0:
                        int i72 = TraktTvConfigActivity.f15262z;
                        DialogInterfaceC0839s create = new e.r(traktTvConfigActivity).create();
                        create.setTitle(traktTvConfigActivity.getString(R.string.trakt_tv_label));
                        create.setIcon(R.drawable.trakt_logo_3);
                        create.setMessage(traktTvConfigActivity.getString(R.string.currently_signed_as_label) + StringUtils.SPACE + App.getInstance().f14440s.getString("trakt_user_name", "") + traktTvConfigActivity.getString(R.string.do_you_want_sign_out_mess));
                        create.setButton(-1, traktTvConfigActivity.getString(R.string.yes_sign_out_label), new K(traktTvConfigActivity, 2));
                        create.setButton(-2, traktTvConfigActivity.getString(R.string.cancel_label), new Z(4));
                        try {
                            create.show();
                            break;
                        } catch (Exception e3) {
                            e3.printStackTrace();
                            return;
                        }
                    case 1:
                        int i82 = TraktTvConfigActivity.f15262z;
                        traktTvConfigActivity.getClass();
                        if (!App.getInstance().f14440s.getBoolean("check_me_in", true)) {
                            traktTvConfigActivity.f15274u.performClick();
                            break;
                        }
                        break;
                    case 2:
                        traktTvConfigActivity.f15275v.performClick();
                        break;
                    case 3:
                        traktTvConfigActivity.f15270q.performClick();
                        break;
                    case 4:
                        traktTvConfigActivity.f15276w.performClick();
                        break;
                    case 5:
                        traktTvConfigActivity.f15271r.performClick();
                        break;
                    case 6:
                        int i9 = TraktTvConfigActivity.f15262z;
                        traktTvConfigActivity.getClass();
                        if (!App.getInstance().f14440s.getBoolean("check_me_in", true)) {
                            traktTvConfigActivity.f15272s.performClick();
                            break;
                        }
                        break;
                    default:
                        int i10 = TraktTvConfigActivity.f15262z;
                        traktTvConfigActivity.getClass();
                        if (!App.getInstance().f14440s.getBoolean("check_me_in", true)) {
                            traktTvConfigActivity.f15273t.performClick();
                            break;
                        }
                        break;
                }
            }
        });
        final int i9 = 7;
        this.f15266j.setOnClickListener(new View.OnClickListener(this) { // from class: y4.s1

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ TraktTvConfigActivity f21285e;

            {
                this.f21285e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TraktTvConfigActivity traktTvConfigActivity = this.f21285e;
                switch (i9) {
                    case 0:
                        int i72 = TraktTvConfigActivity.f15262z;
                        DialogInterfaceC0839s create = new e.r(traktTvConfigActivity).create();
                        create.setTitle(traktTvConfigActivity.getString(R.string.trakt_tv_label));
                        create.setIcon(R.drawable.trakt_logo_3);
                        create.setMessage(traktTvConfigActivity.getString(R.string.currently_signed_as_label) + StringUtils.SPACE + App.getInstance().f14440s.getString("trakt_user_name", "") + traktTvConfigActivity.getString(R.string.do_you_want_sign_out_mess));
                        create.setButton(-1, traktTvConfigActivity.getString(R.string.yes_sign_out_label), new K(traktTvConfigActivity, 2));
                        create.setButton(-2, traktTvConfigActivity.getString(R.string.cancel_label), new Z(4));
                        try {
                            create.show();
                            break;
                        } catch (Exception e3) {
                            e3.printStackTrace();
                            return;
                        }
                    case 1:
                        int i82 = TraktTvConfigActivity.f15262z;
                        traktTvConfigActivity.getClass();
                        if (!App.getInstance().f14440s.getBoolean("check_me_in", true)) {
                            traktTvConfigActivity.f15274u.performClick();
                            break;
                        }
                        break;
                    case 2:
                        traktTvConfigActivity.f15275v.performClick();
                        break;
                    case 3:
                        traktTvConfigActivity.f15270q.performClick();
                        break;
                    case 4:
                        traktTvConfigActivity.f15276w.performClick();
                        break;
                    case 5:
                        traktTvConfigActivity.f15271r.performClick();
                        break;
                    case 6:
                        int i92 = TraktTvConfigActivity.f15262z;
                        traktTvConfigActivity.getClass();
                        if (!App.getInstance().f14440s.getBoolean("check_me_in", true)) {
                            traktTvConfigActivity.f15272s.performClick();
                            break;
                        }
                        break;
                    default:
                        int i10 = TraktTvConfigActivity.f15262z;
                        traktTvConfigActivity.getClass();
                        if (!App.getInstance().f14440s.getBoolean("check_me_in", true)) {
                            traktTvConfigActivity.f15273t.performClick();
                            break;
                        }
                        break;
                }
            }
        });
        this.f15278y.setOnFocusChangeListener(new g(this, 10));
        final int i10 = 1;
        this.f15267m.setOnClickListener(new View.OnClickListener(this) { // from class: y4.s1

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ TraktTvConfigActivity f21285e;

            {
                this.f21285e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TraktTvConfigActivity traktTvConfigActivity = this.f21285e;
                switch (i10) {
                    case 0:
                        int i72 = TraktTvConfigActivity.f15262z;
                        DialogInterfaceC0839s create = new e.r(traktTvConfigActivity).create();
                        create.setTitle(traktTvConfigActivity.getString(R.string.trakt_tv_label));
                        create.setIcon(R.drawable.trakt_logo_3);
                        create.setMessage(traktTvConfigActivity.getString(R.string.currently_signed_as_label) + StringUtils.SPACE + App.getInstance().f14440s.getString("trakt_user_name", "") + traktTvConfigActivity.getString(R.string.do_you_want_sign_out_mess));
                        create.setButton(-1, traktTvConfigActivity.getString(R.string.yes_sign_out_label), new K(traktTvConfigActivity, 2));
                        create.setButton(-2, traktTvConfigActivity.getString(R.string.cancel_label), new Z(4));
                        try {
                            create.show();
                            break;
                        } catch (Exception e3) {
                            e3.printStackTrace();
                            return;
                        }
                    case 1:
                        int i82 = TraktTvConfigActivity.f15262z;
                        traktTvConfigActivity.getClass();
                        if (!App.getInstance().f14440s.getBoolean("check_me_in", true)) {
                            traktTvConfigActivity.f15274u.performClick();
                            break;
                        }
                        break;
                    case 2:
                        traktTvConfigActivity.f15275v.performClick();
                        break;
                    case 3:
                        traktTvConfigActivity.f15270q.performClick();
                        break;
                    case 4:
                        traktTvConfigActivity.f15276w.performClick();
                        break;
                    case 5:
                        traktTvConfigActivity.f15271r.performClick();
                        break;
                    case 6:
                        int i92 = TraktTvConfigActivity.f15262z;
                        traktTvConfigActivity.getClass();
                        if (!App.getInstance().f14440s.getBoolean("check_me_in", true)) {
                            traktTvConfigActivity.f15272s.performClick();
                            break;
                        }
                        break;
                    default:
                        int i102 = TraktTvConfigActivity.f15262z;
                        traktTvConfigActivity.getClass();
                        if (!App.getInstance().f14440s.getBoolean("check_me_in", true)) {
                            traktTvConfigActivity.f15273t.performClick();
                            break;
                        }
                        break;
                }
            }
        });
        final int i11 = 2;
        this.f15268n.setOnClickListener(new View.OnClickListener(this) { // from class: y4.s1

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ TraktTvConfigActivity f21285e;

            {
                this.f21285e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TraktTvConfigActivity traktTvConfigActivity = this.f21285e;
                switch (i11) {
                    case 0:
                        int i72 = TraktTvConfigActivity.f15262z;
                        DialogInterfaceC0839s create = new e.r(traktTvConfigActivity).create();
                        create.setTitle(traktTvConfigActivity.getString(R.string.trakt_tv_label));
                        create.setIcon(R.drawable.trakt_logo_3);
                        create.setMessage(traktTvConfigActivity.getString(R.string.currently_signed_as_label) + StringUtils.SPACE + App.getInstance().f14440s.getString("trakt_user_name", "") + traktTvConfigActivity.getString(R.string.do_you_want_sign_out_mess));
                        create.setButton(-1, traktTvConfigActivity.getString(R.string.yes_sign_out_label), new K(traktTvConfigActivity, 2));
                        create.setButton(-2, traktTvConfigActivity.getString(R.string.cancel_label), new Z(4));
                        try {
                            create.show();
                            break;
                        } catch (Exception e3) {
                            e3.printStackTrace();
                            return;
                        }
                    case 1:
                        int i82 = TraktTvConfigActivity.f15262z;
                        traktTvConfigActivity.getClass();
                        if (!App.getInstance().f14440s.getBoolean("check_me_in", true)) {
                            traktTvConfigActivity.f15274u.performClick();
                            break;
                        }
                        break;
                    case 2:
                        traktTvConfigActivity.f15275v.performClick();
                        break;
                    case 3:
                        traktTvConfigActivity.f15270q.performClick();
                        break;
                    case 4:
                        traktTvConfigActivity.f15276w.performClick();
                        break;
                    case 5:
                        traktTvConfigActivity.f15271r.performClick();
                        break;
                    case 6:
                        int i92 = TraktTvConfigActivity.f15262z;
                        traktTvConfigActivity.getClass();
                        if (!App.getInstance().f14440s.getBoolean("check_me_in", true)) {
                            traktTvConfigActivity.f15272s.performClick();
                            break;
                        }
                        break;
                    default:
                        int i102 = TraktTvConfigActivity.f15262z;
                        traktTvConfigActivity.getClass();
                        if (!App.getInstance().f14440s.getBoolean("check_me_in", true)) {
                            traktTvConfigActivity.f15273t.performClick();
                            break;
                        }
                        break;
                }
            }
        });
        final int i12 = 3;
        this.f15263b.setOnClickListener(new View.OnClickListener(this) { // from class: y4.s1

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ TraktTvConfigActivity f21285e;

            {
                this.f21285e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TraktTvConfigActivity traktTvConfigActivity = this.f21285e;
                switch (i12) {
                    case 0:
                        int i72 = TraktTvConfigActivity.f15262z;
                        DialogInterfaceC0839s create = new e.r(traktTvConfigActivity).create();
                        create.setTitle(traktTvConfigActivity.getString(R.string.trakt_tv_label));
                        create.setIcon(R.drawable.trakt_logo_3);
                        create.setMessage(traktTvConfigActivity.getString(R.string.currently_signed_as_label) + StringUtils.SPACE + App.getInstance().f14440s.getString("trakt_user_name", "") + traktTvConfigActivity.getString(R.string.do_you_want_sign_out_mess));
                        create.setButton(-1, traktTvConfigActivity.getString(R.string.yes_sign_out_label), new K(traktTvConfigActivity, 2));
                        create.setButton(-2, traktTvConfigActivity.getString(R.string.cancel_label), new Z(4));
                        try {
                            create.show();
                            break;
                        } catch (Exception e3) {
                            e3.printStackTrace();
                            return;
                        }
                    case 1:
                        int i82 = TraktTvConfigActivity.f15262z;
                        traktTvConfigActivity.getClass();
                        if (!App.getInstance().f14440s.getBoolean("check_me_in", true)) {
                            traktTvConfigActivity.f15274u.performClick();
                            break;
                        }
                        break;
                    case 2:
                        traktTvConfigActivity.f15275v.performClick();
                        break;
                    case 3:
                        traktTvConfigActivity.f15270q.performClick();
                        break;
                    case 4:
                        traktTvConfigActivity.f15276w.performClick();
                        break;
                    case 5:
                        traktTvConfigActivity.f15271r.performClick();
                        break;
                    case 6:
                        int i92 = TraktTvConfigActivity.f15262z;
                        traktTvConfigActivity.getClass();
                        if (!App.getInstance().f14440s.getBoolean("check_me_in", true)) {
                            traktTvConfigActivity.f15272s.performClick();
                            break;
                        }
                        break;
                    default:
                        int i102 = TraktTvConfigActivity.f15262z;
                        traktTvConfigActivity.getClass();
                        if (!App.getInstance().f14440s.getBoolean("check_me_in", true)) {
                            traktTvConfigActivity.f15273t.performClick();
                            break;
                        }
                        break;
                }
            }
        });
        final int i13 = 4;
        this.f15269p.setOnClickListener(new View.OnClickListener(this) { // from class: y4.s1

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ TraktTvConfigActivity f21285e;

            {
                this.f21285e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TraktTvConfigActivity traktTvConfigActivity = this.f21285e;
                switch (i13) {
                    case 0:
                        int i72 = TraktTvConfigActivity.f15262z;
                        DialogInterfaceC0839s create = new e.r(traktTvConfigActivity).create();
                        create.setTitle(traktTvConfigActivity.getString(R.string.trakt_tv_label));
                        create.setIcon(R.drawable.trakt_logo_3);
                        create.setMessage(traktTvConfigActivity.getString(R.string.currently_signed_as_label) + StringUtils.SPACE + App.getInstance().f14440s.getString("trakt_user_name", "") + traktTvConfigActivity.getString(R.string.do_you_want_sign_out_mess));
                        create.setButton(-1, traktTvConfigActivity.getString(R.string.yes_sign_out_label), new K(traktTvConfigActivity, 2));
                        create.setButton(-2, traktTvConfigActivity.getString(R.string.cancel_label), new Z(4));
                        try {
                            create.show();
                            break;
                        } catch (Exception e3) {
                            e3.printStackTrace();
                            return;
                        }
                    case 1:
                        int i82 = TraktTvConfigActivity.f15262z;
                        traktTvConfigActivity.getClass();
                        if (!App.getInstance().f14440s.getBoolean("check_me_in", true)) {
                            traktTvConfigActivity.f15274u.performClick();
                            break;
                        }
                        break;
                    case 2:
                        traktTvConfigActivity.f15275v.performClick();
                        break;
                    case 3:
                        traktTvConfigActivity.f15270q.performClick();
                        break;
                    case 4:
                        traktTvConfigActivity.f15276w.performClick();
                        break;
                    case 5:
                        traktTvConfigActivity.f15271r.performClick();
                        break;
                    case 6:
                        int i92 = TraktTvConfigActivity.f15262z;
                        traktTvConfigActivity.getClass();
                        if (!App.getInstance().f14440s.getBoolean("check_me_in", true)) {
                            traktTvConfigActivity.f15272s.performClick();
                            break;
                        }
                        break;
                    default:
                        int i102 = TraktTvConfigActivity.f15262z;
                        traktTvConfigActivity.getClass();
                        if (!App.getInstance().f14440s.getBoolean("check_me_in", true)) {
                            traktTvConfigActivity.f15273t.performClick();
                            break;
                        }
                        break;
                }
            }
        });
        this.f15271r.setOnCheckedChangeListener(new C1517a(this, 1));
        this.f15273t.setOnCheckedChangeListener(new V0(15));
        this.f15272s.setOnCheckedChangeListener(new V0(16));
        this.f15274u.setOnCheckedChangeListener(new V0(17));
        this.f15275v.setOnCheckedChangeListener(new V0(18));
        this.f15270q.setOnCheckedChangeListener(new V0(19));
        this.f15276w.setOnCheckedChangeListener(new V0(20));
    }
}
