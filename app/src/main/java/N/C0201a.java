package N;

import android.os.Bundle;
import android.text.style.ClickableSpan;
import android.view.View;

/* renamed from: N.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0201a extends ClickableSpan {

    /* renamed from: a, reason: collision with root package name */
    public final int f2117a;

    /* renamed from: b, reason: collision with root package name */
    public final n f2118b;

    /* renamed from: c, reason: collision with root package name */
    public final int f2119c;

    public C0201a(int i2, n nVar, int i7) {
        this.f2117a = i2;
        this.f2118b = nVar;
        this.f2119c = i7;
    }

    @Override // android.text.style.ClickableSpan
    public void onClick(View view) {
        Bundle bundle = new Bundle();
        bundle.putInt("ACCESSIBILITY_CLICKABLE_SPAN_ID", this.f2117a);
        this.f2118b.performAction(this.f2119c, bundle);
    }
}
