package C;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Shader;
import android.util.Log;

/* loaded from: classes.dex */
public final class d {

    /* renamed from: a, reason: collision with root package name */
    public final Shader f311a;

    /* renamed from: b, reason: collision with root package name */
    public final ColorStateList f312b;

    /* renamed from: c, reason: collision with root package name */
    public int f313c;

    public d(Shader shader, ColorStateList colorStateList, int i2) {
        this.f311a = shader;
        this.f312b = colorStateList;
        this.f313c = i2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:73:0x016f, code lost:
    
        throw new org.xmlpull.v1.XmlPullParserException(r25.getPositionDescription() + ": <item> tag requires a 'color' attribute and a 'offset' attribute!");
     */
    /* JADX WARN: Removed duplicated region for block: B:35:0x01e3  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0218  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static C.d a(android.content.res.Resources r27, int r28, android.content.res.Resources.Theme r29) {
        /*
            Method dump skipped, instructions count: 658
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: C.d.a(android.content.res.Resources, int, android.content.res.Resources$Theme):C.d");
    }

    public static d inflate(Resources resources, int i2, Resources.Theme theme) {
        try {
            return a(resources, i2, theme);
        } catch (Exception e3) {
            Log.e("ComplexColorCompat", "Failed to inflate ComplexColor.", e3);
            return null;
        }
    }

    public int getColor() {
        return this.f313c;
    }

    public Shader getShader() {
        return this.f311a;
    }

    public boolean isGradient() {
        return this.f311a != null;
    }

    public boolean isStateful() {
        ColorStateList colorStateList;
        return this.f311a == null && (colorStateList = this.f312b) != null && colorStateList.isStateful();
    }

    public boolean onStateChanged(int[] iArr) {
        if (!isStateful()) {
            return false;
        }
        ColorStateList colorStateList = this.f312b;
        int colorForState = colorStateList.getColorForState(iArr, colorStateList.getDefaultColor());
        if (colorForState == this.f313c) {
            return false;
        }
        this.f313c = colorForState;
        return true;
    }

    public void setColor(int i2) {
        this.f313c = i2;
    }

    public boolean willDraw() {
        return isGradient() || this.f313c != 0;
    }
}
