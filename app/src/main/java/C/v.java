package C;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import org.xmlpull.v1.XmlPullParser;

/* loaded from: classes.dex */
public abstract class v {
    public static int getAttr(Context context, int i2, int i7) {
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(i2, typedValue, true);
        return typedValue.resourceId != 0 ? i2 : i7;
    }

    public static boolean getBoolean(TypedArray typedArray, int i2, int i7, boolean z6) {
        return typedArray.getBoolean(i2, typedArray.getBoolean(i7, z6));
    }

    public static Drawable getDrawable(TypedArray typedArray, int i2, int i7) {
        Drawable drawable = typedArray.getDrawable(i2);
        return drawable == null ? typedArray.getDrawable(i7) : drawable;
    }

    public static int getInt(TypedArray typedArray, int i2, int i7, int i8) {
        return typedArray.getInt(i2, typedArray.getInt(i7, i8));
    }

    public static boolean getNamedBoolean(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i2, boolean z6) {
        return !hasAttribute(xmlPullParser, str) ? z6 : typedArray.getBoolean(i2, z6);
    }

    public static int getNamedColor(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i2, int i7) {
        return !hasAttribute(xmlPullParser, str) ? i7 : typedArray.getColor(i2, i7);
    }

    public static ColorStateList getNamedColorStateList(TypedArray typedArray, XmlPullParser xmlPullParser, Resources.Theme theme, String str, int i2) {
        if (!hasAttribute(xmlPullParser, str)) {
            return null;
        }
        TypedValue typedValue = new TypedValue();
        typedArray.getValue(i2, typedValue);
        int i7 = typedValue.type;
        if (i7 != 2) {
            return (i7 < 28 || i7 > 31) ? c.inflate(typedArray.getResources(), typedArray.getResourceId(i2, 0), theme) : ColorStateList.valueOf(typedValue.data);
        }
        throw new UnsupportedOperationException("Failed to resolve attribute at index " + i2 + ": " + typedValue);
    }

    public static d getNamedComplexColor(TypedArray typedArray, XmlPullParser xmlPullParser, Resources.Theme theme, String str, int i2, int i7) {
        if (hasAttribute(xmlPullParser, str)) {
            TypedValue typedValue = new TypedValue();
            typedArray.getValue(i2, typedValue);
            int i8 = typedValue.type;
            if (i8 >= 28 && i8 <= 31) {
                return new d(null, null, typedValue.data);
            }
            d inflate = d.inflate(typedArray.getResources(), typedArray.getResourceId(i2, 0), theme);
            if (inflate != null) {
                return inflate;
            }
        }
        return new d(null, null, i7);
    }

    public static float getNamedFloat(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i2, float f3) {
        return !hasAttribute(xmlPullParser, str) ? f3 : typedArray.getFloat(i2, f3);
    }

    public static int getNamedInt(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i2, int i7) {
        return !hasAttribute(xmlPullParser, str) ? i7 : typedArray.getInt(i2, i7);
    }

    public static int getNamedResourceId(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i2, int i7) {
        return !hasAttribute(xmlPullParser, str) ? i7 : typedArray.getResourceId(i2, i7);
    }

    public static String getNamedString(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i2) {
        if (hasAttribute(xmlPullParser, str)) {
            return typedArray.getString(i2);
        }
        return null;
    }

    public static int getResourceId(TypedArray typedArray, int i2, int i7, int i8) {
        return typedArray.getResourceId(i2, typedArray.getResourceId(i7, i8));
    }

    public static String getString(TypedArray typedArray, int i2, int i7) {
        String string = typedArray.getString(i2);
        return string == null ? typedArray.getString(i7) : string;
    }

    public static CharSequence getText(TypedArray typedArray, int i2, int i7) {
        CharSequence text = typedArray.getText(i2);
        return text == null ? typedArray.getText(i7) : text;
    }

    public static CharSequence[] getTextArray(TypedArray typedArray, int i2, int i7) {
        CharSequence[] textArray = typedArray.getTextArray(i2);
        return textArray == null ? typedArray.getTextArray(i7) : textArray;
    }

    public static boolean hasAttribute(XmlPullParser xmlPullParser, String str) {
        return xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", str) != null;
    }

    public static TypedArray obtainAttributes(Resources resources, Resources.Theme theme, AttributeSet attributeSet, int[] iArr) {
        return theme == null ? resources.obtainAttributes(attributeSet, iArr) : theme.obtainStyledAttributes(attributeSet, iArr, 0, 0);
    }

    public static TypedValue peekNamedValue(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i2) {
        if (hasAttribute(xmlPullParser, str)) {
            return typedArray.peekValue(i2);
        }
        return null;
    }
}
