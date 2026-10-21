package i4;

import android.view.View;
import h4.InterfaceC0986a;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;

/* renamed from: i4.g, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1016g extends AbstractC1011b {

    /* renamed from: b, reason: collision with root package name */
    public final WeakReference f16724b;

    /* renamed from: c, reason: collision with root package name */
    public long f16725c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f16726d = false;

    /* renamed from: e, reason: collision with root package name */
    public InterfaceC0986a f16727e = null;

    /* renamed from: f, reason: collision with root package name */
    public final C1013d f16728f = new C1013d(this);

    /* renamed from: g, reason: collision with root package name */
    public final ArrayList f16729g = new ArrayList();

    /* renamed from: h, reason: collision with root package name */
    public final RunnableC1012c f16730h = new RunnableC1012c(this);

    /* renamed from: i, reason: collision with root package name */
    public final HashMap f16731i = new HashMap();

    public C1016g(View view) {
        this.f16724b = new WeakReference(view);
    }

    /* JADX WARN: Code restructure failed: missing block: B:45:0x0074, code lost:
    
        continue;
     */
    /* JADX WARN: Removed duplicated region for block: B:26:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00cb  */
    /* JADX WARN: Removed duplicated region for block: B:54:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(float r11, int r12) {
        /*
            r10 = this;
            java.lang.ref.WeakReference r0 = r10.f16724b
            java.lang.Object r1 = r0.get()
            android.view.View r1 = (android.view.View) r1
            if (r1 == 0) goto L62
            r2 = 1
            if (r12 == r2) goto L5d
            r2 = 2
            if (r12 == r2) goto L58
            r2 = 4
            if (r12 == r2) goto L53
            r2 = 8
            if (r12 == r2) goto L4e
            r2 = 16
            if (r12 == r2) goto L49
            r2 = 32
            if (r12 == r2) goto L44
            r2 = 64
            if (r12 == r2) goto L3f
            r2 = 128(0x80, float:1.794E-43)
            if (r12 == r2) goto L3a
            r2 = 256(0x100, float:3.59E-43)
            if (r12 == r2) goto L35
            r2 = 512(0x200, float:7.175E-43)
            if (r12 == r2) goto L30
            goto L62
        L30:
            float r1 = r1.getAlpha()
            goto L63
        L35:
            float r1 = r1.getY()
            goto L63
        L3a:
            float r1 = r1.getX()
            goto L63
        L3f:
            float r1 = r1.getRotationY()
            goto L63
        L44:
            float r1 = r1.getRotationX()
            goto L63
        L49:
            float r1 = r1.getRotation()
            goto L63
        L4e:
            float r1 = r1.getScaleY()
            goto L63
        L53:
            float r1 = r1.getScaleX()
            goto L63
        L58:
            float r1 = r1.getTranslationY()
            goto L63
        L5d:
            float r1 = r1.getTranslationX()
            goto L63
        L62:
            r1 = 0
        L63:
            float r11 = r11 - r1
            java.util.HashMap r2 = r10.f16731i
            int r3 = r2.size()
            if (r3 <= 0) goto Lb3
            java.util.Set r3 = r2.keySet()
            java.util.Iterator r3 = r3.iterator()
        L74:
            boolean r4 = r3.hasNext()
            if (r4 == 0) goto Lad
            java.lang.Object r4 = r3.next()
            h4.b r4 = (h4.b) r4
            java.lang.Object r5 = r2.get(r4)
            i4.f r5 = (i4.C1015f) r5
            int r6 = r5.f16722a
            r6 = r6 & r12
            if (r6 == 0) goto L74
            java.util.ArrayList r6 = r5.f16723b
            int r7 = r6.size()
            r8 = 0
        L92:
            if (r8 >= r7) goto L74
            java.lang.Object r9 = r6.get(r8)
            i4.e r9 = (i4.C1014e) r9
            int r9 = r9.f16719a
            if (r9 != r12) goto Laa
            r6.remove(r8)
            int r6 = r5.f16722a
            int r7 = ~r12
            r6 = r6 & r7
            r5.f16722a = r6
            if (r6 != 0) goto L74
            goto Lae
        Laa:
            int r8 = r8 + 1
            goto L92
        Lad:
            r4 = 0
        Lae:
            if (r4 == 0) goto Lb3
            r4.cancel()
        Lb3:
            i4.e r2 = new i4.e
            r2.<init>()
            r2.f16719a = r12
            r2.f16720b = r1
            r2.f16721c = r11
            java.util.ArrayList r11 = r10.f16729g
            r11.add(r2)
            java.lang.Object r11 = r0.get()
            android.view.View r11 = (android.view.View) r11
            if (r11 == 0) goto Ld3
            i4.c r12 = r10.f16730h
            r11.removeCallbacks(r12)
            r11.post(r12)
        Ld3:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: i4.C1016g.a(float, int):void");
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
        this.f16726d = true;
        this.f16725c = j7;
        return this;
    }

    @Override // i4.AbstractC1011b
    public AbstractC1011b setListener(InterfaceC0986a interfaceC0986a) {
        this.f16727e = interfaceC0986a;
        return this;
    }

    @Override // i4.AbstractC1011b
    public AbstractC1011b translationX(float f3) {
        a(f3, 1);
        return this;
    }
}
