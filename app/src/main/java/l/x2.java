package l;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Movie;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes.dex */
public final class x2 extends E1 {

    /* renamed from: c, reason: collision with root package name */
    public static boolean f18053c = false;

    /* renamed from: b, reason: collision with root package name */
    public final WeakReference f18054b;

    public x2(Context context, Resources resources) {
        super(resources);
        this.f18054b = new WeakReference(context);
    }

    public static boolean isCompatVectorFromResourcesEnabled() {
        return f18053c;
    }

    public static void setCompatVectorFromResourcesEnabled(boolean z6) {
        f18053c = z6;
    }

    public static boolean shouldBeUsed() {
        isCompatVectorFromResourcesEnabled();
        return false;
    }

    @Override // l.E1, android.content.res.Resources
    public /* bridge */ /* synthetic */ XmlResourceParser getAnimation(int i2) throws Resources.NotFoundException {
        return super.getAnimation(i2);
    }

    @Override // l.E1, android.content.res.Resources
    public /* bridge */ /* synthetic */ boolean getBoolean(int i2) throws Resources.NotFoundException {
        return super.getBoolean(i2);
    }

    @Override // l.E1, android.content.res.Resources
    public /* bridge */ /* synthetic */ int getColor(int i2) throws Resources.NotFoundException {
        return super.getColor(i2);
    }

    @Override // l.E1, android.content.res.Resources
    public /* bridge */ /* synthetic */ ColorStateList getColorStateList(int i2) throws Resources.NotFoundException {
        return super.getColorStateList(i2);
    }

    @Override // l.E1, android.content.res.Resources
    public /* bridge */ /* synthetic */ Configuration getConfiguration() {
        return super.getConfiguration();
    }

    @Override // l.E1, android.content.res.Resources
    public /* bridge */ /* synthetic */ float getDimension(int i2) throws Resources.NotFoundException {
        return super.getDimension(i2);
    }

    @Override // l.E1, android.content.res.Resources
    public /* bridge */ /* synthetic */ int getDimensionPixelOffset(int i2) throws Resources.NotFoundException {
        return super.getDimensionPixelOffset(i2);
    }

    @Override // l.E1, android.content.res.Resources
    public /* bridge */ /* synthetic */ int getDimensionPixelSize(int i2) throws Resources.NotFoundException {
        return super.getDimensionPixelSize(i2);
    }

    @Override // l.E1, android.content.res.Resources
    public /* bridge */ /* synthetic */ DisplayMetrics getDisplayMetrics() {
        return super.getDisplayMetrics();
    }

    @Override // l.E1, android.content.res.Resources
    public /* bridge */ /* synthetic */ Drawable getDrawable(int i2, Resources.Theme theme) throws Resources.NotFoundException {
        return super.getDrawable(i2, theme);
    }

    @Override // l.E1, android.content.res.Resources
    public /* bridge */ /* synthetic */ Drawable getDrawableForDensity(int i2, int i7) throws Resources.NotFoundException {
        return super.getDrawableForDensity(i2, i7);
    }

    @Override // l.E1, android.content.res.Resources
    public /* bridge */ /* synthetic */ float getFraction(int i2, int i7, int i8) {
        return super.getFraction(i2, i7, i8);
    }

    @Override // l.E1, android.content.res.Resources
    public /* bridge */ /* synthetic */ int getIdentifier(String str, String str2, String str3) {
        return super.getIdentifier(str, str2, str3);
    }

    @Override // l.E1, android.content.res.Resources
    public /* bridge */ /* synthetic */ int[] getIntArray(int i2) throws Resources.NotFoundException {
        return super.getIntArray(i2);
    }

    @Override // l.E1, android.content.res.Resources
    public /* bridge */ /* synthetic */ int getInteger(int i2) throws Resources.NotFoundException {
        return super.getInteger(i2);
    }

    @Override // l.E1, android.content.res.Resources
    public /* bridge */ /* synthetic */ XmlResourceParser getLayout(int i2) throws Resources.NotFoundException {
        return super.getLayout(i2);
    }

    @Override // l.E1, android.content.res.Resources
    public /* bridge */ /* synthetic */ Movie getMovie(int i2) throws Resources.NotFoundException {
        return super.getMovie(i2);
    }

    @Override // l.E1, android.content.res.Resources
    public /* bridge */ /* synthetic */ String getQuantityString(int i2, int i7) throws Resources.NotFoundException {
        return super.getQuantityString(i2, i7);
    }

    @Override // l.E1, android.content.res.Resources
    public /* bridge */ /* synthetic */ CharSequence getQuantityText(int i2, int i7) throws Resources.NotFoundException {
        return super.getQuantityText(i2, i7);
    }

    @Override // l.E1, android.content.res.Resources
    public /* bridge */ /* synthetic */ String getResourceEntryName(int i2) throws Resources.NotFoundException {
        return super.getResourceEntryName(i2);
    }

    @Override // l.E1, android.content.res.Resources
    public /* bridge */ /* synthetic */ String getResourceName(int i2) throws Resources.NotFoundException {
        return super.getResourceName(i2);
    }

    @Override // l.E1, android.content.res.Resources
    public /* bridge */ /* synthetic */ String getResourcePackageName(int i2) throws Resources.NotFoundException {
        return super.getResourcePackageName(i2);
    }

