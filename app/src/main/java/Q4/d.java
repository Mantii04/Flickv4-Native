package Q4;

import A.h;
import A4.o;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.DialogFragment;
import android.app.FragmentManager;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.content.res.AssetManager;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.text.method.ScrollingMovementMethod;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.media3.exoplayer.Renderer;
import com.github.ybq.android.spinkit.SpinKitView;
import flix.com.vision.App;
import flix.com.vision.R;
import flix.com.vision.activities.UserTorrentsActivity;
import flix.com.vision.activities.adult.AdultPINSetupActivity;
import flix.com.vision.activities.adult.AdultZonePINEntryActivity;
import flix.com.vision.activities.leanback.MainActivityLeanback;
import flix.com.vision.tv.Constant;
import h5.C0996j;
import java.util.Objects;

/* loaded from: classes2.dex */
public class d extends DialogFragment implements View.OnFocusChangeListener, View.OnKeyListener {

    /* renamed from: Y, reason: collision with root package name */
    public static Typeface f2935Y = null;

    /* renamed from: Z, reason: collision with root package name */
    public static C0996j f2936Z = null;

    /* renamed from: a0, reason: collision with root package name */
    public static Activity f2937a0 = null;

    /* renamed from: b0, reason: collision with root package name */
    public static boolean f2938b0 = false;

    /* renamed from: A, reason: collision with root package name */
    public TextView f2939A;

    /* renamed from: B, reason: collision with root package name */
    public TextView f2940B;

    /* renamed from: C, reason: collision with root package name */
    public TextView f2941C;

    /* renamed from: D, reason: collision with root package name */
    public TextView f2942D;

    /* renamed from: E, reason: collision with root package name */
    public TextView f2943E;

    /* renamed from: F, reason: collision with root package name */
    public TextView f2944F;

    /* renamed from: G, reason: collision with root package name */
    public TextView f2945G;

    /* renamed from: H, reason: collision with root package name */
    public TextView f2946H;

    /* renamed from: I, reason: collision with root package name */
    public TextView f2947I;

    /* renamed from: J, reason: collision with root package name */
    public TextView f2948J;

    /* renamed from: K, reason: collision with root package name */
    public RelativeLayout f2949K;

    /* renamed from: L, reason: collision with root package name */
    public RelativeLayout f2950L;

    /* renamed from: M, reason: collision with root package name */
    public RelativeLayout f2951M;

    /* renamed from: N, reason: collision with root package name */
    public TextView f2952N;

    /* renamed from: O, reason: collision with root package name */
    public TextView f2953O;

    /* renamed from: P, reason: collision with root package name */
    public TextView f2954P;

    /* renamed from: Q, reason: collision with root package name */
    public TextView f2955Q;

    /* renamed from: R, reason: collision with root package name */
    public TextView f2956R;

    /* renamed from: S, reason: collision with root package name */
    public String f2957S;

    /* renamed from: T, reason: collision with root package name */
    public String f2958T;

    /* renamed from: U, reason: collision with root package name */
    public String f2959U;

    /* renamed from: V, reason: collision with root package name */
    public String f2960V;

    /* renamed from: W, reason: collision with root package name */
    public String f2961W;

    /* renamed from: b, reason: collision with root package name */
    public View.OnClickListener f2963b;

    /* renamed from: e, reason: collision with root package name */
    public View.OnClickListener f2964e;

    /* renamed from: f, reason: collision with root package name */
    public View.OnClickListener f2965f;

    /* renamed from: j, reason: collision with root package name */
    public View.OnClickListener f2966j;

    /* renamed from: m, reason: collision with root package name */
    public View.OnClickListener f2967m;

    /* renamed from: n, reason: collision with root package name */
    public View.OnClickListener f2968n;

    /* renamed from: p, reason: collision with root package name */
    public View.OnClickListener f2969p;

    /* renamed from: q, reason: collision with root package name */
    public View.OnClickListener f2970q;

