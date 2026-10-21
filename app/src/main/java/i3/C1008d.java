package i3;

import C3.g;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.AttributeSet;
import com.google.android.material.R;
import java.util.Locale;
import x3.L;

/* renamed from: i3.d, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1008d {

    /* renamed from: a, reason: collision with root package name */
    public final C1007c f16705a;

    /* renamed from: b, reason: collision with root package name */
    public final C1007c f16706b;

    /* renamed from: c, reason: collision with root package name */
    public final float f16707c;

    /* renamed from: d, reason: collision with root package name */
    public final float f16708d;

    /* renamed from: e, reason: collision with root package name */
    public final float f16709e;

    /* renamed from: f, reason: collision with root package name */
    public final float f16710f;

    /* renamed from: g, reason: collision with root package name */
    public final float f16711g;

    /* renamed from: h, reason: collision with root package name */
    public final float f16712h;

    /* renamed from: i, reason: collision with root package name */
    public final int f16713i;

    /* renamed from: j, reason: collision with root package name */
    public final int f16714j;

    /* renamed from: k, reason: collision with root package name */
    public final int f16715k;

    public C1008d(Context context) {
        AttributeSet attributeSet;
        int i2;
        Locale locale;
        Locale.Category unused;
        int i7 = C1005a.f16661x;
        int i8 = C1005a.f16660w;
        C1007c c1007c = new C1007c();
        this.f16706b = c1007c;
        C1007c c1007c2 = new C1007c();
        int i9 = c1007c2.f16688b;
        if (i9 != 0) {
            attributeSet = t3.c.parseDrawableXml(context, i9, "badge");
            i2 = attributeSet.getStyleAttribute();
        } else {
            attributeSet = null;
            i2 = 0;
        }
        TypedArray obtainStyledAttributes = L.obtainStyledAttributes(context, attributeSet, R.styleable.Badge, i7, i2 == 0 ? i8 : i2, new int[0]);
        Resources resources = context.getResources();
        this.f16707c = obtainStyledAttributes.getDimensionPixelSize(R.styleable.Badge_badgeRadius, -1);
        this.f16713i = context.getResources().getDimensionPixelSize(R.dimen.mtrl_badge_horizontal_edge_offset);
        this.f16714j = context.getResources().getDimensionPixelSize(R.dimen.mtrl_badge_text_horizontal_edge_offset);
        this.f16708d = obtainStyledAttributes.getDimensionPixelSize(R.styleable.Badge_badgeWithTextRadius, -1);
        this.f16709e = obtainStyledAttributes.getDimension(R.styleable.Badge_badgeWidth, resources.getDimension(R.dimen.m3_badge_size));
        this.f16711g = obtainStyledAttributes.getDimension(R.styleable.Badge_badgeWithTextWidth, resources.getDimension(R.dimen.m3_badge_with_text_size));
        this.f16710f = obtainStyledAttributes.getDimension(R.styleable.Badge_badgeHeight, resources.getDimension(R.dimen.m3_badge_size));
        this.f16712h = obtainStyledAttributes.getDimension(R.styleable.Badge_badgeWithTextHeight, resources.getDimension(R.dimen.m3_badge_with_text_size));
        boolean z6 = true;
        this.f16715k = obtainStyledAttributes.getInt(R.styleable.Badge_offsetAlignmentMode, 1);
        int i10 = c1007c2.f16696r;
        c1007c.f16696r = i10 == -2 ? 255 : i10;
        int i11 = c1007c2.f16698t;
        if (i11 != -2) {
            c1007c.f16698t = i11;
        } else if (obtainStyledAttributes.hasValue(R.styleable.Badge_number)) {
            c1007c.f16698t = obtainStyledAttributes.getInt(R.styleable.Badge_number, 0);
        } else {
            c1007c.f16698t = -1;
        }
        String str = c1007c2.f16697s;
        if (str != null) {
            c1007c.f16697s = str;
        } else if (obtainStyledAttributes.hasValue(R.styleable.Badge_badgeText)) {
            c1007c.f16697s = obtainStyledAttributes.getString(R.styleable.Badge_badgeText);
        }
        c1007c.f16702x = c1007c2.f16702x;
        CharSequence charSequence = c1007c2.f16703y;
        c1007c.f16703y = charSequence == null ? context.getString(R.string.mtrl_badge_numberless_content_description) : charSequence;
        int i12 = c1007c2.f16704z;
        c1007c.f16704z = i12 == 0 ? R.plurals.mtrl_badge_content_description : i12;
        int i13 = c1007c2.f16675A;
        c1007c.f16675A = i13 == 0 ? R.string.mtrl_exceed_max_badge_number_content_description : i13;
        Boolean bool = c1007c2.f16677C;
        if (bool != null && !bool.booleanValue()) {
            z6 = false;
        }
        c1007c.f16677C = Boolean.valueOf(z6);
        int i14 = c1007c2.f16699u;
        c1007c.f16699u = i14 == -2 ? obtainStyledAttributes.getInt(R.styleable.Badge_maxCharacterCount, -2) : i14;
        int i15 = c1007c2.f16700v;
        c1007c.f16700v = i15 == -2 ? obtainStyledAttributes.getInt(R.styleable.Badge_maxNumber, -2) : i15;
        Integer num = c1007c2.f16692m;
        c1007c.f16692m = Integer.valueOf(num == null ? obtainStyledAttributes.getResourceId(R.styleable.Badge_badgeShapeAppearance, R.style.ShapeAppearance_M3_Sys_Shape_Corner_Full) : num.intValue());
        Integer num2 = c1007c2.f16693n;
        c1007c.f16693n = Integer.valueOf(num2 == null ? obtainStyledAttributes.getResourceId(R.styleable.Badge_badgeShapeAppearanceOverlay, 0) : num2.intValue());
        Integer num3 = c1007c2.f16694p;
        c1007c.f16694p = Integer.valueOf(num3 == null ? obtainStyledAttributes.getResourceId(R.styleable.Badge_badgeWithTextShapeAppearance, R.style.ShapeAppearance_M3_Sys_Shape_Corner_Full) : num3.intValue());
        Integer num4 = c1007c2.f16695q;
        c1007c.f16695q = Integer.valueOf(num4 == null ? obtainStyledAttributes.getResourceId(R.styleable.Badge_badgeWithTextShapeAppearanceOverlay, 0) : num4.intValue());
        Integer num5 = c1007c2.f16689e;
        c1007c.f16689e = Integer.valueOf(num5 == null ? C3.d.getColorStateList(context, obtainStyledAttributes, R.styleable.Badge_backgroundColor).getDefaultColor() : num5.intValue());
        Integer num6 = c1007c2.f16691j;
        c1007c.f16691j = Integer.valueOf(num6 == null ? obtainStyledAttributes.getResourceId(R.styleable.Badge_badgeTextAppearance, R.style.TextAppearance_MaterialComponents_Badge) : num6.intValue());
        Integer num7 = c1007c2.f16690f;
        if (num7 != null) {
            c1007c.f16690f = num7;
        } else if (obtainStyledAttributes.hasValue(R.styleable.Badge_badgeTextColor)) {
            c1007c.f16690f = Integer.valueOf(C3.d.getColorStateList(context, obtainStyledAttributes, R.styleable.Badge_badgeTextColor).getDefaultColor());
        } else {
            c1007c.f16690f = Integer.valueOf(new g(context, c1007c.f16691j.intValue()).getTextColor().getDefaultColor());
        }
        Integer num8 = c1007c2.f16676B;
        c1007c.f16676B = Integer.valueOf(num8 == null ? obtainStyledAttributes.getInt(R.styleable.Badge_badgeGravity, 8388661) : num8.intValue());
        Integer num9 = c1007c2.f16678D;
        c1007c.f16678D = Integer.valueOf(num9 == null ? obtainStyledAttributes.getDimensionPixelSize(R.styleable.Badge_badgeWidePadding, resources.getDimensionPixelSize(R.dimen.mtrl_badge_long_text_horizontal_padding)) : num9.intValue());
        Integer num10 = c1007c2.f16679E;
        c1007c.f16679E = Integer.valueOf(num10 == null ? obtainStyledAttributes.getDimensionPixelSize(R.styleable.Badge_badgeVerticalPadding, resources.getDimensionPixelSize(R.dimen.m3_badge_with_text_vertical_padding)) : num10.intValue());
        Integer num11 = c1007c2.f16680F;
        c1007c.f16680F = Integer.valueOf(num11 == null ? obtainStyledAttributes.getDimensionPixelOffset(R.styleable.Badge_horizontalOffset, 0) : num11.intValue());
        Integer num12 = c1007c2.f16681G;
        c1007c.f16681G = Integer.valueOf(num12 == null ? obtainStyledAttributes.getDimensionPixelOffset(R.styleable.Badge_verticalOffset, 0) : num12.intValue());
        Integer num13 = c1007c2.f16682H;
        c1007c.f16682H = Integer.valueOf(num13 == null ? obtainStyledAttributes.getDimensionPixelOffset(R.styleable.Badge_horizontalOffsetWithText, c1007c.f16680F.intValue()) : num13.intValue());
        Integer num14 = c1007c2.f16683I;
        c1007c.f16683I = Integer.valueOf(num14 == null ? obtainStyledAttributes.getDimensionPixelOffset(R.styleable.Badge_verticalOffsetWithText, c1007c.f16681G.intValue()) : num14.intValue());
        Integer num15 = c1007c2.f16686L;
        c1007c.f16686L = Integer.valueOf(num15 == null ? obtainStyledAttributes.getDimensionPixelOffset(R.styleable.Badge_largeFontVerticalOffsetAdjustment, 0) : num15.intValue());
        Integer num16 = c1007c2.f16684J;
        c1007c.f16684J = Integer.valueOf(num16 == null ? 0 : num16.intValue());
        Integer num17 = c1007c2.f16685K;
        c1007c.f16685K = Integer.valueOf(num17 == null ? 0 : num17.intValue());
        Boolean bool2 = c1007c2.f16687M;
        c1007c.f16687M = Boolean.valueOf(bool2 == null ? obtainStyledAttributes.getBoolean(R.styleable.Badge_autoAdjustToWithinGrandparentBounds, false) : bool2.booleanValue());
        obtainStyledAttributes.recycle();
        Locale locale2 = c1007c2.f16701w;
        if (locale2 == null) {
            if (Build.VERSION.SDK_INT >= 24) {
                unused = Locale.Category.FORMAT;
                locale = Locale.getDefault(Locale.Category.FORMAT);
            } else {
                locale = Locale.getDefault();
            }
            c1007c.f16701w = locale;
        } else {
            c1007c.f16701w = locale2;
        }
        this.f16705a = c1007c2;
    }
}
