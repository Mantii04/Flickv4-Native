package androidx.mediarouter.app;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.os.SystemClock;
import android.renderscript.Allocation;
import android.renderscript.Element;
import android.renderscript.RenderScript;
import android.renderscript.ScriptIntrinsicBlur;
import android.support.v4.media.MediaDescriptionCompat;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.session.MediaControllerCompat;
import android.support.v4.media.session.MediaSessionCompat;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.mediarouter.R;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;

/* loaded from: classes.dex */
public final class m0 extends e.c0 {

    /* renamed from: c0, reason: collision with root package name */
    public static final /* synthetic */ int f7842c0 = 0;

    /* renamed from: A, reason: collision with root package name */
    public final S f7843A;

    /* renamed from: B, reason: collision with root package name */
    public RecyclerView f7844B;

    /* renamed from: C, reason: collision with root package name */
    public j0 f7845C;

    /* renamed from: D, reason: collision with root package name */
    public l0 f7846D;

    /* renamed from: E, reason: collision with root package name */
    public HashMap f7847E;

    /* renamed from: F, reason: collision with root package name */
    public f1.U f7848F;

    /* renamed from: G, reason: collision with root package name */
    public HashMap f7849G;

    /* renamed from: H, reason: collision with root package name */
    public boolean f7850H;

    /* renamed from: I, reason: collision with root package name */
    public boolean f7851I;

    /* renamed from: J, reason: collision with root package name */
    public boolean f7852J;

    /* renamed from: K, reason: collision with root package name */
    public ImageButton f7853K;

    /* renamed from: L, reason: collision with root package name */
    public Button f7854L;

    /* renamed from: M, reason: collision with root package name */
    public ImageView f7855M;

    /* renamed from: N, reason: collision with root package name */
    public View f7856N;

    /* renamed from: O, reason: collision with root package name */
    public ImageView f7857O;

    /* renamed from: P, reason: collision with root package name */
    public TextView f7858P;

    /* renamed from: Q, reason: collision with root package name */
    public TextView f7859Q;

    /* renamed from: R, reason: collision with root package name */
    public String f7860R;

    /* renamed from: S, reason: collision with root package name */
    public MediaControllerCompat f7861S;

    /* renamed from: T, reason: collision with root package name */
    public final W f7862T;

    /* renamed from: U, reason: collision with root package name */
    public MediaDescriptionCompat f7863U;

    /* renamed from: V, reason: collision with root package name */
    public V f7864V;

    /* renamed from: W, reason: collision with root package name */
    public Bitmap f7865W;

    /* renamed from: X, reason: collision with root package name */
    public Uri f7866X;

    /* renamed from: Y, reason: collision with root package name */
    public boolean f7867Y;

    /* renamed from: Z, reason: collision with root package name */
    public Bitmap f7868Z;

    /* renamed from: a0, reason: collision with root package name */
    public int f7869a0;

    /* renamed from: b0, reason: collision with root package name */
    public final boolean f7870b0;

    /* renamed from: n, reason: collision with root package name */
    public final f1.X f7871n;

    /* renamed from: p, reason: collision with root package name */
    public final Z f7872p;

    /* renamed from: q, reason: collision with root package name */
    public f1.L f7873q;

    /* renamed from: r, reason: collision with root package name */
    public f1.U f7874r;

    /* renamed from: s, reason: collision with root package name */
    public final ArrayList f7875s;

    /* renamed from: t, reason: collision with root package name */
    public final ArrayList f7876t;

    /* renamed from: u, reason: collision with root package name */
    public final ArrayList f7877u;

    /* renamed from: v, reason: collision with root package name */
    public final ArrayList f7878v;

    /* renamed from: w, reason: collision with root package name */
    public final Context f7879w;

    /* renamed from: x, reason: collision with root package name */
    public boolean f7880x;

    /* renamed from: y, reason: collision with root package name */
    public boolean f7881y;

    /* renamed from: z, reason: collision with root package name */
    public long f7882z;

