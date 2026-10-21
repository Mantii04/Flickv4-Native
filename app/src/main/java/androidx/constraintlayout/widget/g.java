package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.Log;
import android.util.Xml;
import org.xmlpull.v1.XmlPullParser;

/* loaded from: classes.dex */
public final class g {

    /* renamed from: a, reason: collision with root package name */
    public final float f5402a;

    /* renamed from: b, reason: collision with root package name */
    public final float f5403b;

    /* renamed from: c, reason: collision with root package name */
    public final float f5404c;

    /* renamed from: d, reason: collision with root package name */
    public final float f5405d;

    /* renamed from: e, reason: collision with root package name */
    public final int f5406e;

    public g(Context context, XmlPullParser xmlPullParser) {
        this.f5402a = Float.NaN;
        this.f5403b = Float.NaN;
        this.f5404c = Float.NaN;
        this.f5405d = Float.NaN;
        this.f5406e = -1;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), R.styleable.Variant);
        int indexCount = obtainStyledAttributes.getIndexCount();
        for (int i2 = 0; i2 < indexCount; i2++) {
            int index = obtainStyledAttributes.getIndex(i2);
            if (index == R.styleable.Variant_constraints) {
                int resourceId = obtainStyledAttributes.getResourceId(index, this.f5406e);
                this.f5406e = resourceId;
                String resourceTypeName = context.getResources().getResourceTypeName(resourceId);
                context.getResources().getResourceName(resourceId);
                if ("layout".equals(resourceTypeName)) {
                    new l().clone(context, resourceId);
                }
            } else if (index == R.styleable.Variant_region_heightLessThan) {
                this.f5405d = obtainStyledAttributes.getDimension(index, this.f5405d);
            } else if (index == R.styleable.Variant_region_heightMoreThan) {
                this.f5403b = obtainStyledAttributes.getDimension(index, this.f5403b);
            } else if (index == R.styleable.Variant_region_widthLessThan) {
                this.f5404c = obtainStyledAttributes.getDimension(index, this.f5404c);
            } else if (index == R.styleable.Variant_region_widthMoreThan) {
                this.f5402a = obtainStyledAttributes.getDimension(index, this.f5402a);
            } else {
                Log.v("ConstraintLayoutStates", "Unknown tag");
            }
        }
        obtainStyledAttributes.recycle();
    }
}
