package g;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes.dex */
public final class g extends p {

    /* renamed from: A, reason: collision with root package name */
    public int f16321A;

    /* renamed from: B, reason: collision with root package name */
    public int f16322B;

    /* renamed from: C, reason: collision with root package name */
    public boolean f16323C;

    /* renamed from: y, reason: collision with root package name */
    public b f16324y;

    /* renamed from: z, reason: collision with root package name */
    public f f16325z;

    public g() {
        this(null, null);
    }

    public static g createFromXmlInner(Context context, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws IOException, XmlPullParserException {
        String name = xmlPullParser.getName();
        if (name.equals("animated-selector")) {
            g gVar = new g();
            gVar.inflate(context, resources, xmlPullParser, attributeSet, theme);
            return gVar;
        }
        throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": invalid animated-selector tag " + name);
    }

    @Override // g.l
    public final void d(b bVar) {
        this.f16362b = bVar;
        int i2 = this.f16368p;
        if (i2 >= 0) {
            Drawable child = bVar.getChild(i2);
            this.f16364f = child;
            if (child != null) {
                b(child);
            }
        }
        this.f16365j = null;
        this.f16389w = bVar;
        this.f16324y = bVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x025c, code lost:
    
        onStateChange(getState());
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0263, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void inflate(android.content.Context r22, android.content.res.Resources r23, org.xmlpull.v1.XmlPullParser r24, android.util.AttributeSet r25, android.content.res.Resources.Theme r26) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException {
        /*
            Method dump skipped, instructions count: 612
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: g.g.inflate(android.content.Context, android.content.res.Resources, org.xmlpull.v1.XmlPullParser, android.util.AttributeSet, android.content.res.Resources$Theme):void");
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return true;
    }

    @Override // g.l, android.graphics.drawable.Drawable
    public void jumpToCurrentState() {
        super.jumpToCurrentState();
        f fVar = this.f16325z;
        if (fVar != null) {
            fVar.stop();
            this.f16325z = null;
            c(this.f16321A);
            this.f16321A = -1;
            this.f16322B = -1;
        }
    }

    @Override // g.p, g.l, android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.f16323C && super.mutate() == this) {
            b bVar = this.f16324y;
            bVar.f16313I = bVar.f16313I.clone();
            bVar.f16314J = bVar.f16314J.clone();
            this.f16323C = true;
        }
        return this;
    }

    /* JADX WARN: Code restructure failed: missing block: B:57:0x0127, code lost:
    
        if (c(r4) != false) goto L64;
     */
    @Override // g.p, android.graphics.drawable.Drawable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onStateChange(int[] r15) {
        /*
            Method dump skipped, instructions count: 311
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: g.g.onStateChange(int[]):boolean");
    }

    @Override // g.l, android.graphics.drawable.Drawable
    public boolean setVisible(boolean z6, boolean z7) {
        boolean visible = super.setVisible(z6, z7);
        f fVar = this.f16325z;
        if (fVar != null && (visible || z7)) {
            if (z6) {
                fVar.start();
                return visible;
            }
            jumpToCurrentState();
        }
        return visible;
    }

    public g(b bVar, Resources resources) {
        this.f16321A = -1;
        this.f16322B = -1;
        d(new b(bVar, this, resources));
        onStateChange(getState());
        jumpToCurrentState();
    }
}