    static {
        Log.isLoggable("MediaRouteCtrlDialog", 3);
    }

    public m0(Context context) {
        this(context, 0);
    }

    public final void c() {
        MediaDescriptionCompat mediaDescriptionCompat = this.f7863U;
        Bitmap iconBitmap = mediaDescriptionCompat == null ? null : mediaDescriptionCompat.getIconBitmap();
        MediaDescriptionCompat mediaDescriptionCompat2 = this.f7863U;
        Uri iconUri = mediaDescriptionCompat2 != null ? mediaDescriptionCompat2.getIconUri() : null;
        V v6 = this.f7864V;
        Bitmap bitmap = v6 == null ? this.f7865W : v6.f7745a;
        Uri uri = v6 == null ? this.f7866X : v6.f7746b;
        if (bitmap != iconBitmap || (bitmap == null && !L.c.equals(uri, iconUri))) {
            V v7 = this.f7864V;
            if (v7 != null) {
                v7.cancel(true);
            }
            V v8 = new V(this);
            this.f7864V = v8;
            v8.execute(new Void[0]);
        }
    }

    public final void d(MediaSessionCompat.Token token) {
        MediaControllerCompat mediaControllerCompat = this.f7861S;
        W w6 = this.f7862T;
        if (mediaControllerCompat != null) {
            mediaControllerCompat.unregisterCallback(w6);
            this.f7861S = null;
        }
        if (token != null && this.f7881y) {
            MediaControllerCompat mediaControllerCompat2 = new MediaControllerCompat(this.f7879w, token);
            this.f7861S = mediaControllerCompat2;
            mediaControllerCompat2.registerCallback(w6);
            MediaMetadataCompat metadata = this.f7861S.getMetadata();
            this.f7863U = metadata != null ? metadata.getDescription() : null;
            c();
            f();
        }
    }

    public final void e() {
        Context context = this.f7879w;
        getWindow().setLayout(G.getDialogWidthForDynamicGroup(context), G.getDialogHeight(context));
        this.f7865W = null;
        this.f7866X = null;
        c();
        f();
        h();
    }

    public final void f() {
        Bitmap bitmap;
        if ((this.f7848F != null || this.f7850H) ? true : !this.f7880x) {
            this.f7852J = true;
            return;
        }
        this.f7852J = false;
        if (!this.f7874r.isSelected() || this.f7874r.isDefaultOrBluetooth()) {
            dismiss();
        }
        if (!this.f7867Y || (((bitmap = this.f7868Z) != null && bitmap.isRecycled()) || this.f7868Z == null)) {
            Bitmap bitmap2 = this.f7868Z;
            if (bitmap2 != null && bitmap2.isRecycled()) {
                Log.w("MediaRouteCtrlDialog", "Can't set artwork image with recycled bitmap: " + this.f7868Z);
            }
            this.f7857O.setVisibility(8);
            this.f7856N.setVisibility(8);
            this.f7855M.setImageBitmap(null);
        } else {
            this.f7857O.setVisibility(0);
            this.f7857O.setImageBitmap(this.f7868Z);
            this.f7857O.setBackgroundColor(this.f7869a0);
            this.f7856N.setVisibility(0);
            Bitmap bitmap3 = this.f7868Z;
            RenderScript create = RenderScript.create(this.f7879w);
            Allocation createFromBitmap = Allocation.createFromBitmap(create, bitmap3);
            Allocation createTyped = Allocation.createTyped(create, createFromBitmap.getType());
            ScriptIntrinsicBlur create2 = ScriptIntrinsicBlur.create(create, Element.U8_4(create));
            create2.setRadius(10.0f);
            create2.setInput(createFromBitmap);
            create2.forEach(createTyped);
            Bitmap copy = bitmap3.copy(bitmap3.getConfig(), true);
            createTyped.copyTo(copy);
            createFromBitmap.destroy();
            createTyped.destroy();
            create2.destroy();
            create.destroy();
            this.f7855M.setImageBitmap(copy);
        }
        this.f7867Y = false;
        this.f7868Z = null;
        this.f7869a0 = 0;
        MediaDescriptionCompat mediaDescriptionCompat = this.f7863U;
        CharSequence title = mediaDescriptionCompat == null ? null : mediaDescriptionCompat.getTitle();
        boolean isEmpty = TextUtils.isEmpty(title);
        MediaDescriptionCompat mediaDescriptionCompat2 = this.f7863U;
        CharSequence subtitle = mediaDescriptionCompat2 != null ? mediaDescriptionCompat2.getSubtitle() : null;
        boolean isEmpty2 = TextUtils.isEmpty(subtitle);
        if (isEmpty) {
            this.f7858P.setText(this.f7860R);
        } else {
            this.f7858P.setText(title);
        }
        if (isEmpty2) {
            this.f7859Q.setVisibility(8);
        } else {
            this.f7859Q.setText(subtitle);
            this.f7859Q.setVisibility(0);
        }
    }

