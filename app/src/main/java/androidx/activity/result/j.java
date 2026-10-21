package androidx.activity.result;

import android.content.Intent;
import android.content.IntentSender;

/* loaded from: classes.dex */
public final class j {

    /* renamed from: a, reason: collision with root package name */
    public final IntentSender f4913a;

    /* renamed from: b, reason: collision with root package name */
    public Intent f4914b;

    /* renamed from: c, reason: collision with root package name */
    public int f4915c;

    /* renamed from: d, reason: collision with root package name */
    public int f4916d;

    public j(IntentSender intentSender) {
        kotlin.jvm.internal.j.checkNotNullParameter(intentSender, "intentSender");
        this.f4913a = intentSender;
    }

    public final m build() {
        return new m(this.f4913a, this.f4914b, this.f4915c, this.f4916d);
    }

    public final j setFillInIntent(Intent intent) {
        this.f4914b = intent;
        return this;
    }

    public final j setFlags(int i2, int i7) {
        this.f4916d = i2;
        this.f4915c = i7;
        return this;
    }
}
