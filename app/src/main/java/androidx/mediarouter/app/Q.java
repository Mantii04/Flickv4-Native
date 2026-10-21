package androidx.mediarouter.app;

import android.content.Context;
import android.os.Bundle;
import android.os.SystemClock;
import android.widget.ImageButton;
import androidx.mediarouter.R;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public final class Q extends e.c0 {

    /* renamed from: n, reason: collision with root package name */
    public final f1.X f7730n;

    /* renamed from: p, reason: collision with root package name */
    public final J f7731p;

    /* renamed from: q, reason: collision with root package name */
    public final Context f7732q;

    /* renamed from: r, reason: collision with root package name */
    public f1.L f7733r;

    /* renamed from: s, reason: collision with root package name */
    public ArrayList f7734s;

    /* renamed from: t, reason: collision with root package name */
    public O f7735t;

    /* renamed from: u, reason: collision with root package name */
    public RecyclerView f7736u;

    /* renamed from: v, reason: collision with root package name */
    public boolean f7737v;

    /* renamed from: w, reason: collision with root package name */
    public f1.U f7738w;

    /* renamed from: x, reason: collision with root package name */
    public final long f7739x;

    /* renamed from: y, reason: collision with root package name */
    public long f7740y;

    /* renamed from: z, reason: collision with root package name */
    public final H f7741z;

    public Q(Context context) {
        this(context, 0);
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f7737v = true;
        this.f7730n.addCallback(this.f7733r, this.f7731p, 1);
        refreshRoutes();
    }

    @Override // e.c0, androidx.activity.p, android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.mr_picker_dialog);
        Context context = this.f7732q;
        int i2 = o0.f7886a;
        getWindow().getDecorView().setBackgroundColor(A.h.getColor(context, o0.h(context) ? R.color.mr_dynamic_dialog_background_light : R.color.mr_dynamic_dialog_background_dark));
        this.f7734s = new ArrayList();
        ((ImageButton) findViewById(R.id.mr_picker_close_button)).setOnClickListener(new I(this));
        this.f7735t = new O(this);
        RecyclerView recyclerView = (RecyclerView) findViewById(R.id.mr_picker_list);
        this.f7736u = recyclerView;
        recyclerView.setAdapter(this.f7735t);
        this.f7736u.setLayoutManager(new LinearLayoutManager(context));
        getWindow().setLayout(G.getDialogWidthForDynamicGroup(context), G.getDialogHeight(context));
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f7737v = false;
        this.f7730n.removeCallback(this.f7731p);
        this.f7741z.removeMessages(1);
    }

    public boolean onFilterRoute(f1.U u6) {
        return !u6.isDefaultOrBluetooth() && u6.isEnabled() && u6.matchesSelector(this.f7733r);
    }

    public void onFilterRoutes(List<f1.U> list) {
        int size = list.size();
        while (true) {
            int i2 = size - 1;
            if (size <= 0) {
                return;
            }
            if (!onFilterRoute(list.get(i2))) {
                list.remove(i2);
            }
            size = i2;
        }
    }

    public void refreshRoutes() {
        if (this.f7738w == null && this.f7737v) {
            ArrayList arrayList = new ArrayList(this.f7730n.getRoutes());
            onFilterRoutes(arrayList);
            Collections.sort(arrayList, P.f7729b);
            long uptimeMillis = SystemClock.uptimeMillis() - this.f7740y;
            long j7 = this.f7739x;
            if (uptimeMillis < j7) {
                H h7 = this.f7741z;
                h7.removeMessages(1);
                h7.sendMessageAtTime(h7.obtainMessage(1, arrayList), this.f7740y + j7);
            } else {
                this.f7740y = SystemClock.uptimeMillis();
                this.f7734s.clear();
                this.f7734s.addAll(arrayList);
                this.f7735t.a();
            }
        }
    }

    public void setRouteSelector(f1.L l7) {
        if (l7 == null) {
            throw new IllegalArgumentException("selector must not be null");
        }
        if (this.f7733r.equals(l7)) {
            return;
        }
        this.f7733r = l7;
        if (this.f7737v) {
            f1.X x6 = this.f7730n;
            J j7 = this.f7731p;
            x6.removeCallback(j7);
            x6.addCallback(l7, j7, 1);
        }
        refreshRoutes();
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public Q(android.content.Context r2, int r3) {
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
            r1.f7733r = r2
            androidx.mediarouter.app.H r2 = new androidx.mediarouter.app.H
            r2.<init>(r1)
            r1.f7741z = r2
            android.content.Context r2 = r1.getContext()
            f1.X r3 = f1.X.getInstance(r2)
            r1.f7730n = r3
            androidx.mediarouter.app.J r3 = new androidx.mediarouter.app.J
            r3.<init>(r1)
            r1.f7731p = r3
            r1.f7732q = r2
            android.content.res.Resources r2 = r2.getResources()
            int r3 = androidx.mediarouter.R.integer.mr_update_routes_delay_ms
            int r2 = r2.getInteger(r3)
            long r2 = (long) r2
            r1.f7739x = r2
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.mediarouter.app.Q.<init>(android.content.Context, int):void");
    }
}
