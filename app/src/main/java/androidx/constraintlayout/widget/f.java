package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.Xml;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;

/* loaded from: classes.dex */
public final class f {

    /* renamed from: a, reason: collision with root package name */
    public final int f5399a;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f5400b = new ArrayList();

    /* renamed from: c, reason: collision with root package name */
    public final int f5401c;

    public f(Context context, XmlPullParser xmlPullParser) {
        this.f5401c = -1;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), R.styleable.State);
        int indexCount = obtainStyledAttributes.getIndexCount();
        for (int i2 = 0; i2 < indexCount; i2++) {
            int index = obtainStyledAttributes.getIndex(i2);
            if (index == R.styleable.State_android_id) {
                this.f5399a = obtainStyledAttributes.getResourceId(index, this.f5399a);
            } else if (index == R.styleable.State_constraints) {
                int resourceId = obtainStyledAttributes.getResourceId(index, this.f5401c);
                this.f5401c = resourceId;
                String resourceTypeName = context.getResources().getResourceTypeName(resourceId);
                context.getResources().getResourceName(resourceId);
                if ("layout".equals(resourceTypeName)) {
                    new l().clone(context, resourceId);
                }
            }
        }
        obtainStyledAttributes.recycle();
    }
}
