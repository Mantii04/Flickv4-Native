package i4;

import android.view.View;
import h4.InterfaceC0986a;
import j4.C1054a;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;

/* loaded from: classes2.dex */
public final class n extends AbstractC1011b {

    /* renamed from: b, reason: collision with root package name */
    public final C1054a f16741b;

    /* renamed from: c, reason: collision with root package name */
    public final WeakReference f16742c;

    /* renamed from: d, reason: collision with root package name */
    public long f16743d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f16744e = false;

    /* renamed from: f, reason: collision with root package name */
    public InterfaceC0986a f16745f = null;

    /* renamed from: g, reason: collision with root package name */
    public final k f16746g = new k(this);

    /* renamed from: h, reason: collision with root package name */
    public final ArrayList f16747h = new ArrayList();

    /* renamed from: i, reason: collision with root package name */
    public final j f16748i = new j(this);

    /* renamed from: j, reason: collision with root package name */
    public final HashMap f16749j = new HashMap();

    public n(View view) {
        this.f16742c = new WeakReference(view);
        this.f16741b = C1054a.wrap(view);
    }

    /* JADX WARN: Code restructure failed: missing block: B:43:0x006b, code lost:
    
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(float r10, int r11) {
        /*
            r9 = this;
            r0 = 1
            j4.a r1 = r9.f16741b
            if (r11 == r0) goto L56
            r0 = 2
            if (r11 == r0) goto L51
            r0 = 4
            if (r11 == r0) goto L4c
            r0 = 8
            if (r11 == r0) goto L47
            r0 = 16
            if (r11 == r0) goto L42
            r0 = 32
            if (r11 == r0) goto L3d
            r0 = 64
            if (r11 == r0) goto L38
            r0 = 128(0x80, float:1.794E-43)
            if (r11 == r0) goto L33
            r0 = 256(0x100, float:3.59E-43)
            if (r11 == r0) goto L2e
            r0 = 512(0x200, float:7.175E-43)
            if (r11 == r0) goto L29
            r0 = 0
            goto L5a
        L29:
            float r0 = r1.getAlpha()
            goto L5a
        L2e:
            float r0 = r1.getY()
            goto L5a
        L33:
            float r0 = r1.getX()
            goto L5a
        L38:
            float r0 = r1.getRotationY()
            goto L5a
        L3d:
            float r0 = r1.getRotationX()
            goto L5a
        L42:
            float r0 = r1.getRotation()
            goto L5a
        L47:
            float r0 = r1.getScaleY()
            goto L5a
        L4c:
            float r0 = r1.getScaleX()
            goto L5a
        L51:
            float r0 = r1.getTranslationY()
            goto L5a
        L56:
            float r0 = r1.getTranslationX()
        L5a:
            float r10 = r10 - r0
            java.util.HashMap r1 = r9.f16749j
            int r2 = r1.size()
            if (r2 <= 0) goto Laa
            java.util.Set r2 = r1.keySet()
            java.util.Iterator r2 = r2.iterator()
        L6b:
            boolean r3 = r2.hasNext()
            if (r3 == 0) goto La4
            java.lang.Object r3 = r2.next()
            h4.b r3 = (h4.b) r3
            java.lang.Object r4 = r1.get(r3)
            i4.m r4 = (i4.m) r4
            int r5 = r4.f16739a
            r5 = r5 & r11
            if (r5 == 0) goto L6b
            java.util.ArrayList r5 = r4.f16740b
            int r6 = r5.size()
            r7 = 0
        L89:
            if (r7 >= r6) goto L6b
            java.lang.Object r8 = r5.get(r7)
            i4.l r8 = (i4.l) r8
            int r8 = r8.f16736a
            if (r8 != r11) goto La1
            r5.remove(r7)
            int r5 = r4.f16739a
            int r6 = ~r11
            r5 = r5 & r6
            r4.f16739a = r5
            if (r5 != 0) goto L6b
            goto La5
        La1:
            int r7 = r7 + 1
            goto L89
        La4:
            r3 = 0
        La5:
            if (r3 == 0) goto Laa
            r3.cancel()
        Laa:
            i4.l r1 = new i4.l
            r1.<init>()
            r1.f16736a = r11
            r1.f16737b = r0
            r1.f16738c = r10
            java.util.ArrayList r10 = r9.f16747h
            r10.add(r1)
            java.lang.ref.WeakReference r10 = r9.f16742c
            java.lang.Object r10 = r10.get()
            android.view.View r10 = (android.view.View) r10
            if (r10 == 0) goto Lcc
            i4.j r11 = r9.f16748i
            r10.removeCallbacks(r11)
            r10.post(r11)
        Lcc:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: i4.n.a(float, int):void");
    }

    @Override // i4.AbstractC1011b
    public AbstractC1011b alpha(float f3) {
        a(f3, 512);
        return this;
    }

    @Override // i4.AbstractC1011b
    public AbstractC1011b setDuration(long j7) {
        if (j7 < 0) {
            throw new IllegalArgumentException(A.i.i("Animators cannot have negative duration: ", j7));
        }
        this.f16744e = true;
        this.f16743d = j7;
        return this;
    }

    @Override // i4.AbstractC1011b
    public AbstractC1011b setListener(InterfaceC0986a interfaceC0986a) {
        this.f16745f = interfaceC0986a;
        return this;
    }

    @Override // i4.AbstractC1011b
    public AbstractC1011b translationX(float f3) {
        a(f3, 1);
        return this;
    }
}
