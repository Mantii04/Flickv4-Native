package l;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import f.AbstractC0876a;

/* loaded from: classes.dex */
public final class e2 {

    /* renamed from: a, reason: collision with root package name */
    public final Context f17883a;

    /* renamed from: b, reason: collision with root package name */
    public final TypedArray f17884b;

    /* renamed from: c, reason: collision with root package name */
    public TypedValue f17885c;

    public e2(Context context, TypedArray typedArray) {
        this.f17883a = context;
        this.f17884b = typedArray;
    }

    public static e2 obtainStyledAttributes(Context context, AttributeSet attributeSet, int[] iArr) {
        return new e2(context, context.obtainStyledAttributes(attributeSet, iArr));
    }

    public boolean getBoolean(int i2, boolean z6) {
        return this.f17884b.getBoolean(i2, z6);
    }

    public int getColor(int i2, int i7) {
        return this.f17884b.getColor(i2, i7);
    }

    public ColorStateList getColorStateList(int i2) {
        int resourceId;
        ColorStateList colorStateList;
        TypedArray typedArray = this.f17884b;
        return (!typedArray.hasValue(i2) || (resourceId = typedArray.getResourceId(i2, 0)) == 0 || (colorStateList = AbstractC0876a.getColorStateList(this.f17883a, resourceId)) == null) ? typedArray.getColorStateList(i2) : colorStateList;
    }

    public float getDimension(int i2, float f3) {
        return this.f17884b.getDimension(i2, f3);
    }

    public int getDimensionPixelOffset(int i2, int i7) {
        return this.f17884b.getDimensionPixelOffset(i2, i7);
    }

    public int getDimensionPixelSize(int i2, int i7) {
        return this.f17884b.getDimensionPixelSize(i2, i7);
    }

    public Drawable getDrawable(int i2) {
        int resourceId;
        TypedArray typedArray = this.f17884b;
        return (!typedArray.hasValue(i2) || (resourceId = typedArray.getResourceId(i2, 0)) == 0) ? typedArray.getDrawable(i2) : AbstractC0876a.getDrawable(this.f17883a, resourceId);
    }

    public Drawable getDrawableIfKnown(int i2) {
        int resourceId;
        Drawable e3;
        if (!this.f17884b.hasValue(i2) || (resourceId = this.f17884b.getResourceId(i2, 0)) == 0) {
            return null;
        }
        I i7 = I.get();
        Context context = this.f17883a;
        synchronized (i7) {
            e3 = i7.f17708a.e(context, resourceId, true);
        }
        return e3;
    }

    public float getFloat(int i2, float f3) {
        return this.f17884b.getFloat(i2, f3);
    }

    public Typeface getFont(int i2, int i7, C.r rVar) {
        int resourceId = this.f17884b.getResourceId(i2, 0);
        if (resourceId == 0) {
            return null;
        }
        if (this.f17885c == null) {
            this.f17885c = new TypedValue();
        }
        return C.u.getFont(this.f17883a, resourceId, this.f17885c, i7, rVar);
    }

    public int getInt(int i2, int i7) {
        return this.f17884b.getInt(i2, i7);
    }

    public int getInteger(int i2, int i7) {
        return this.f17884b.getInteger(i2, i7);
    }

    public int getLayoutDimension(int i2, int i7) {
        return this.f17884b.getLayoutDimension(i2, i7);
    }

    public int getResourceId(int i2, int i7) {
        return this.f17884b.getResourceId(i2, i7);
    }

    public String getString(int i2) {
        return this.f17884b.getString(i2);
    }

    public CharSequence getText(int i2) {
        return this.f17884b.getText(i2);
    }

    public CharSequence[] getTextArray(int i2) {
        return this.f17884b.getTextArray(i2);
    }

    public TypedArray getWrappedTypeArray() {
        return this.f17884b;
    }

    public boolean hasValue(int i2) {
        return this.f17884b.hasValue(i2);
    }

    public void recycle() {
        this.f17884b.recycle();
    }

    public static e2 obtainStyledAttributes(Context context, AttributeSet attributeSet, int[] iArr, int i2, int i7) {
        return new e2(context, context.obtainStyledAttributes(attributeSet, iArr, i2, i7));
    }

    public static e2 obtainStyledAttributes(Context context, int i2, int[] iArr) {
        return new e2(context, context.obtainStyledAttributes(i2, iArr));
    }
}
