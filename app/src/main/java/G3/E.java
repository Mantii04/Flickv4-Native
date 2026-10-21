package G3;

import android.view.View;

/* loaded from: classes2.dex */
public final class E extends C {

    /* renamed from: f, reason: collision with root package name */
    public boolean f1066f = false;

    /* renamed from: g, reason: collision with root package name */
    public float f1067g = 0.0f;

    public E(View view) {
        d(view);
    }

    private void d(View view) {
        view.setOutlineProvider(new D(this));
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x010b, code lost:
    
        if (r0 == false) goto L65;
     */
    @Override // G3.C
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(android.view.View r10) {
        /*
            Method dump skipped, instructions count: 294
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: G3.E.a(android.view.View):void");
    }

    @Override // G3.C
    public final boolean b() {
        return !this.f1066f || this.f1060a;
    }
}