    public final void g() {
        ArrayList arrayList = this.f7875s;
        arrayList.clear();
        ArrayList arrayList2 = this.f7876t;
        arrayList2.clear();
        ArrayList arrayList3 = this.f7877u;
        arrayList3.clear();
        arrayList.addAll(this.f7874r.getMemberRoutes());
        for (f1.U u6 : this.f7874r.getProvider().getRoutes()) {
            f1.T dynamicGroupState = this.f7874r.getDynamicGroupState(u6);
            if (dynamicGroupState != null) {
                if (dynamicGroupState.isGroupable()) {
                    arrayList2.add(u6);
                }
                if (dynamicGroupState.isTransferable()) {
                    arrayList3.add(u6);
                }
            }
        }
        onFilterRoutes(arrayList2);
        onFilterRoutes(arrayList3);
        k0 k0Var = k0.f7838b;
        Collections.sort(arrayList, k0Var);
        Collections.sort(arrayList2, k0Var);
        Collections.sort(arrayList3, k0Var);
        this.f7845C.d();
    }

    public final void h() {
        if (this.f7881y) {
            if (SystemClock.uptimeMillis() - this.f7882z < 300) {
                S s6 = this.f7843A;
                s6.removeMessages(1);
                s6.sendEmptyMessageAtTime(1, this.f7882z + 300);
                return;
            }
            if ((this.f7848F != null || this.f7850H) ? true : !this.f7880x) {
                this.f7851I = true;
                return;
            }
            this.f7851I = false;
            if (!this.f7874r.isSelected() || this.f7874r.isDefaultOrBluetooth()) {
                dismiss();
            }
            this.f7882z = SystemClock.uptimeMillis();
            this.f7845C.c();
        }
    }

    public final void i() {
        if (this.f7851I) {
            h();
        }
        if (this.f7852J) {
            f();
        }
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f7881y = true;
        f1.L l7 = this.f7873q;
        Z z6 = this.f7872p;
        f1.X x6 = this.f7871n;
        x6.addCallback(l7, z6, 1);
        g();
        d(x6.getMediaSessionToken());
    }