    /* renamed from: r, reason: collision with root package name */
    public View.OnClickListener f2971r;

    /* renamed from: s, reason: collision with root package name */
    public Handler f2972s;

    /* renamed from: t, reason: collision with root package name */
    public a f2973t;

    /* renamed from: v, reason: collision with root package name */
    public SpinKitView f2975v;

    /* renamed from: w, reason: collision with root package name */
    public LinearLayout f2976w;

    /* renamed from: x, reason: collision with root package name */
    public LinearLayout f2977x;

    /* renamed from: y, reason: collision with root package name */
    public LinearLayout f2978y;

    /* renamed from: u, reason: collision with root package name */
    public boolean f2974u = false;

    /* renamed from: z, reason: collision with root package name */
    public final float f2979z = -1.0f;

    /* renamed from: X, reason: collision with root package name */
    public boolean f2962X = false;

    public static void b(TextView textView, int i2) {
        for (Drawable drawable : textView.getCompoundDrawables()) {
            if (drawable != null) {
                drawable.setColorFilter(new PorterDuffColorFilter(h.getColor(textView.getContext(), i2), PorterDuff.Mode.SRC_IN));
            }
        }
    }

    public static d newInstance(Activity activity, boolean z6) {
        d dVar = new d();
        f2937a0 = activity;
        AssetManager assets = activity.getAssets();
        String str = Constant.f16184b;
        f2935Y = Typeface.createFromAsset(assets, "fonts/pproduct_sans_rregular.ttf");
        f2936Z = new C0996j();
        f2938b0 = z6;
        return dVar;
    }

