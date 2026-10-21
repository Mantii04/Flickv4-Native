package b1;

import P3.AbstractC0226a;
import android.text.TextUtils;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* renamed from: b1.c, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0631c {

    /* renamed from: f, reason: collision with root package name */
    public int f8347f;

    /* renamed from: h, reason: collision with root package name */
    public int f8349h;

    /* renamed from: o, reason: collision with root package name */
    public float f8356o;

    /* renamed from: a, reason: collision with root package name */
    public String f8342a = "";

    /* renamed from: b, reason: collision with root package name */
    public String f8343b = "";

    /* renamed from: c, reason: collision with root package name */
    public Set f8344c = Collections.EMPTY_SET;

    /* renamed from: d, reason: collision with root package name */
    public String f8345d = "";

    /* renamed from: e, reason: collision with root package name */
    public String f8346e = null;

    /* renamed from: g, reason: collision with root package name */
    public boolean f8348g = false;

    /* renamed from: i, reason: collision with root package name */
    public boolean f8350i = false;

    /* renamed from: j, reason: collision with root package name */
    public final int f8351j = -1;

    /* renamed from: k, reason: collision with root package name */
    public int f8352k = -1;

    /* renamed from: l, reason: collision with root package name */
    public int f8353l = -1;

    /* renamed from: m, reason: collision with root package name */
    public int f8354m = -1;

    /* renamed from: n, reason: collision with root package name */
    public int f8355n = -1;

    /* renamed from: p, reason: collision with root package name */
    public int f8357p = -1;

    /* renamed from: q, reason: collision with root package name */
    public boolean f8358q = false;

    public static int a(int i2, int i7, String str, String str2) {
        if (str.isEmpty() || i2 == -1) {
            return i2;
        }
        if (str.equals(str2)) {
            return i2 + i7;
        }
        return -1;
    }

    public int getBackgroundColor() {
        if (this.f8350i) {
            return this.f8349h;
        }
        throw new IllegalStateException("Background color not defined.");
    }

    public boolean getCombineUpright() {
        return this.f8358q;
    }

    public int getFontColor() {
        if (this.f8348g) {
            return this.f8347f;
        }
        throw new IllegalStateException("Font color not defined");
    }

    public String getFontFamily() {
        return this.f8346e;
    }

    public float getFontSize() {
        return this.f8356o;
    }

    public int getFontSizeUnit() {
        return this.f8355n;
    }

    public int getRubyPosition() {
        return this.f8357p;
    }

    public int getSpecificityScore(String str, String str2, Set<String> set, String str3) {
        if (this.f8342a.isEmpty() && this.f8343b.isEmpty() && this.f8344c.isEmpty() && this.f8345d.isEmpty()) {
            return TextUtils.isEmpty(str2) ? 1 : 0;
        }
        int a7 = a(a(a(0, 1073741824, this.f8342a, str), 2, this.f8343b, str2), 4, this.f8345d, str3);
        if (a7 == -1 || !set.containsAll(this.f8344c)) {
            return 0;
        }
        return (this.f8344c.size() * 4) + a7;
    }

    public int getStyle() {
        int i2 = this.f8353l;
        if (i2 == -1 && this.f8354m == -1) {
            return -1;
        }
        return (i2 == 1 ? 1 : 0) | (this.f8354m == 1 ? 2 : 0);
    }

    public boolean hasBackgroundColor() {
        return this.f8350i;
    }

    public boolean hasFontColor() {
        return this.f8348g;
    }

    public boolean isLinethrough() {
        return this.f8351j == 1;
    }

    public boolean isUnderline() {
        return this.f8352k == 1;
    }

    public C0631c setBackgroundColor(int i2) {
        this.f8349h = i2;
        this.f8350i = true;
        return this;
    }

    public C0631c setBold(boolean z6) {
        this.f8353l = z6 ? 1 : 0;
        return this;
    }

    public C0631c setCombineUpright(boolean z6) {
        this.f8358q = z6;
        return this;
    }

    public C0631c setFontColor(int i2) {
        this.f8347f = i2;
        this.f8348g = true;
        return this;
    }

    public C0631c setFontFamily(String str) {
        this.f8346e = str == null ? null : AbstractC0226a.toLowerCase(str);
        return this;
    }

    public C0631c setFontSize(float f3) {
        this.f8356o = f3;
        return this;
    }

    public C0631c setFontSizeUnit(int i2) {
        this.f8355n = i2;
        return this;
    }

    public C0631c setItalic(boolean z6) {
        this.f8354m = z6 ? 1 : 0;
        return this;
    }

    public C0631c setRubyPosition(int i2) {
        this.f8357p = i2;
        return this;
    }

    public void setTargetClasses(String[] strArr) {
        this.f8344c = new HashSet(Arrays.asList(strArr));
    }

    public void setTargetId(String str) {
        this.f8342a = str;
    }

    public void setTargetTagName(String str) {
        this.f8343b = str;
    }

    public void setTargetVoice(String str) {
        this.f8345d = str;
    }

    public C0631c setUnderline(boolean z6) {
        this.f8352k = z6 ? 1 : 0;
        return this;
    }
}