    @Override // l.E1, android.content.res.Resources
    public /* bridge */ /* synthetic */ String getResourceTypeName(int i2) throws Resources.NotFoundException {
        return super.getResourceTypeName(i2);
    }

    @Override // l.E1, android.content.res.Resources
    public /* bridge */ /* synthetic */ String getString(int i2) throws Resources.NotFoundException {
        return super.getString(i2);
    }

    @Override // l.E1, android.content.res.Resources
    public /* bridge */ /* synthetic */ String[] getStringArray(int i2) throws Resources.NotFoundException {
        return super.getStringArray(i2);
    }

    @Override // l.E1, android.content.res.Resources
    public /* bridge */ /* synthetic */ CharSequence getText(int i2) throws Resources.NotFoundException {
        return super.getText(i2);
    }

    @Override // l.E1, android.content.res.Resources
    public /* bridge */ /* synthetic */ CharSequence[] getTextArray(int i2) throws Resources.NotFoundException {
        return super.getTextArray(i2);
    }

    @Override // l.E1, android.content.res.Resources
    public /* bridge */ /* synthetic */ void getValue(int i2, TypedValue typedValue, boolean z6) throws Resources.NotFoundException {
        super.getValue(i2, typedValue, z6);
    }

    @Override // l.E1, android.content.res.Resources
    public /* bridge */ /* synthetic */ void getValueForDensity(int i2, int i7, TypedValue typedValue, boolean z6) throws Resources.NotFoundException {
        super.getValueForDensity(i2, i7, typedValue, z6);
    }

    @Override // l.E1, android.content.res.Resources
    public /* bridge */ /* synthetic */ XmlResourceParser getXml(int i2) throws Resources.NotFoundException {
        return super.getXml(i2);
    }

    @Override // l.E1, android.content.res.Resources
    public /* bridge */ /* synthetic */ TypedArray obtainAttributes(AttributeSet attributeSet, int[] iArr) {
        return super.obtainAttributes(attributeSet, iArr);
    }

    @Override // l.E1, android.content.res.Resources
    public /* bridge */ /* synthetic */ TypedArray obtainTypedArray(int i2) throws Resources.NotFoundException {
        return super.obtainTypedArray(i2);
    }

    @Override // l.E1, android.content.res.Resources
    public /* bridge */ /* synthetic */ InputStream openRawResource(int i2) throws Resources.NotFoundException {
        return super.openRawResource(i2);
    }

    @Override // l.E1, android.content.res.Resources
    public /* bridge */ /* synthetic */ AssetFileDescriptor openRawResourceFd(int i2) throws Resources.NotFoundException {
        return super.openRawResourceFd(i2);
    }

    @Override // l.E1, android.content.res.Resources
    public /* bridge */ /* synthetic */ void parseBundleExtra(String str, AttributeSet attributeSet, Bundle bundle) throws XmlPullParserException {
        super.parseBundleExtra(str, attributeSet, bundle);
    }

    @Override // l.E1, android.content.res.Resources
    public /* bridge */ /* synthetic */ void parseBundleExtras(XmlResourceParser xmlResourceParser, Bundle bundle) throws XmlPullParserException, IOException {
        super.parseBundleExtras(xmlResourceParser, bundle);
    }

    @Override // l.E1, android.content.res.Resources
    public /* bridge */ /* synthetic */ void updateConfiguration(Configuration configuration, DisplayMetrics displayMetrics) {
        super.updateConfiguration(configuration, displayMetrics);
    }

    @Override // android.content.res.Resources
    public Drawable getDrawable(int i2) throws Resources.NotFoundException {
        Context context = (Context) this.f18054b.get();
        if (context == null) {
            return a(i2);
        }
        D1 d12 = D1.get();
        synchronized (d12) {
            try {
                Drawable h7 = d12.h(context, i2);
                if (h7 == null) {
                    h7 = a(i2);
                }
                if (h7 == null) {
                    return null;
                }
                return d12.i(context, i2, false, h7);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // l.E1, android.content.res.Resources
    public /* bridge */ /* synthetic */ Drawable getDrawableForDensity(int i2, int i7, Resources.Theme theme) {
        return super.getDrawableForDensity(i2, i7, theme);
    }

    @Override // l.E1, android.content.res.Resources
    public /* bridge */ /* synthetic */ String getQuantityString(int i2, int i7, Object[] objArr) throws Resources.NotFoundException {
        return super.getQuantityString(i2, i7, objArr);
    }

    @Override // l.E1, android.content.res.Resources
    public /* bridge */ /* synthetic */ String getString(int i2, Object[] objArr) throws Resources.NotFoundException {
        return super.getString(i2, objArr);
    }

    @Override // l.E1, android.content.res.Resources
    public /* bridge */ /* synthetic */ CharSequence getText(int i2, CharSequence charSequence) {
        return super.getText(i2, charSequence);
    }

    @Override // l.E1, android.content.res.Resources
    public /* bridge */ /* synthetic */ void getValue(String str, TypedValue typedValue, boolean z6) throws Resources.NotFoundException {
        super.getValue(str, typedValue, z6);
    }

    @Override // l.E1, android.content.res.Resources
    public /* bridge */ /* synthetic */ InputStream openRawResource(int i2, TypedValue typedValue) throws Resources.NotFoundException {
        return super.openRawResource(i2, typedValue);
    }
}