    @Override // e.c0, androidx.activity.p, android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.mr_cast_dialog);
        Context context = this.f7879w;
        int i2 = o0.f7886a;
        getWindow().getDecorView().setBackgroundColor(A.h.getColor(context, o0.h(context) ? R.color.mr_dynamic_dialog_background_light : R.color.mr_dynamic_dialog_background_dark));
        ImageButton imageButton = (ImageButton) findViewById(R.id.mr_cast_close_button);
        this.f7853K = imageButton;
        imageButton.setColorFilter(-1);
        this.f7853K.setOnClickListener(new T(this));
        Button button = (Button) findViewById(R.id.mr_cast_stop_button);
        this.f7854L = button;
        button.setTextColor(-1);
        this.f7854L.setOnClickListener(new U(this));
        this.f7845C = new j0(this);
        RecyclerView recyclerView = (RecyclerView) findViewById(R.id.mr_cast_list);
        this.f7844B = recyclerView;
        recyclerView.setAdapter(this.f7845C);
        this.f7844B.setLayoutManager(new LinearLayoutManager(context));
        this.f7846D = new l0(this);
        this.f7847E = new HashMap();
        this.f7849G = new HashMap();
        this.f7855M = (ImageView) findViewById(R.id.mr_cast_meta_background);
        this.f7856N = findViewById(R.id.mr_cast_meta_black_scrim);
        this.f7857O = (ImageView) findViewById(R.id.mr_cast_meta_art);
        TextView textView = (TextView) findViewById(R.id.mr_cast_meta_title);
        this.f7858P = textView;
        textView.setTextColor(-1);
        TextView textView2 = (TextView) findViewById(R.id.mr_cast_meta_subtitle);
        this.f7859Q = textView2;
        textView2.setTextColor(-1);
        this.f7860R = context.getResources().getString(R.string.mr_cast_dialog_title_view_placeholder);
        this.f7880x = true;
        e();
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f7881y = false;
        this.f7871n.removeCallback(this.f7872p);
        this.f7843A.removeCallbacksAndMessages(null);
        d(null);
    }

    public boolean onFilterRoute(f1.U u6) {
        return !u6.isDefaultOrBluetooth() && u6.isEnabled() && u6.matchesSelector(this.f7873q) && this.f7874r != u6;
    }

    public void onFilterRoutes(List<f1.U> list) {
        for (int size = list.size() - 1; size >= 0; size--) {
            if (!onFilterRoute(list.get(size))) {
                list.remove(size);
            }
        }
    }

    public void setRouteSelector(f1.L l7) {
        if (l7 == null) {
            throw new IllegalArgumentException("selector must not be null");
        }
        if (this.f7873q.equals(l7)) {
            return;
        }
        this.f7873q = l7;
        if (this.f7881y) {
            f1.X x6 = this.f7871n;
            Z z6 = this.f7872p;
            x6.removeCallback(z6);
            x6.addCallback(l7, z6, 1);
            g();
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public m0(android.content.Context r2, int r3) {
        /*
            r1 = this;
            r0 = 0
            android.view.ContextThemeWrapper r2 = androidx.mediarouter.app.o0.a(r2, r3, r0)
            int r3 = androidx.mediarouter.R.attr.mediaRouteTheme
            int r3 = androidx.mediarouter.app.o0.g(r2, r3)
            if (r3 != 0) goto L11
            int r3 = androidx.mediarouter.app.o0.e(r2)
        L11:
            r1.<init>(r2, r3)
            f1.L r2 = f1.L.f14160c
            r1.f7873q = r2
            java.util.ArrayList r2 = new java.util.ArrayList
            r2.<init>()
            r1.f7875s = r2
            java.util.ArrayList r2 = new java.util.ArrayList
            r2.<init>()
            r1.f7876t = r2
            java.util.ArrayList r2 = new java.util.ArrayList
            r2.<init>()
            r1.f7877u = r2
            java.util.ArrayList r2 = new java.util.ArrayList
            r2.<init>()
            r1.f7878v = r2
            androidx.mediarouter.app.S r2 = new androidx.mediarouter.app.S
            r2.<init>(r1)
            r1.f7843A = r2
            android.content.Context r2 = r1.getContext()
            r1.f7879w = r2
            f1.X r2 = f1.X.getInstance(r2)
            r1.f7871n = r2
            boolean r3 = f1.X.isGroupVolumeUxEnabled()
            r1.f7870b0 = r3
            androidx.mediarouter.app.Z r3 = new androidx.mediarouter.app.Z
            r3.<init>(r1)
            r1.f7872p = r3
            f1.U r3 = r2.getSelectedRoute()
            r1.f7874r = r3
            androidx.mediarouter.app.W r3 = new androidx.mediarouter.app.W
            r3.<init>(r1)
            r1.f7862T = r3
            android.support.v4.media.session.MediaSessionCompat$Token r2 = r2.getMediaSessionToken()
            r1.d(r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.mediarouter.app.m0.<init>(android.content.Context, int):void");
    }
}
