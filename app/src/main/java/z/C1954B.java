package z;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Bundle;
import androidx.core.graphics.drawable.IconCompat;
import java.util.ArrayList;

/* renamed from: z.B, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1954B {

    /* renamed from: a, reason: collision with root package name */
    public final Context f21325a;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f21326b;

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f21327c;

    /* renamed from: d, reason: collision with root package name */
    public final ArrayList f21328d;

    /* renamed from: e, reason: collision with root package name */
    public CharSequence f21329e;

    /* renamed from: f, reason: collision with root package name */
    public CharSequence f21330f;

    /* renamed from: g, reason: collision with root package name */
    public PendingIntent f21331g;

    /* renamed from: h, reason: collision with root package name */
    public IconCompat f21332h;

    /* renamed from: i, reason: collision with root package name */
    public int f21333i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f21334j;

    /* renamed from: k, reason: collision with root package name */
    public C f21335k;

    /* renamed from: l, reason: collision with root package name */
    public int f21336l;

    /* renamed from: m, reason: collision with root package name */
    public int f21337m;

    /* renamed from: n, reason: collision with root package name */
    public boolean f21338n;

    /* renamed from: o, reason: collision with root package name */
    public boolean f21339o;

    /* renamed from: p, reason: collision with root package name */
    public Bundle f21340p;

    /* renamed from: q, reason: collision with root package name */
    public int f21341q;

    /* renamed from: r, reason: collision with root package name */
    public String f21342r;

    /* renamed from: s, reason: collision with root package name */
    public int f21343s;

    /* renamed from: t, reason: collision with root package name */
    public final boolean f21344t;

    /* renamed from: u, reason: collision with root package name */
    public final Notification f21345u;

    /* renamed from: v, reason: collision with root package name */
    public final ArrayList f21346v;

    public C1954B(Context context, String str) {
        this.f21326b = new ArrayList();
        this.f21327c = new ArrayList();
        this.f21328d = new ArrayList();
        this.f21334j = true;
        this.f21339o = false;
        this.f21341q = 0;
        this.f21343s = 0;
        Notification notification = new Notification();
        this.f21345u = notification;
        this.f21325a = context;
        this.f21342r = str;
        notification.when = System.currentTimeMillis();
        notification.audioStreamType = -1;
        this.f21333i = 0;
        this.f21346v = new ArrayList();
        this.f21344t = true;
    }

    public static CharSequence limitCharSequenceLength(CharSequence charSequence) {
        return charSequence == null ? charSequence : charSequence.length() > 5120 ? charSequence.subSequence(0, 5120) : charSequence;
    }

    public C1954B addAction(int i2, CharSequence charSequence, PendingIntent pendingIntent) {
        this.f21326b.add(new y(i2, charSequence, pendingIntent));
        return this;
    }

    public Notification build() {
        return new M(this).build();
    }

    public Bundle getExtras() {
        if (this.f21340p == null) {
            this.f21340p = new Bundle();
        }
        return this.f21340p;
    }

    public C1954B setAutoCancel(boolean z6) {
        Notification notification = this.f21345u;
        if (z6) {
            notification.flags |= 16;
            return this;
        }
        notification.flags &= -17;
        return this;
    }

    public C1954B setChannelId(String str) {
        this.f21342r = str;
        return this;
    }

    public C1954B setContentIntent(PendingIntent pendingIntent) {
        this.f21331g = pendingIntent;
        return this;
    }

    public C1954B setContentText(CharSequence charSequence) {
        this.f21330f = limitCharSequenceLength(charSequence);
        return this;
    }

    public C1954B setContentTitle(CharSequence charSequence) {
        this.f21329e = limitCharSequenceLength(charSequence);
        return this;
    }

    public C1954B setForegroundServiceBehavior(int i2) {
        this.f21343s = i2;
        return this;
    }

    public C1954B setLargeIcon(Bitmap bitmap) {
        this.f21332h = bitmap == null ? null : IconCompat.createWithBitmap(D.reduceLargeIconSize(this.f21325a, bitmap));
        return this;
    }

    public C1954B setLocalOnly(boolean z6) {
        this.f21339o = z6;
        return this;
    }

    public C1954B setOngoing(boolean z6) {
        Notification notification = this.f21345u;
        if (z6) {
            notification.flags |= 2;
            return this;
        }
        notification.flags &= -3;
        return this;
    }

    public C1954B setPriority(int i2) {
        this.f21333i = i2;
        return this;
    }

    public C1954B setProgress(int i2, int i7, boolean z6) {
        this.f21336l = i2;
        this.f21337m = i7;
        this.f21338n = z6;
        return this;
    }

    public C1954B setShowWhen(boolean z6) {
        this.f21334j = z6;
        return this;
    }

    public C1954B setSmallIcon(int i2) {
        this.f21345u.icon = i2;
        return this;
    }

    public C1954B setStyle(C c7) {
        if (this.f21335k != c7) {
            this.f21335k = c7;
            if (c7 != null) {
                c7.setBuilder(this);
            }
        }
        return this;
    }

    public C1954B setTicker(CharSequence charSequence) {
        this.f21345u.tickerText = limitCharSequenceLength(charSequence);
        return this;
    }

    public C1954B setVisibility(int i2) {
        this.f21341q = i2;
        return this;
    }

    public C1954B setWhen(long j7) {
        this.f21345u.when = j7;
        return this;
    }

    public C1954B addAction(y yVar) {
        if (yVar != null) {
            this.f21326b.add(yVar);
        }
        return this;
    }

    @Deprecated
    public C1954B(Context context) {
        this(context, null);
    }
}
