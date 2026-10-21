package l;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Log;
import org.xmlpull.v1.XmlPullParser;
import y1.C1877h;

/* renamed from: l.x1, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1197x1 implements A1 {
    @Override // l.A1
    public Drawable createFromXmlInner(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        try {
            return C1877h.createFromXmlInner(context, context.getResources(), xmlPullParser, attributeSet, theme);
        } catch (Exception e3) {
            Log.e("AvdcInflateDelegate", "Exception while inflating <animated-vector>", e3);
            return null;
        }
    }
}