    public final void a(String str) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(Uri.parse(str));
            startActivity(intent);
        } catch (Exception e3) {
            e3.printStackTrace();
        }
    }

    @Override // android.app.DialogFragment, android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        try {
            super.onDismiss(dialogInterface);
            this.f2972s.removeCallbacks(this.f2973t);
        } catch (Exception e3) {
            throw new RuntimeException(e3);
        }
    }

    @Override // android.app.DialogFragment, android.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override // android.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        TextView textView;
        TextView textView2;
        TextView textView3;
        TextView textView4;
        RelativeLayout relativeLayout;
        View inflate = layoutInflater.inflate(this.f2974u ? R.layout.fvision_dialog_menu : App.f14424I ? R.layout.fvision_dialog : R.layout.fvision_dialog_phones, viewGroup, false);
        this.f2948J = (TextView) inflate.findViewById(R.id.button_user_torrents);
        this.f2978y = (LinearLayout) inflate.findViewById(R.id.horizontal_buttons);
        this.f2947I = (TextView) inflate.findViewById(R.id.button_restart);
        this.f2946H = (TextView) inflate.findViewById(R.id.button_discord);
        this.f2945G = (TextView) inflate.findViewById(R.id.button_twitter);
        this.f2944F = (TextView) inflate.findViewById(R.id.button_check_update);
        this.f2941C = (TextView) inflate.findViewById(R.id.button_trakt_tv);
        this.f2942D = (TextView) inflate.findViewById(R.id.button_login_);
        this.f2943E = (TextView) inflate.findViewById(R.id.button_watched);
        this.f2940B = (TextView) inflate.findViewById(R.id.button_import_playlist);
        this.f2939A = (TextView) inflate.findViewById(R.id.button_my_playlists);
        this.f2975v = (SpinKitView) inflate.findViewById(R.id.spin_kit);
        this.f2976w = (LinearLayout) inflate.findViewById(R.id.dialog_main_content);
        this.f2977x = (LinearLayout) inflate.findViewById(R.id.menu_buttons);
        this.f2949K = (RelativeLayout) inflate.findViewById(R.id.dialog_button_rel1);
        this.f2950L = (RelativeLayout) inflate.findViewById(R.id.dialog_button_rel2);
        this.f2951M = (RelativeLayout) inflate.findViewById(R.id.dialog_button_rel3);
        this.f2952N = (TextView) inflate.findViewById(R.id.dialog_title);
        TextView textView5 = (TextView) inflate.findViewById(R.id.dialog_message);
        this.f2953O = textView5;
        textView5.setMovementMethod(new ScrollingMovementMethod());
        this.f2954P = (TextView) inflate.findViewById(R.id.button1_text_view);
        this.f2955Q = (TextView) inflate.findViewById(R.id.button2_text_view);
        this.f2956R = (TextView) inflate.findViewById(R.id.button3_text_view);
        RelativeLayout relativeLayout2 = this.f2951M;
        if (relativeLayout2 != null) {
            relativeLayout2.setOnClickListener(new o(this, 3));
        }
        this.f2950L.setOnClickListener(new o(this, 4));
        this.f2949K.setOnClickListener(new o(this, 5));
        if (this.f2963b == null) {
            this.f2949K.setVisibility(8);
        }
        if (this.f2964e == null) {
            this.f2950L.setVisibility(8);
        }
        if (this.f2965f == null && (relativeLayout = this.f2951M) != null) {
            relativeLayout.setVisibility(8);
        }
        this.f2953O.setText(this.f2958T);
        this.f2952N.setText(this.f2957S);
        String str = this.f2959U;
        if (str != null && (textView4 = this.f2954P) != null) {
            textView4.setText(str.toUpperCase());
        }
        String str2 = this.f2960V;
        if (str2 != null && (textView3 = this.f2955Q) != null) {
            textView3.setText(str2.toUpperCase());
        }
        String str3 = this.f2961W;
        if (str3 != null && (textView2 = this.f2956R) != null) {
            textView2.setText(str3.toUpperCase());
        }
        final int i2 = 2;
        this.f2949K.setOnFocusChangeListener(new View.OnFocusChangeListener(this) { // from class: Q4.b

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ d f2931e;

            {
                this.f2931e = this;
            }

            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z6) {
                switch (i2) {
                    case 0:
                        d dVar = this.f2931e;
                        if (!z6) {
                            dVar.f2955Q.setTextColor(dVar.getResources().getColor(R.color.white));
                            break;
                        } else {
                            dVar.f2955Q.setTextColor(dVar.getResources().getColor(R.color.black));
                            break;
                        }
                    case 1:
                        d dVar2 = this.f2931e;
                        if (!z6) {
                            dVar2.f2956R.setTextColor(dVar2.getResources().getColor(R.color.white));
                            break;
                        } else {
                            dVar2.f2956R.setTextColor(dVar2.getResources().getColor(R.color.black));
                            break;
                        }
                    default:
                        d dVar3 = this.f2931e;
                        if (!z6) {
                            dVar3.f2954P.setTextColor(dVar3.getResources().getColor(R.color.white));
                            break;
                        } else {
                            dVar3.f2954P.setTextColor(dVar3.getResources().getColor(R.color.black));
                            break;
                        }
                }
            }
        });
        final int i7 = 0;
        this.f2950L.setOnFocusChangeListener(new View.OnFocusChangeListener(this) { // from class: Q4.b

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ d f2931e;

            {
                this.f2931e = this;
            }

            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z6) {
                switch (i7) {
                    case 0:
                        d dVar = this.f2931e;
                        if (!z6) {
                            dVar.f2955Q.setTextColor(dVar.getResources().getColor(R.color.white));
                            break;
                        } else {
                            dVar.f2955Q.setTextColor(dVar.getResources().getColor(R.color.black));
                            break;
                        }
                    case 1:
                        d dVar2 = this.f2931e;
                        if (!z6) {
                            dVar2.f2956R.setTextColor(dVar2.getResources().getColor(R.color.white));
                            break;
                        } else {
                            dVar2.f2956R.setTextColor(dVar2.getResources().getColor(R.color.black));
                            break;
                        }
                    default:
                        d dVar3 = this.f2931e;
                        if (!z6) {
                            dVar3.f2954P.setTextColor(dVar3.getResources().getColor(R.color.white));
                            break;
                        } else {
                            dVar3.f2954P.setTextColor(dVar3.getResources().getColor(R.color.black));
                            break;
                        }
                }
            }
        });
        RelativeLayout relativeLayout3 = this.f2951M;
        if (relativeLayout3 != null) {
            final int i8 = 1;
            relativeLayout3.setOnFocusChangeListener(new View.OnFocusChangeListener(this) { // from class: Q4.b

                /* renamed from: e, reason: collision with root package name */
                public final /* synthetic */ d f2931e;

                {
                    this.f2931e = this;
                }

                @Override // android.view.View.OnFocusChangeListener
                public final void onFocusChange(View view, boolean z6) {
                    switch (i8) {
                        case 0:
                            d dVar = this.f2931e;
                            if (!z6) {
                                dVar.f2955Q.setTextColor(dVar.getResources().getColor(R.color.white));
                                break;
                            } else {
                                dVar.f2955Q.setTextColor(dVar.getResources().getColor(R.color.black));
                                break;
                            }
                        case 1:
                            d dVar2 = this.f2931e;
                            if (!z6) {
                                dVar2.f2956R.setTextColor(dVar2.getResources().getColor(R.color.white));
                                break;
                            } else {
                                dVar2.f2956R.setTextColor(dVar2.getResources().getColor(R.color.black));
                                break;
                            }
                        default:
                            d dVar3 = this.f2931e;
                            if (!z6) {
                                dVar3.f2954P.setTextColor(dVar3.getResources().getColor(R.color.white));
                                break;
                            } else {
                                dVar3.f2954P.setTextColor(dVar3.getResources().getColor(R.color.black));
                                break;
                            }
                    }
                }
            });
        }
        if (this.f2962X) {
            this.f2976w.setVisibility(8);
            this.f2975v.setVisibility(0);
        }
        if (this.f2974u) {
            this.f2945G.setOnFocusChangeListener(this);
            this.f2944F.setOnFocusChangeListener(this);
            this.f2946H.setOnFocusChangeListener(this);
            this.f2948J.setOnFocusChangeListener(this);
            this.f2947I.setOnFocusChangeListener(this);
            this.f2940B.setOnFocusChangeListener(this);
            this.f2939A.setOnFocusChangeListener(this);
            this.f2941C.setOnFocusChangeListener(this);
            this.f2942D.setOnFocusChangeListener(this);
            this.f2943E.setOnFocusChangeListener(this);
            this.f2945G.setOnKeyListener(this);
            this.f2944F.setOnKeyListener(this);
            this.f2946H.setOnKeyListener(this);
            this.f2948J.setOnKeyListener(this);
            this.f2947I.setOnKeyListener(this);
            this.f2940B.setOnKeyListener(this);
            this.f2939A.setOnKeyListener(this);
            this.f2941C.setOnKeyListener(this);
            this.f2942D.setOnKeyListener(this);
            this.f2943E.setOnKeyListener(this);
        }
        float f3 = this.f2979z;
        if (f3 > 0.0f && (textView = this.f2953O) != null) {
            textView.setTextSize(2, f3);
        }
        Window window = getDialog().getWindow();
        Objects.requireNonNull(window);
        window.requestFeature(1);
        setCancelable(f2938b0);
        return inflate;
    }

    @Override // android.view.View.OnFocusChangeListener
    public void onFocusChange(View view, boolean z6) {
        if (!(view instanceof TextView) || view.isActivated()) {
            return;
        }
        if (z6) {
            TextView textView = (TextView) view;
            textView.setTextColor(getResources().getColor(R.color.black));
            b(textView, R.color.black);
            view.animate().scaleX(1.1f).scaleY(1.1f).setDuration(200L).start();
            return;
        }
        TextView textView2 = (TextView) view;
        b(textView2, R.color.white);
        textView2.setTextColor(getResources().getColor(R.color.color_grey));
        view.animate().scaleX(1.0f).scaleY(1.0f).setDuration(200L).start();
    }

    @Override // android.view.View.OnKeyListener
    @SuppressLint({"NonConstantResourceId"})
    public boolean onKey(View view, int i2, KeyEvent keyEvent) {
        final int i7 = 0;
        final int i8 = 1;
        if (keyEvent.getAction() == 0) {
            Activity activity = f2937a0;
            if (activity instanceof MainActivityLeanback) {
                ((MainActivityLeanback) activity).resetInactivityTimer();
            }
            if (i2 == 4) {
                dismiss();
                return true;
            }
            if (getActivity() != null) {
                if (i2 == 23) {
                    dismiss();
                    int id = view.getId();
                    if (id == R.id.button_discord) {
                        FragmentManager fragmentManager = getFragmentManager();
                        final d newInstance = newInstance(getActivity(), true);
                        newInstance.setTitle("Discord");
                        newInstance.setMessage("Join the Flix Vision community at https://discord.gg/tKjc4PTvxu");
                        newInstance.setButton1("OK", new o(newInstance, i8));
                        try {
                            getActivity().getPackageManager().getPackageInfo("com.discord", 0);
                            newInstance.setButton2("OPEN APP", new View.OnClickListener(this) { // from class: Q4.c

                                /* renamed from: e, reason: collision with root package name */
                                public final /* synthetic */ d f2933e;

                                {
                                    this.f2933e = this;
                                }

                                @Override // android.view.View.OnClickListener
                                public final void onClick(View view2) {
                                    d dVar = newInstance;
                                    d dVar2 = this.f2933e;
                                    switch (i7) {
                                        case 0:
                                            Typeface typeface = d.f2935Y;
                                            dVar2.getClass();
                                            dVar.dismiss();
                                            dVar2.a("https://discord.gg/tKjc4PTvxu");
                                            break;
                                        default:
                                            Typeface typeface2 = d.f2935Y;
                                            dVar2.getClass();
                                            dVar.dismiss();
                                            dVar2.a("https://twitter.com/FlixVisionApp");
                                            break;
                                    }
                                }
                            });
                        } catch (PackageManager.NameNotFoundException unused) {
                        }
                        try {
                            newInstance.show(fragmentManager, "");
                        } catch (Exception e3) {
                            e3.printStackTrace();
                        }
                        SharedPreferences.Editor edit = App.getInstance().f14440s.edit();
                        String str = Constant.f16184b;
                        edit.putBoolean("discord_check", true).apply();
                    } else if (id == R.id.button_twitter) {
                        FragmentManager fragmentManager2 = getFragmentManager();
                        final d newInstance2 = newInstance(getActivity(), true);
                        newInstance2.setTitle("Twitter");
                        newInstance2.setMessage("Find us on twitter at @FlixVisionApp");
                        newInstance2.setButton1("OK", new o(newInstance2, 2));
                        try {
                            getActivity().getPackageManager().getPackageInfo("com.twitter.android", 0);
                            newInstance2.setButton2("OPEN APP", new View.OnClickListener(this) { // from class: Q4.c

                                /* renamed from: e, reason: collision with root package name */
                                public final /* synthetic */ d f2933e;

                                {
                                    this.f2933e = this;
                                }

                                @Override // android.view.View.OnClickListener
                                public final void onClick(View view2) {
                                    d dVar = newInstance2;
                                    d dVar2 = this.f2933e;
                                    switch (i8) {
                                        case 0:
                                            Typeface typeface = d.f2935Y;
                                            dVar2.getClass();
                                            dVar.dismiss();
                                            dVar2.a("https://discord.gg/tKjc4PTvxu");
                                            break;
                                        default:
                                            Typeface typeface2 = d.f2935Y;
                                            dVar2.getClass();
                                            dVar.dismiss();
                                            dVar2.a("https://twitter.com/FlixVisionApp");
                                            break;
                                    }
                                }
                            });
                        } catch (PackageManager.NameNotFoundException unused2) {
                        }
                        try {
                            newInstance2.show(fragmentManager2, "");
                        } catch (Exception e7) {
                            e7.printStackTrace();
                        }
                        SharedPreferences.Editor edit2 = App.getInstance().f14440s.edit();
                        String str2 = Constant.f16184b;
                        edit2.putBoolean("twitter_check", true).apply();
                    } else if (id == R.id.button_trakt_tv) {
                        View.OnClickListener onClickListener = this.f2969p;
                        if (onClickListener != null) {
                            this.f2941C.setOnClickListener(onClickListener);
                            this.f2941C.performClick();
                            return true;
                        }
                    } else if (id == R.id.button_login_) {
                        View.OnClickListener onClickListener2 = this.f2966j;
                        if (onClickListener2 != null) {
                            this.f2942D.setOnClickListener(onClickListener2);
                            this.f2942D.performClick();
                            return true;
                        }
                    } else if (id == R.id.button_watched) {
                        View.OnClickListener onClickListener3 = this.f2968n;
                        if (onClickListener3 != null) {
                            this.f2943E.setOnClickListener(onClickListener3);
                            this.f2943E.performClick();
                            return true;
                        }
                    } else if (id == R.id.button_check_update) {
                        View.OnClickListener onClickListener4 = this.f2967m;
                        if (onClickListener4 != null) {
                            this.f2944F.setOnClickListener(onClickListener4);
                            this.f2944F.performClick();
                            return true;
                        }
                    } else {
                        if (id == R.id.button_adult_zone) {
                            if (App.getInstance().f14440s.getBoolean("pref_adult_zone_pin_set", false)) {
                                startActivity(new Intent(getActivity(), (Class<?>) AdultZonePINEntryActivity.class));
                                return true;
                            }
                            startActivity(new Intent(getActivity(), (Class<?>) AdultPINSetupActivity.class));
                            return true;
                        }
                        if (id == R.id.button_restart) {
                            try {
                                getActivity().finish();
                                App.getInstance().restartApp();
                                return true;
                            } catch (Exception e8) {
                                e8.printStackTrace();
                            }
                        } else if (id == R.id.button_user_torrents) {
                            try {
                                startActivity(new Intent(getActivity(), (Class<?>) UserTorrentsActivity.class));
                                return true;
                            } catch (Exception e9) {
                                e9.printStackTrace();
                            }
                        } else if (id == R.id.button_my_playlists) {
                            View.OnClickListener onClickListener5 = this.f2970q;
                            if (onClickListener5 != null) {
                                this.f2939A.setOnClickListener(onClickListener5);
                                this.f2939A.performClick();
                                return true;
                            }
                        } else if (id == R.id.button_import_playlist) {
                            View.OnClickListener onClickListener6 = this.f2971r;
                            if (onClickListener6 != null) {
                                this.f2940B.setOnClickListener(onClickListener6);
                                this.f2940B.performClick();
                            }
                        }
                    }
                }
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Type inference failed for: r3v1, types: [Q4.a] */
    @Override // android.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        final int i2 = 0;
        this.f2973t = new Runnable(this) { // from class: Q4.a

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ d f2929e;

            {
                this.f2929e = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                d dVar = this.f2929e;
                switch (i2) {
                    case 0:
                        Typeface typeface = d.f2935Y;
                        dVar.setCancelable(true);
                        break;
                    default:
                        TextView textView = dVar.f2939A;
                        if (textView != null && !textView.isFocused()) {
                            d.b(dVar.f2939A, R.color.white);
                            dVar.f2939A.setTextColor(dVar.getResources().getColor(R.color.color_grey));
                        }
                        TextView textView2 = dVar.f2940B;
                        if (textView2 != null && !textView2.isFocused()) {
                            d.b(dVar.f2940B, R.color.white);
                            dVar.f2940B.setTextColor(dVar.getResources().getColor(R.color.color_grey));
                        }
                        TextView textView3 = dVar.f2941C;
                        if (textView3 != null && !textView3.isFocused()) {
                            d.b(dVar.f2941C, R.color.white);
                            dVar.f2941C.setTextColor(dVar.getResources().getColor(R.color.color_grey));
                        }
                        TextView textView4 = dVar.f2942D;
                        if (textView4 != null && !textView4.isFocused()) {
                            d.b(dVar.f2942D, R.color.white);
                            dVar.f2942D.setTextColor(dVar.getResources().getColor(R.color.color_grey));
                        }
                        TextView textView5 = dVar.f2943E;
                        if (textView5 != null && !textView5.isFocused()) {
                            d.b(dVar.f2943E, R.color.white);
                            dVar.f2943E.setTextColor(dVar.getResources().getColor(R.color.color_grey));
                        }
                        TextView textView6 = dVar.f2944F;
                        if (textView6 != null && !textView6.isFocused()) {
                            d.b(dVar.f2944F, R.color.white);
                            dVar.f2944F.setTextColor(dVar.getResources().getColor(R.color.color_grey));
                        }
                        TextView textView7 = dVar.f2946H;
                        if (textView7 != null && !textView7.isFocused()) {
                            d.b(dVar.f2946H, R.color.white);
                            dVar.f2946H.setTextColor(dVar.getResources().getColor(R.color.color_grey));
                        }
                        TextView textView8 = dVar.f2945G;
                        if (textView8 != null && !textView8.isFocused()) {
                            d.b(dVar.f2945G, R.color.white);
                            dVar.f2945G.setTextColor(dVar.getResources().getColor(R.color.color_grey));
                        }
                        TextView textView9 = dVar.f2947I;
                        if (textView9 != null && !textView9.isFocused()) {
                            d.b(dVar.f2947I, R.color.white);
                            dVar.f2947I.setTextColor(dVar.getResources().getColor(R.color.color_grey));
                        }
                        TextView textView10 = dVar.f2948J;
                        if (textView10 != null && !textView10.isFocused()) {
                            d.b(dVar.f2948J, R.color.white);
                            dVar.f2948J.setTextColor(dVar.getResources().getColor(R.color.color_grey));
                            break;
                        }
                        break;
                }
            }
        };
        this.f2972s = new Handler();
        try {
            f2936Z.applyFontToView(this.f2954P, f2935Y);
            f2936Z.applyFontToView(this.f2955Q, f2935Y);
            f2936Z.applyFontToView(this.f2956R, f2935Y);
            f2936Z.applyFontToView(this.f2953O, f2935Y);
            f2936Z.applyFontToView(this.f2952N, f2935Y);
            this.f2949K.requestFocus();
            final int i7 = 1;
            new Handler().postDelayed(new Runnable(this) { // from class: Q4.a

                /* renamed from: e, reason: collision with root package name */
                public final /* synthetic */ d f2929e;

                {
                    this.f2929e = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    d dVar = this.f2929e;
                    switch (i7) {
                        case 0:
                            Typeface typeface = d.f2935Y;
                            dVar.setCancelable(true);
                            break;
                        default:
                            TextView textView = dVar.f2939A;
                            if (textView != null && !textView.isFocused()) {
                                d.b(dVar.f2939A, R.color.white);
                                dVar.f2939A.setTextColor(dVar.getResources().getColor(R.color.color_grey));
                            }
                            TextView textView2 = dVar.f2940B;
                            if (textView2 != null && !textView2.isFocused()) {
                                d.b(dVar.f2940B, R.color.white);
                                dVar.f2940B.setTextColor(dVar.getResources().getColor(R.color.color_grey));
                            }
                            TextView textView3 = dVar.f2941C;
                            if (textView3 != null && !textView3.isFocused()) {
                                d.b(dVar.f2941C, R.color.white);
                                dVar.f2941C.setTextColor(dVar.getResources().getColor(R.color.color_grey));
                            }
                            TextView textView4 = dVar.f2942D;
                            if (textView4 != null && !textView4.isFocused()) {
                                d.b(dVar.f2942D, R.color.white);
                                dVar.f2942D.setTextColor(dVar.getResources().getColor(R.color.color_grey));
                            }
                            TextView textView5 = dVar.f2943E;
                            if (textView5 != null && !textView5.isFocused()) {
                                d.b(dVar.f2943E, R.color.white);
                                dVar.f2943E.setTextColor(dVar.getResources().getColor(R.color.color_grey));
                            }
                            TextView textView6 = dVar.f2944F;
                            if (textView6 != null && !textView6.isFocused()) {
                                d.b(dVar.f2944F, R.color.white);
                                dVar.f2944F.setTextColor(dVar.getResources().getColor(R.color.color_grey));
                            }
                            TextView textView7 = dVar.f2946H;
                            if (textView7 != null && !textView7.isFocused()) {
                                d.b(dVar.f2946H, R.color.white);
                                dVar.f2946H.setTextColor(dVar.getResources().getColor(R.color.color_grey));
                            }
                            TextView textView8 = dVar.f2945G;
                            if (textView8 != null && !textView8.isFocused()) {
                                d.b(dVar.f2945G, R.color.white);
                                dVar.f2945G.setTextColor(dVar.getResources().getColor(R.color.color_grey));
                            }
                            TextView textView9 = dVar.f2947I;
                            if (textView9 != null && !textView9.isFocused()) {
                                d.b(dVar.f2947I, R.color.white);
                                dVar.f2947I.setTextColor(dVar.getResources().getColor(R.color.color_grey));
                            }
                            TextView textView10 = dVar.f2948J;
                            if (textView10 != null && !textView10.isFocused()) {
                                d.b(dVar.f2948J, R.color.white);
                                dVar.f2948J.setTextColor(dVar.getResources().getColor(R.color.color_grey));
                                break;
                            }
                            break;
                    }
                }
            }, 100L);
        } catch (Exception unused) {
        }
        if (this.f2974u) {
            setCancelable(true);
            this.f2952N.setVisibility(8);
            this.f2953O.setVisibility(8);
            this.f2977x.setVisibility(0);
            this.f2978y.setVisibility(8);
        }
        getDialog().getWindow().setBackgroundDrawable(new ColorDrawable(0));
        if (this.f2962X) {
            this.f2972s.postDelayed(this.f2973t, Renderer.DEFAULT_DURATION_TO_PROGRESS_US);
        }
    }

    public void setButton1(String str, View.OnClickListener onClickListener) {
        this.f2959U = str;
        this.f2963b = onClickListener;
    }

    public void setButton2(String str, View.OnClickListener onClickListener) {
        this.f2960V = str;
        this.f2964e = onClickListener;
    }

    public void setButton3(String str, View.OnClickListener onClickListener) {
        this.f2961W = str;
        this.f2965f = onClickListener;
    }

    public void setButton_check_update_listener(View.OnClickListener onClickListener) {
        this.f2967m = onClickListener;
    }

    public void setImport_Playlist_listener(View.OnClickListener onClickListener) {
        this.f2971r = onClickListener;
    }

    public void setListener_login(View.OnClickListener onClickListener) {
        this.f2966j = onClickListener;
    }

    public void setListener_watched(View.OnClickListener onClickListener) {
        this.f2968n = onClickListener;
    }

    public void setMenuMode() {
        f2938b0 = true;
        this.f2974u = true;
    }

    public void setMessage(String str) {
        this.f2958T = str;
    }

    public void setMyplaylist_listener(View.OnClickListener onClickListener) {
        this.f2970q = onClickListener;
    }

    public void setTitle(String str) {
        this.f2957S = str;
    }

    public void setTrakt_listener(View.OnClickListener onClickListener) {
        this.f2969p = onClickListener;
    }

    public void setloading() {
        this.f2962X = true;
    }

    public void setButton_contact_us_listener(View.OnClickListener onClickListener) {
    }
}
