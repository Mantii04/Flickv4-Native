package l;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Log;
import org.xmlpull.v1.XmlPullParser;

/* renamed from: l.w1, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1194w1 implements A1 {
    @Override // l.A1
    public Drawable createFromXmlInner(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        try {
            return g.g.createFromXmlInner(context, context.getResources(), xmlPullParser, attributeSet, theme);
        } catch (Exception e3) {
            Log.e("AsldcInflateDelegate", "Exception while inflating <animated-selector>", e3);
            return null;
        }
    }
}
