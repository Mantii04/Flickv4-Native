package androidx.mediarouter.app;

import B4.ViewOnClickListenerC0038a;
import android.content.Context;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.hardware.SensorManager;
import android.os.Build;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.method.LinkMovementMethod;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.mediarouter.R;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* renamed from: androidx.mediarouter.app.i, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class DialogC0605i extends e.c0 {

    /* renamed from: A, reason: collision with root package name */
    public ListView f7795A;

    /* renamed from: B, reason: collision with root package name */
    public C0602f f7796B;

    /* renamed from: C, reason: collision with root package name */
    public final C0604h f7797C;

    /* renamed from: D, reason: collision with root package name */
    public boolean f7798D;

    /* renamed from: E, reason: collision with root package name */
    public long f7799E;

    /* renamed from: F, reason: collision with root package name */
    public final HandlerC0600d f7800F;

    /* renamed from: n, reason: collision with root package name */
    public final f1.X f7801n;

    /* renamed from: p, reason: collision with root package name */
    public final C0601e f7802p;

    /* renamed from: q, reason: collision with root package name */
    public f1.L f7803q;

    /* renamed from: r, reason: collision with root package name */
    public ArrayList f7804r;

    /* renamed from: s, reason: collision with root package name */
    public TextView f7805s;

    /* renamed from: t, reason: collision with root package name */
    public TextView f7806t;

    /* renamed from: u, reason: collision with root package name */
    public RelativeLayout f7807u;

    /* renamed from: v, reason: collision with root package name */
    public TextView f7808v;

    /* renamed from: w, reason: collision with root package name */
    public TextView f7809w;

    /* renamed from: x, reason: collision with root package name */
    public LinearLayout f7810x;

    /* renamed from: y, reason: collision with root package name */
    public Button f7811y;

    /* renamed from: z, reason: collision with root package name */
    public ProgressBar f7812z;

    public DialogC0605i(Context context) {
        this(context, 0);
    }

    public final void c(List list) {
        this.f7799E = SystemClock.uptimeMillis();
        this.f7804r.clear();
        this.f7804r.addAll(list);
        this.f7796B.notifyDataSetChanged();
        HandlerC0600d handlerC0600d = this.f7800F;
        handlerC0600d.removeMessages(3);
        handlerC0600d.removeMessages(2);
        if (!list.isEmpty()) {
            d(1);
        } else {
            d(0);
            handlerC0600d.sendMessageDelayed(handlerC0600d.obtainMessage(2), 5000L);
        }
    }

    public final void d(int i2) {
        if (i2 == 0) {
            setTitle(R.string.mr_chooser_title);
            this.f7795A.setVisibility(8);
            this.f7806t.setVisibility(0);
            this.f7812z.setVisibility(0);
            this.f7810x.setVisibility(8);
            this.f7811y.setVisibility(8);
            this.f7809w.setVisibility(8);
            this.f7807u.setVisibility(8);
            return;
        }
        if (i2 == 1) {
            setTitle(R.string.mr_chooser_title);
            this.f7795A.setVisibility(0);
            this.f7806t.setVisibility(8);
            this.f7812z.setVisibility(8);
            this.f7810x.setVisibility(8);
            this.f7811y.setVisibility(8);
            this.f7809w.setVisibility(8);
            this.f7807u.setVisibility(8);
            return;
        }
        if (i2 == 2) {
            setTitle(R.string.mr_chooser_title);
            this.f7795A.setVisibility(8);
            this.f7806t.setVisibility(8);
            this.f7812z.setVisibility(0);
            this.f7810x.setVisibility(8);
            this.f7811y.setVisibility(8);
            this.f7809w.setVisibility(4);
            this.f7807u.setVisibility(0);
            return;
        }
        if (i2 != 3) {
            return;
        }
        setTitle(R.string.mr_chooser_zero_routes_found_title);
        this.f7795A.setVisibility(8);
        this.f7806t.setVisibility(8);
        this.f7812z.setVisibility(8);
        this.f7810x.setVisibility(0);
        this.f7811y.setVisibility(0);
        this.f7809w.setVisibility(0);
        this.f7807u.setVisibility(0);
    }

    @Override // e.c0, android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        try {
            getContext().unregisterReceiver(this.f7797C);
        } catch (IllegalArgumentException unused) {
        }
        super.dismiss();
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f7798D = true;
        this.f7801n.addCallback(this.f7803q, this.f7802p, 1);
        refreshRoutes();
        HandlerC0600d handlerC0600d = this.f7800F;
        handlerC0600d.removeMessages(2);
        handlerC0600d.removeMessages(3);
        handlerC0600d.removeMessages(1);
        handlerC0600d.sendMessageDelayed(handlerC0600d.obtainMessage(2), 5000L);
    }

    @Override // e.c0, androidx.activity.p, android.app.Dialog
    public void onCreate(Bundle bundle) {
        String string;
        boolean z6;
        super.onCreate(bundle);
        setContentView(R.layout.mr_chooser_dialog);
        this.f7804r = new ArrayList();
        this.f7796B = new C0602f(getContext(), this.f7804r);
        this.f7805s = (TextView) findViewById(R.id.mr_chooser_title);
        this.f7806t = (TextView) findViewById(R.id.mr_chooser_searching);
        this.f7807u = (RelativeLayout) findViewById(R.id.mr_chooser_wifi_warning_container);
        this.f7808v = (TextView) findViewById(R.id.mr_chooser_wifi_warning_description);
        this.f7809w = (TextView) findViewById(R.id.mr_chooser_wifi_learn_more);
        this.f7810x = (LinearLayout) findViewById(R.id.mr_chooser_ok_button_container);
        this.f7811y = (Button) findViewById(R.id.mr_chooser_ok_button);
        this.f7812z = (ProgressBar) findViewById(R.id.mr_chooser_search_progress_bar);
        Context context = getContext();
        boolean z7 = false;
        if (AbstractC0597a.f7756a == null) {
            if (!AbstractC0597a.c(context)) {
                PackageManager packageManager = context.getPackageManager();
                if (AbstractC0597a.f7760e == null) {
                    AbstractC0597a.f7760e = Boolean.valueOf(packageManager.hasSystemFeature("android.hardware.type.watch"));
                }
                if (!AbstractC0597a.f7760e.booleanValue() && !AbstractC0597a.a(context) && !AbstractC0597a.d(context)) {
                    z6 = true;
                    AbstractC0597a.f7756a = Boolean.valueOf(z6);
                }
            }
            z6 = false;
            AbstractC0597a.f7756a = Boolean.valueOf(z6);
        }
        if (!AbstractC0597a.f7756a.booleanValue()) {
            if (AbstractC0597a.f7758c == null) {
                SensorManager sensorManager = (SensorManager) context.getSystemService("sensor");
                if (Build.VERSION.SDK_INT >= 30 && sensorManager != null && sensorManager.getDefaultSensor(36) != null) {
                    z7 = true;
                }
                AbstractC0597a.f7758c = Boolean.valueOf(z7);
            }
            if (!AbstractC0597a.f7758c.booleanValue()) {
                if (AbstractC0597a.c(context) || AbstractC0597a.b(context.getResources())) {
                    string = context.getString(R.string.mr_chooser_wifi_warning_description_tablet);
                } else if (AbstractC0597a.d(context)) {
                    string = context.getString(R.string.mr_chooser_wifi_warning_description_tv);
                } else {
                    PackageManager packageManager2 = context.getPackageManager();
                    if (AbstractC0597a.f7760e == null) {
                        AbstractC0597a.f7760e = Boolean.valueOf(packageManager2.hasSystemFeature("android.hardware.type.watch"));
                    }
                    string = AbstractC0597a.f7760e.booleanValue() ? context.getString(R.string.mr_chooser_wifi_warning_description_watch) : AbstractC0597a.a(context) ? context.getString(R.string.mr_chooser_wifi_warning_description_car) : context.getString(R.string.mr_chooser_wifi_warning_description_unknown);
                }
                this.f7808v.setText(string);
                this.f7809w.setMovementMethod(LinkMovementMethod.getInstance());
                this.f7811y.setOnClickListener(new ViewOnClickListenerC0038a(this, 6));
                ListView listView = (ListView) findViewById(R.id.mr_chooser_list);
                this.f7795A = listView;
                listView.setAdapter((ListAdapter) this.f7796B);
                this.f7795A.setOnItemClickListener(this.f7796B);
                this.f7795A.setEmptyView(findViewById(android.R.id.empty));
                getWindow().setLayout(G.getDialogWidth(getContext()), -2);
                getContext().registerReceiver(this.f7797C, new IntentFilter("android.intent.action.SCREEN_OFF"));
            }
        }
        string = context.getString(R.string.mr_chooser_wifi_warning_description_phone);
        this.f7808v.setText(string);
        this.f7809w.setMovementMethod(LinkMovementMethod.getInstance());
        this.f7811y.setOnClickListener(new ViewOnClickListenerC0038a(this, 6));
        ListView listView2 = (ListView) findViewById(R.id.mr_chooser_list);
        this.f7795A = listView2;
        listView2.setAdapter((ListAdapter) this.f7796B);
        this.f7795A.setOnItemClickListener(this.f7796B);
        this.f7795A.setEmptyView(findViewById(android.R.id.empty));
        getWindow().setLayout(G.getDialogWidth(getContext()), -2);
        getContext().registerReceiver(this.f7797C, new IntentFilter("android.intent.action.SCREEN_OFF"));
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onDetachedFromWindow() {
        this.f7798D = false;
        this.f7801n.removeCallback(this.f7802p);
        HandlerC0600d handlerC0600d = this.f7800F;
        handlerC0600d.removeMessages(1);
        handlerC0600d.removeMessages(2);
        handlerC0600d.removeMessages(3);
        super.onDetachedFromWindow();
    }

    public boolean onFilterRoute(f1.U u6) {
        return !u6.isDefaultOrBluetooth() && u6.isEnabled() && u6.matchesSelector(this.f7803q);
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
        if (this.f7798D) {
            ArrayList arrayList = new ArrayList(this.f7801n.getRoutes());
            onFilterRoutes(arrayList);
            Collections.sort(arrayList, C0603g.f7790b);
            if (SystemClock.uptimeMillis() - this.f7799E >= 300) {
                c(arrayList);
                return;
            }
            HandlerC0600d handlerC0600d = this.f7800F;
            handlerC0600d.removeMessages(1);
            handlerC0600d.sendMessageAtTime(handlerC0600d.obtainMessage(1, arrayList), this.f7799E + 300);
        }
    }

    public void setRouteSelector(f1.L l7) {
        if (l7 == null) {
            throw new IllegalArgumentException("selector must not be null");
        }
        if (this.f7803q.equals(l7)) {
            return;
        }
        this.f7803q = l7;
        if (this.f7798D) {
            f1.X x6 = this.f7801n;
            C0601e c0601e = this.f7802p;
            x6.removeCallback(c0601e);
            x6.addCallback(l7, c0601e, 1);
        }
        refreshRoutes();
    }

    @Override // e.c0, android.app.Dialog
    public void setTitle(CharSequence charSequence) {
        this.f7805s.setText(charSequence);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public DialogC0605i(android.content.Context r2, int r3) {
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
            r1.f7803q = r2
            androidx.mediarouter.app.d r2 = new androidx.mediarouter.app.d
            r2.<init>(r1)
            r1.f7800F = r2
            android.content.Context r2 = r1.getContext()
            f1.X r2 = f1.X.getInstance(r2)
            r1.f7801n = r2
            androidx.mediarouter.app.e r2 = new androidx.mediarouter.app.e
            r2.<init>(r1)
            r1.f7802p = r2
            androidx.mediarouter.app.h r2 = new androidx.mediarouter.app.h
            r2.<init>(r1)
            r1.f7797C = r2
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.mediarouter.app.DialogC0605i.<init>(android.content.Context, int):void");
    }

    @Override // e.c0, android.app.Dialog
    public void setTitle(int i2) {
        this.f7805s.setText(i2);
    }
}
