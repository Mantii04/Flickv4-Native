package y1;

import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import org.xmlpull.v1.XmlPullParser;

/* loaded from: classes.dex */
public final class n extends r {
    public void inflate(Resources resources, AttributeSet attributeSet, Resources.Theme theme, XmlPullParser xmlPullParser) {
        if (C.v.hasAttribute(xmlPullParser, "pathData")) {
            TypedArray obtainAttributes = C.v.obtainAttributes(resources, theme, attributeSet, AbstractC1870a.f20966d);
            String string = obtainAttributes.getString(0);
            if (string != null) {
                this.f21014b = string;
            }
            String string2 = obtainAttributes.getString(1);
            if (string2 != null) {
                this.f21013a = D.g.createNodesFromPathData(string2);
            }
            this.f21015c = C.v.getNamedInt(obtainAttributes, xmlPullParser, "fillType", 2, 0);
            obtainAttributes.recycle();
        }
    }

    @Override // y1.r
    public boolean isClipPath() {
        return true;
    }
}
