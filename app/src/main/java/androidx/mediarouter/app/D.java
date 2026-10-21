package androidx.mediarouter.app;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.media.MediaDescriptionCompat;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.session.MediaControllerCompat;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.media.session.PlaybackStateCompat;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.AlphaAnimation;
import android.view.animation.AnimationSet;
import android.view.animation.Interpolator;
import android.view.animation.TranslateAnimation;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.RelativeLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.mediarouter.R;
import e.DialogInterfaceC0839s;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class D extends DialogInterfaceC0839s {

    /* renamed from: A0, reason: collision with root package name */
    public static final int f7608A0;

    /* renamed from: A, reason: collision with root package name */
    public MediaRouteExpandCollapseButton f7609A;

    /* renamed from: B, reason: collision with root package name */
    public FrameLayout f7610B;

    /* renamed from: C, reason: collision with root package name */
    public LinearLayout f7611C;

    /* renamed from: D, reason: collision with root package name */
    public FrameLayout f7612D;

    /* renamed from: E, reason: collision with root package name */
    public FrameLayout f7613E;

    /* renamed from: F, reason: collision with root package name */
    public ImageView f7614F;

    /* renamed from: G, reason: collision with root package name */
    public TextView f7615G;

    /* renamed from: H, reason: collision with root package name */
    public TextView f7616H;

    /* renamed from: I, reason: collision with root package name */
    public TextView f7617I;

    /* renamed from: J, reason: collision with root package name */
    public final boolean f7618J;

    /* renamed from: K, reason: collision with root package name */
    public final boolean f7619K;

    /* renamed from: L, reason: collision with root package name */
    public LinearLayout f7620L;

    /* renamed from: M, reason: collision with root package name */
    public RelativeLayout f7621M;

    /* renamed from: N, reason: collision with root package name */
    public LinearLayout f7622N;

    /* renamed from: O, reason: collision with root package name */
    public View f7623O;

    /* renamed from: P, reason: collision with root package name */
    public OverlayListView f7624P;

    /* renamed from: Q, reason: collision with root package name */
    public C f7625Q;

    /* renamed from: R, reason: collision with root package name */
    public ArrayList f7626R;

    /* renamed from: S, reason: collision with root package name */
    public Set f7627S;

    /* renamed from: T, reason: collision with root package name */
    public Set f7628T;

    /* renamed from: U, reason: collision with root package name */
    public HashSet f7629U;

    /* renamed from: V, reason: collision with root package name */
    public SeekBar f7630V;

    /* renamed from: W, reason: collision with root package name */
    public B f7631W;

    /* renamed from: X, reason: collision with root package name */
    public f1.U f7632X;

    /* renamed from: Y, reason: collision with root package name */
    public int f7633Y;

    /* renamed from: Z, reason: collision with root package name */
    public int f7634Z;

    /* renamed from: a0, reason: collision with root package name */
    public int f7635a0;

    /* renamed from: b0, reason: collision with root package name */
    public final int f7636b0;

    /* renamed from: c0, reason: collision with root package name */
    public HashMap f7637c0;

    /* renamed from: d0, reason: collision with root package name */
    public MediaControllerCompat f7638d0;

    /* renamed from: e0, reason: collision with root package name */
    public final C0620y f7639e0;

    /* renamed from: f0, reason: collision with root package name */
    public PlaybackStateCompat f7640f0;

    /* renamed from: g0, reason: collision with root package name */
    public MediaDescriptionCompat f7641g0;

    /* renamed from: h0, reason: collision with root package name */
    public AsyncTaskC0619x f7642h0;

    /* renamed from: i0, reason: collision with root package name */
    public Bitmap f7643i0;

    /* renamed from: j0, reason: collision with root package name */
    public Uri f7644j0;

    /* renamed from: k0, reason: collision with root package name */
    public boolean f7645k0;

    /* renamed from: l0, reason: collision with root package name */
    public Bitmap f7646l0;

    /* renamed from: m0, reason: collision with root package name */
    public int f7647m0;

    /* renamed from: n0, reason: collision with root package name */
    public boolean f7648n0;

    /* renamed from: o0, reason: collision with root package name */
    public boolean f7649o0;

    /* renamed from: p, reason: collision with root package name */
    public final f1.X f7650p;

    /* renamed from: p0, reason: collision with root package name */
    public boolean f7651p0;

    /* renamed from: q, reason: collision with root package name */
    public final C0621z f7652q;

    /* renamed from: q0, reason: collision with root package name */
    public boolean f7653q0;

    /* renamed from: r, reason: collision with root package name */
    public final f1.U f7654r;

    /* renamed from: r0, reason: collision with root package name */
    public boolean f7655r0;

    /* renamed from: s, reason: collision with root package name */
    public final Context f7656s;

    /* renamed from: s0, reason: collision with root package name */
    public int f7657s0;

    /* renamed from: t, reason: collision with root package name */
    public boolean f7658t;

    /* renamed from: t0, reason: collision with root package name */
    public int f7659t0;

    /* renamed from: u, reason: collision with root package name */
    public boolean f7660u;

    /* renamed from: u0, reason: collision with root package name */
    public int f7661u0;

    /* renamed from: v, reason: collision with root package name */
    public int f7662v;

    /* renamed from: v0, reason: collision with root package name */
    public Interpolator f7663v0;

    /* renamed from: w, reason: collision with root package name */
    public View f7664w;

    /* renamed from: w0, reason: collision with root package name */
    public final Interpolator f7665w0;

    /* renamed from: x, reason: collision with root package name */
    public Button f7666x;

    /* renamed from: x0, reason: collision with root package name */
    public final Interpolator f7667x0;

    /* renamed from: y, reason: collision with root package name */
    public Button f7668y;

    /* renamed from: y0, reason: collision with root package name */
    public final AccessibilityManager f7669y0;

    /* renamed from: z, reason: collision with root package name */
    public ImageButton f7670z;

    /* renamed from: z0, reason: collision with root package name */
    public final RunnableC0610n f7671z0;

    static {
        Log.isLoggable("MediaRouteCtrlDialog", 3);
        f7608A0 = (int) TimeUnit.SECONDS.toMillis(30L);
    }

    public D(Context context) {
        this(context, 0);
    }

    public static void k(View view, int i2) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        layoutParams.height = i2;
        view.setLayoutParams(layoutParams);
    }

    public final void d(View view, int i2) {
        C0615t c0615t = new C0615t(view, view.getLayoutParams().height, i2);
        c0615t.setDuration(this.f7657s0);
        c0615t.setInterpolator(this.f7663v0);
        view.startAnimation(c0615t);
    }

    public final boolean e() {
        if (this.f7664w == null) {
            return (this.f7641g0 == null && this.f7640f0 == null) ? false : true;
        }
        return false;
    }

    public final void f(boolean z6) {
        Set set;
        int firstVisiblePosition = this.f7624P.getFirstVisiblePosition();
        for (int i2 = 0; i2 < this.f7624P.getChildCount(); i2++) {
            View childAt = this.f7624P.getChildAt(i2);
            f1.U u6 = (f1.U) this.f7625Q.getItem(firstVisiblePosition + i2);
            if (!z6 || (set = this.f7627S) == null || !set.contains(u6)) {
                ((LinearLayout) childAt.findViewById(R.id.volume_item_container)).setVisibility(0);
                AnimationSet animationSet = new AnimationSet(true);
                AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 1.0f);
                alphaAnimation.setDuration(0L);
                animationSet.addAnimation(alphaAnimation);
                new TranslateAnimation(0.0f, 0.0f, 0.0f, 0.0f).setDuration(0L);
                animationSet.setFillAfter(true);
                animationSet.setFillEnabled(true);
                childAt.clearAnimation();
                childAt.startAnimation(animationSet);
            }
        }
        this.f7624P.stopAnimationAll();
        if (z6) {
            return;
        }
        g(false);
    }

    public final void g(boolean z6) {
        this.f7627S = null;
        this.f7628T = null;
        this.f7653q0 = false;
        if (this.f7655r0) {
            this.f7655r0 = false;
            p(z6);
        }
        this.f7624P.setEnabled(true);
    }

    public final int h(int i2, int i7) {
        return i2 >= i7 ? (int) (((this.f7662v * i7) / i2) + 0.5f) : (int) (((this.f7662v * 9.0f) / 16.0f) + 0.5f);
    }

    public final int i(boolean z6) {
        if (!z6 && this.f7622N.getVisibility() != 0) {
            return 0;
        }
        int paddingBottom = this.f7620L.getPaddingBottom() + this.f7620L.getPaddingTop();
        if (z6) {
            paddingBottom += this.f7621M.getMeasuredHeight();
        }
        if (this.f7622N.getVisibility() == 0) {
            paddingBottom += this.f7622N.getMeasuredHeight();
        }
        return (z6 && this.f7622N.getVisibility() == 0) ? this.f7623O.getMeasuredHeight() + paddingBottom : paddingBottom;
    }

    public final boolean j() {
        f1.U u6 = this.f7654r;
        return u6.isGroup() && u6.getMemberRoutes().size() > 1;
    }

    public final void l(MediaSessionCompat.Token token) {
        MediaControllerCompat mediaControllerCompat = this.f7638d0;
        C0620y c0620y = this.f7639e0;
        if (mediaControllerCompat != null) {
            mediaControllerCompat.unregisterCallback(c0620y);
            this.f7638d0 = null;
        }
        if (token != null && this.f7660u) {
            MediaControllerCompat mediaControllerCompat2 = new MediaControllerCompat(this.f7656s, token);
            this.f7638d0 = mediaControllerCompat2;
            mediaControllerCompat2.registerCallback(c0620y);
            MediaMetadataCompat metadata = this.f7638d0.getMetadata();
            this.f7641g0 = metadata != null ? metadata.getDescription() : null;
            this.f7640f0 = this.f7638d0.getPlaybackState();
            n();
            m(false);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:49:0x014f  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0159  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0163  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x015b  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0151  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m(boolean r13) {
        /*
            Method dump skipped, instructions count: 487
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.mediarouter.app.D.m(boolean):void");
    }

    public final void n() {
        if (this.f7664w == null) {
            MediaDescriptionCompat mediaDescriptionCompat = this.f7641g0;
            Bitmap iconBitmap = mediaDescriptionCompat == null ? null : mediaDescriptionCompat.getIconBitmap();
            MediaDescriptionCompat mediaDescriptionCompat2 = this.f7641g0;
            Uri iconUri = mediaDescriptionCompat2 != null ? mediaDescriptionCompat2.getIconUri() : null;
            AsyncTaskC0619x asyncTaskC0619x = this.f7642h0;
            Bitmap iconBitmap2 = asyncTaskC0619x == null ? this.f7643i0 : asyncTaskC0619x.getIconBitmap();
            AsyncTaskC0619x asyncTaskC0619x2 = this.f7642h0;
            Uri iconUri2 = asyncTaskC0619x2 == null ? this.f7644j0 : asyncTaskC0619x2.getIconUri();
            if (iconBitmap2 == iconBitmap) {
                if (iconBitmap2 != null) {
                    return;
                }
                if (iconUri2 != null && iconUri2.equals(iconUri)) {
                    return;
                }
                if (iconUri2 == null && iconUri == null) {
                    return;
                }
            }
            if (!j() || this.f7619K) {
                AsyncTaskC0619x asyncTaskC0619x3 = this.f7642h0;
                if (asyncTaskC0619x3 != null) {
                    asyncTaskC0619x3.cancel(true);
                }
                AsyncTaskC0619x asyncTaskC0619x4 = new AsyncTaskC0619x(this);
                this.f7642h0 = asyncTaskC0619x4;
                asyncTaskC0619x4.execute(new Void[0]);
            }
        }
    }

    public final void o() {
        Context context = this.f7656s;
        int dialogWidth = G.getDialogWidth(context);
        getWindow().setLayout(dialogWidth, -2);
        View decorView = getWindow().getDecorView();
        this.f7662v = (dialogWidth - decorView.getPaddingLeft()) - decorView.getPaddingRight();
        Resources resources = context.getResources();
        this.f7633Y = resources.getDimensionPixelSize(R.dimen.mr_controller_volume_group_list_item_icon_size);
        this.f7634Z = resources.getDimensionPixelSize(R.dimen.mr_controller_volume_group_list_item_height);
        this.f7635a0 = resources.getDimensionPixelSize(R.dimen.mr_controller_volume_group_list_max_height);
        this.f7643i0 = null;
        this.f7644j0 = null;
        n();
        m(false);
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f7660u = true;
        f1.L l7 = f1.L.f14160c;
        C0621z c0621z = this.f7652q;
        f1.X x6 = this.f7650p;
        x6.addCallback(l7, c0621z, 2);
        l(x6.getMediaSessionToken());
    }

    @Override // e.DialogInterfaceC0839s, e.c0, androidx.activity.p, android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getWindow().setBackgroundDrawableResource(android.R.color.transparent);
        setContentView(R.layout.mr_controller_material_dialog_b);
        findViewById(android.R.id.button3).setVisibility(8);
        ViewOnClickListenerC0618w viewOnClickListenerC0618w = new ViewOnClickListenerC0618w(this);
        FrameLayout frameLayout = (FrameLayout) findViewById(R.id.mr_expandable_area);
        this.f7610B = frameLayout;
        frameLayout.setOnClickListener(new ViewOnClickListenerC0611o(this));
        LinearLayout linearLayout = (LinearLayout) findViewById(R.id.mr_dialog_area);
        this.f7611C = linearLayout;
        linearLayout.setOnClickListener(new ViewOnClickListenerC0612p());
        int i2 = androidx.appcompat.R.attr.colorPrimary;
        Context context = this.f7656s;
        int f3 = o0.f(context, 0, i2);
        if (D.a.calculateContrast(f3, o0.f(context, 0, android.R.attr.colorBackground)) < 3.0d) {
            f3 = o0.f(context, 0, androidx.appcompat.R.attr.colorAccent);
        }
        Button button = (Button) findViewById(android.R.id.button2);
        this.f7666x = button;
        button.setText(R.string.mr_controller_disconnect);
        this.f7666x.setTextColor(f3);
        this.f7666x.setOnClickListener(viewOnClickListenerC0618w);
        Button button2 = (Button) findViewById(android.R.id.button1);
        this.f7668y = button2;
        button2.setText(R.string.mr_controller_stop_casting);
        this.f7668y.setTextColor(f3);
        this.f7668y.setOnClickListener(viewOnClickListenerC0618w);
        this.f7617I = (TextView) findViewById(R.id.mr_name);
        ((ImageButton) findViewById(R.id.mr_close)).setOnClickListener(viewOnClickListenerC0618w);
        this.f7613E = (FrameLayout) findViewById(R.id.mr_custom_control);
        this.f7612D = (FrameLayout) findViewById(R.id.mr_default_control);
        ViewOnClickListenerC0613q viewOnClickListenerC0613q = new ViewOnClickListenerC0613q(this);
        ImageView imageView = (ImageView) findViewById(R.id.mr_art);
        this.f7614F = imageView;
        imageView.setOnClickListener(viewOnClickListenerC0613q);
        findViewById(R.id.mr_control_title_container).setOnClickListener(viewOnClickListenerC0613q);
        this.f7620L = (LinearLayout) findViewById(R.id.mr_media_main_control);
        this.f7623O = findViewById(R.id.mr_control_divider);
        this.f7621M = (RelativeLayout) findViewById(R.id.mr_playback_control);
        this.f7615G = (TextView) findViewById(R.id.mr_control_title);
        this.f7616H = (TextView) findViewById(R.id.mr_control_subtitle);
        ImageButton imageButton = (ImageButton) findViewById(R.id.mr_control_playback_ctrl);
        this.f7670z = imageButton;
        imageButton.setOnClickListener(viewOnClickListenerC0618w);
        LinearLayout linearLayout2 = (LinearLayout) findViewById(R.id.mr_volume_control);
        this.f7622N = linearLayout2;
        linearLayout2.setVisibility(8);
        SeekBar seekBar = (SeekBar) findViewById(R.id.mr_volume_slider);
        this.f7630V = seekBar;
        f1.U u6 = this.f7654r;
        seekBar.setTag(u6);
        B b7 = new B(this);
        this.f7631W = b7;
        this.f7630V.setOnSeekBarChangeListener(b7);
        this.f7624P = (OverlayListView) findViewById(R.id.mr_volume_group_list);
        this.f7626R = new ArrayList();
        C c7 = new C(this, this.f7624P.getContext(), this.f7626R);
        this.f7625Q = c7;
        this.f7624P.setAdapter((ListAdapter) c7);
        this.f7629U = new HashSet();
        LinearLayout linearLayout3 = this.f7620L;
        OverlayListView overlayListView = this.f7624P;
        boolean j7 = j();
        int f7 = o0.f(context, 0, androidx.appcompat.R.attr.colorPrimary);
        int f8 = o0.f(context, 0, androidx.appcompat.R.attr.colorPrimaryDark);
        if (j7 && o0.b(context, 0) == -570425344) {
            f8 = f7;
            f7 = -1;
        }
        linearLayout3.setBackgroundColor(f7);
        overlayListView.setBackgroundColor(f8);
        linearLayout3.setTag(Integer.valueOf(f7));
        overlayListView.setTag(Integer.valueOf(f8));
        MediaRouteVolumeSlider mediaRouteVolumeSlider = (MediaRouteVolumeSlider) this.f7630V;
        LinearLayout linearLayout4 = this.f7620L;
        int b8 = o0.b(context, 0);
        if (Color.alpha(b8) != 255) {
            b8 = D.a.compositeColors(b8, ((Integer) linearLayout4.getTag()).intValue());
        }
        mediaRouteVolumeSlider.setColor(b8);
        HashMap hashMap = new HashMap();
        this.f7637c0 = hashMap;
        hashMap.put(u6, this.f7630V);
        MediaRouteExpandCollapseButton mediaRouteExpandCollapseButton = (MediaRouteExpandCollapseButton) findViewById(R.id.mr_group_expand_collapse);
        this.f7609A = mediaRouteExpandCollapseButton;
        mediaRouteExpandCollapseButton.setOnClickListener(new r(this));
        this.f7663v0 = this.f7651p0 ? this.f7665w0 : this.f7667x0;
        this.f7657s0 = context.getResources().getInteger(R.integer.mr_controller_volume_group_list_animation_duration_ms);
        this.f7659t0 = context.getResources().getInteger(R.integer.mr_controller_volume_group_list_fade_in_duration_ms);
        this.f7661u0 = context.getResources().getInteger(R.integer.mr_controller_volume_group_list_fade_out_duration_ms);
        View onCreateMediaControlView = onCreateMediaControlView(bundle);
        this.f7664w = onCreateMediaControlView;
        if (onCreateMediaControlView != null) {
            this.f7613E.addView(onCreateMediaControlView);
            this.f7613E.setVisibility(0);
        }
        this.f7658t = true;
        o();
    }

    public View onCreateMediaControlView(Bundle bundle) {
        return null;
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onDetachedFromWindow() {
        this.f7650p.removeCallback(this.f7652q);
        l(null);
        this.f7660u = false;
        super.onDetachedFromWindow();
    }

    @Override // e.DialogInterfaceC0839s, android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        if (i2 != 25 && i2 != 24) {
            return super.onKeyDown(i2, keyEvent);
        }
        if (this.f7619K || !this.f7651p0) {
            this.f7654r.requestUpdateVolume(i2 == 25 ? -1 : 1);
        }
        return true;
    }

    @Override // e.DialogInterfaceC0839s, android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i2, KeyEvent keyEvent) {
        if (i2 == 25 || i2 == 24) {
            return true;
        }
        return super.onKeyUp(i2, keyEvent);
    }

    public final void p(boolean z6) {
        this.f7612D.requestLayout();
        this.f7612D.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserverOnGlobalLayoutListenerC0614s(this, z6));
    }

    public final void q(boolean z6) {
        int i2 = 0;
        this.f7623O.setVisibility((this.f7622N.getVisibility() == 0 && z6) ? 0 : 8);
        LinearLayout linearLayout = this.f7620L;
        if (this.f7622N.getVisibility() == 8 && !z6) {
            i2 = 8;
        }
        linearLayout.setVisibility(i2);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public D(android.content.Context r3, int r4) {
        /*
            r2 = this;
            r0 = 1
            android.view.ContextThemeWrapper r3 = androidx.mediarouter.app.o0.a(r3, r4, r0)
            int r4 = androidx.mediarouter.R.attr.mediaRouteTheme
            int r4 = androidx.mediarouter.app.o0.g(r3, r4)
            if (r4 != 0) goto L11
            int r4 = androidx.mediarouter.app.o0.e(r3)
        L11:
            r2.<init>(r3, r4)
            r2.f7618J = r0
            androidx.mediarouter.app.n r4 = new androidx.mediarouter.app.n
            r4.<init>(r2)
            r2.f7671z0 = r4
            android.content.Context r4 = r2.getContext()
            r2.f7656s = r4
            androidx.mediarouter.app.y r0 = new androidx.mediarouter.app.y
            r0.<init>(r2)
            r2.f7639e0 = r0
            f1.X r0 = f1.X.getInstance(r4)
            r2.f7650p = r0
            boolean r1 = f1.X.isGroupVolumeUxEnabled()
            r2.f7619K = r1
            androidx.mediarouter.app.z r1 = new androidx.mediarouter.app.z
            r1.<init>(r2)
            r2.f7652q = r1
            f1.U r1 = r0.getSelectedRoute()
            r2.f7654r = r1
            android.support.v4.media.session.MediaSessionCompat$Token r0 = r0.getMediaSessionToken()
            r2.l(r0)
            android.content.res.Resources r0 = r4.getResources()
            int r1 = androidx.mediarouter.R.dimen.mr_controller_volume_group_list_padding_top
            int r0 = r0.getDimensionPixelSize(r1)
            r2.f7636b0 = r0
            java.lang.String r0 = "accessibility"
            java.lang.Object r4 = r4.getSystemService(r0)
            android.view.accessibility.AccessibilityManager r4 = (android.view.accessibility.AccessibilityManager) r4
            r2.f7669y0 = r4
            int r4 = androidx.mediarouter.R.interpolator.mr_linear_out_slow_in
            android.view.animation.Interpolator r4 = android.view.animation.AnimationUtils.loadInterpolator(r3, r4)
            r2.f7665w0 = r4
            int r4 = androidx.mediarouter.R.interpolator.mr_fast_out_slow_in
            android.view.animation.Interpolator r3 = android.view.animation.AnimationUtils.loadInterpolator(r3, r4)
            r2.f7667x0 = r3
            android.view.animation.AccelerateDecelerateInterpolator r3 = new android.view.animation.AccelerateDecelerateInterpolator
            r3.<init>()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.mediarouter.app.D.<init>(android.content.Context, int):void");
    }
}
