package l;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Log;
import org.xmlpull.v1.XmlPullParser;

/* loaded from: classes.dex */
public final class C1 implements A1 {
    @Override // l.A1
    public Drawable createFromXmlInner(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        try {
            return y1.v.createFromXmlInner(context.getResources(), xmlPullParser, attributeSet, theme);
        } catch (Exception e3) {
            Log.e("VdcInflateDelegate", "Exception while inflating <vector>", e3);
            return null;
        }
    }
}
