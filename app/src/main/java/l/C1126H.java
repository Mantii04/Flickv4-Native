package l;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import androidx.appcompat.R;
import f.AbstractC0876a;

/* renamed from: l.H, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1126H implements B1 {

    /* renamed from: a, reason: collision with root package name */
    public final int[] f17699a = {R.drawable.abc_textfield_search_default_mtrl_alpha, R.drawable.abc_textfield_default_mtrl_alpha, R.drawable.abc_ab_share_pack_mtrl_alpha};

    /* renamed from: b, reason: collision with root package name */
    public final int[] f17700b = {R.drawable.abc_ic_commit_search_api_mtrl_alpha, R.drawable.abc_seekbar_tick_mark_material, R.drawable.abc_ic_menu_share_mtrl_alpha, R.drawable.abc_ic_menu_copy_mtrl_am_alpha, R.drawable.abc_ic_menu_cut_mtrl_alpha, R.drawable.abc_ic_menu_selectall_mtrl_alpha, R.drawable.abc_ic_menu_paste_mtrl_am_alpha};

    /* renamed from: c, reason: collision with root package name */
    public final int[] f17701c = {R.drawable.abc_textfield_activated_mtrl_alpha, R.drawable.abc_textfield_search_activated_mtrl_alpha, R.drawable.abc_cab_background_top_mtrl_alpha, R.drawable.abc_text_cursor_material, R.drawable.abc_text_select_handle_left_mtrl, R.drawable.abc_text_select_handle_middle_mtrl, R.drawable.abc_text_select_handle_right_mtrl};

    /* renamed from: d, reason: collision with root package name */
    public final int[] f17702d = {R.drawable.abc_popup_background_mtrl_mult, R.drawable.abc_cab_background_internal_bg, R.drawable.abc_menu_hardkey_panel_mtrl_mult};

    /* renamed from: e, reason: collision with root package name */
    public final int[] f17703e = {R.drawable.abc_tab_indicator_material, R.drawable.abc_textfield_search_material};

    /* renamed from: f, reason: collision with root package name */
    public final int[] f17704f = {R.drawable.abc_btn_check_material, R.drawable.abc_btn_radio_material, R.drawable.abc_btn_check_material_anim, R.drawable.abc_btn_radio_material_anim};

    public static boolean a(int[] iArr, int i2) {
        for (int i7 : iArr) {
            if (i7 == i2) {
                return true;
            }
        }
        return false;
    }

    public static ColorStateList b(Context context, int i2) {
        int themeAttrColor = a2.getThemeAttrColor(context, R.attr.colorControlHighlight);
        return new ColorStateList(new int[][]{a2.f17842b, a2.f17844d, a2.f17843c, a2.f17846f}, new int[]{a2.getDisabledThemeAttrColor(context, R.attr.colorButtonNormal), D.a.compositeColors(themeAttrColor, i2), D.a.compositeColors(themeAttrColor, i2), i2});
    }

    public static LayerDrawable c(D1 d12, Context context, int i2) {
        BitmapDrawable bitmapDrawable;
        BitmapDrawable bitmapDrawable2;
        BitmapDrawable bitmapDrawable3;
        int dimensionPixelSize = context.getResources().getDimensionPixelSize(i2);
        Drawable drawable = d12.getDrawable(context, R.drawable.abc_star_black_48dp);
        Drawable drawable2 = d12.getDrawable(context, R.drawable.abc_star_half_black_48dp);
        if ((drawable instanceof BitmapDrawable) && drawable.getIntrinsicWidth() == dimensionPixelSize && drawable.getIntrinsicHeight() == dimensionPixelSize) {
            bitmapDrawable = (BitmapDrawable) drawable;
            bitmapDrawable2 = new BitmapDrawable(bitmapDrawable.getBitmap());
        } else {
            Bitmap createBitmap = Bitmap.createBitmap(dimensionPixelSize, dimensionPixelSize, Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(createBitmap);
            drawable.setBounds(0, 0, dimensionPixelSize, dimensionPixelSize);
            drawable.draw(canvas);
            bitmapDrawable = new BitmapDrawable(createBitmap);
            bitmapDrawable2 = new BitmapDrawable(createBitmap);
        }
        bitmapDrawable2.setTileModeX(Shader.TileMode.REPEAT);
        if ((drawable2 instanceof BitmapDrawable) && drawable2.getIntrinsicWidth() == dimensionPixelSize && drawable2.getIntrinsicHeight() == dimensionPixelSize) {
            bitmapDrawable3 = (BitmapDrawable) drawable2;
        } else {
            Bitmap createBitmap2 = Bitmap.createBitmap(dimensionPixelSize, dimensionPixelSize, Bitmap.Config.ARGB_8888);
            Canvas canvas2 = new Canvas(createBitmap2);
            drawable2.setBounds(0, 0, dimensionPixelSize, dimensionPixelSize);
            drawable2.draw(canvas2);
            bitmapDrawable3 = new BitmapDrawable(createBitmap2);
        }
        LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{bitmapDrawable, bitmapDrawable3, bitmapDrawable2});
        layerDrawable.setId(0, android.R.id.background);
        layerDrawable.setId(1, android.R.id.secondaryProgress);
        layerDrawable.setId(2, android.R.id.progress);
        return layerDrawable;
    }

    public static void d(Drawable drawable, int i2, PorterDuff.Mode mode) {
        if (P0.canSafelyMutateDrawable(drawable)) {
            drawable = drawable.mutate();
        }
        if (mode == null) {
            mode = I.f17706b;
        }
        drawable.setColorFilter(I.getPorterDuffColorFilter(i2, mode));
    }

    public Drawable createDrawableFor(D1 d12, Context context, int i2) {
        if (i2 == R.drawable.abc_cab_background_top_material) {
            return new LayerDrawable(new Drawable[]{d12.getDrawable(context, R.drawable.abc_cab_background_internal_bg), d12.getDrawable(context, R.drawable.abc_cab_background_top_mtrl_alpha)});
        }
        if (i2 == R.drawable.abc_ratingbar_material) {
            return c(d12, context, R.dimen.abc_star_big);
        }
        if (i2 == R.drawable.abc_ratingbar_indicator_material) {
            return c(d12, context, R.dimen.abc_star_medium);
        }
        if (i2 == R.drawable.abc_ratingbar_small_material) {
            return c(d12, context, R.dimen.abc_star_small);
        }
        return null;
    }

    public ColorStateList getTintListForDrawableRes(Context context, int i2) {
        if (i2 == R.drawable.abc_edit_text_material) {
            return AbstractC0876a.getColorStateList(context, R.color.abc_tint_edittext);
        }
        if (i2 == R.drawable.abc_switch_track_mtrl_alpha) {
            return AbstractC0876a.getColorStateList(context, R.color.abc_tint_switch_track);
        }
        if (i2 != R.drawable.abc_switch_thumb_material) {
            if (i2 == R.drawable.abc_btn_default_mtrl_shape) {
                return b(context, a2.getThemeAttrColor(context, R.attr.colorButtonNormal));
            }
            if (i2 == R.drawable.abc_btn_borderless_material) {
                return b(context, 0);
            }
            if (i2 == R.drawable.abc_btn_colored_material) {
                return b(context, a2.getThemeAttrColor(context, R.attr.colorAccent));
            }
            if (i2 == R.drawable.abc_spinner_mtrl_am_alpha || i2 == R.drawable.abc_spinner_textfield_background_material) {
                return AbstractC0876a.getColorStateList(context, R.color.abc_tint_spinner);
            }
            if (a(this.f17700b, i2)) {
                return a2.getThemeAttrColorStateList(context, R.attr.colorControlNormal);
            }
            if (a(this.f17703e, i2)) {
                return AbstractC0876a.getColorStateList(context, R.color.abc_tint_default);
            }
            if (a(this.f17704f, i2)) {
                return AbstractC0876a.getColorStateList(context, R.color.abc_tint_btn_checkable);
            }
            if (i2 == R.drawable.abc_seekbar_thumb_material) {
                return AbstractC0876a.getColorStateList(context, R.color.abc_tint_seek_thumb);
            }
            return null;
        }
        int[][] iArr = new int[3][];
        int[] iArr2 = new int[3];
        ColorStateList themeAttrColorStateList = a2.getThemeAttrColorStateList(context, R.attr.colorSwitchThumbNormal);
        if (themeAttrColorStateList == null || !themeAttrColorStateList.isStateful()) {
            iArr[0] = a2.f17842b;
            iArr2[0] = a2.getDisabledThemeAttrColor(context, R.attr.colorSwitchThumbNormal);
            iArr[1] = a2.f17845e;
            iArr2[1] = a2.getThemeAttrColor(context, R.attr.colorControlActivated);
            iArr[2] = a2.f17846f;
            iArr2[2] = a2.getThemeAttrColor(context, R.attr.colorSwitchThumbNormal);
        } else {
            int[] iArr3 = a2.f17842b;
            iArr[0] = iArr3;
            iArr2[0] = themeAttrColorStateList.getColorForState(iArr3, 0);
            iArr[1] = a2.f17845e;
            iArr2[1] = a2.getThemeAttrColor(context, R.attr.colorControlActivated);
            iArr[2] = a2.f17846f;
            iArr2[2] = themeAttrColorStateList.getDefaultColor();
        }
        return new ColorStateList(iArr, iArr2);
    }

    public PorterDuff.Mode getTintModeForDrawableRes(int i2) {
        if (i2 == R.drawable.abc_switch_thumb_material) {
            return PorterDuff.Mode.MULTIPLY;
        }
        return null;
    }

    public boolean tintDrawable(Context context, int i2, Drawable drawable) {
        if (i2 == R.drawable.abc_seekbar_track_material) {
            LayerDrawable layerDrawable = (LayerDrawable) drawable;
            Drawable findDrawableByLayerId = layerDrawable.findDrawableByLayerId(android.R.id.background);
            int themeAttrColor = a2.getThemeAttrColor(context, R.attr.colorControlNormal);
            PorterDuff.Mode mode = I.f17706b;
            d(findDrawableByLayerId, themeAttrColor, mode);
            d(layerDrawable.findDrawableByLayerId(android.R.id.secondaryProgress), a2.getThemeAttrColor(context, R.attr.colorControlNormal), mode);
            d(layerDrawable.findDrawableByLayerId(android.R.id.progress), a2.getThemeAttrColor(context, R.attr.colorControlActivated), mode);
            return true;
        }
        if (i2 != R.drawable.abc_ratingbar_material && i2 != R.drawable.abc_ratingbar_indicator_material && i2 != R.drawable.abc_ratingbar_small_material) {
            return false;
        }
        LayerDrawable layerDrawable2 = (LayerDrawable) drawable;
        Drawable findDrawableByLayerId2 = layerDrawable2.findDrawableByLayerId(android.R.id.background);
        int disabledThemeAttrColor = a2.getDisabledThemeAttrColor(context, R.attr.colorControlNormal);
        PorterDuff.Mode mode2 = I.f17706b;
        d(findDrawableByLayerId2, disabledThemeAttrColor, mode2);
        d(layerDrawable2.findDrawableByLayerId(android.R.id.secondaryProgress), a2.getThemeAttrColor(context, R.attr.colorControlActivated), mode2);
        d(layerDrawable2.findDrawableByLayerId(android.R.id.progress), a2.getThemeAttrColor(context, R.attr.colorControlActivated), mode2);
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0068 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x004d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean tintDrawableUsingColorFilter(android.content.Context r7, int r8, android.graphics.drawable.Drawable r9) {
        /*
            r6 = this;
            android.graphics.PorterDuff$Mode r0 = l.I.f17706b
            int[] r1 = r6.f17699a
            boolean r1 = a(r1, r8)
            r2 = -1
            r3 = 0
            r4 = 1
            if (r1 == 0) goto L13
            int r8 = androidx.appcompat.R.attr.colorControlNormal
        Lf:
            r1 = r0
            r0 = r2
        L11:
            r5 = r4
            goto L4b
        L13:
            int[] r1 = r6.f17701c
            boolean r1 = a(r1, r8)
            if (r1 == 0) goto L1e
            int r8 = androidx.appcompat.R.attr.colorControlActivated
            goto Lf
        L1e:
            int[] r1 = r6.f17702d
            boolean r1 = a(r1, r8)
            r5 = 16842801(0x1010031, float:2.3693695E-38)
            if (r1 == 0) goto L2f
            android.graphics.PorterDuff$Mode r0 = android.graphics.PorterDuff.Mode.MULTIPLY
        L2b:
            r1 = r0
            r0 = r2
            r8 = r5
            goto L11
        L2f:
            int r1 = androidx.appcompat.R.drawable.abc_list_divider_mtrl_alpha
            if (r8 != r1) goto L42
            r8 = 1109603123(0x42233333, float:40.8)
            int r8 = java.lang.Math.round(r8)
            r1 = 16842800(0x1010030, float:2.3693693E-38)
            r5 = r0
            r0 = r8
            r8 = r1
            r1 = r5
            goto L11
        L42:
            int r1 = androidx.appcompat.R.drawable.abc_dialog_material_background
            if (r8 != r1) goto L47
            goto L2b
        L47:
            r1 = r0
            r0 = r2
            r8 = r3
            r5 = r8
        L4b:
            if (r5 == 0) goto L68
            boolean r3 = l.P0.canSafelyMutateDrawable(r9)
            if (r3 == 0) goto L57
            android.graphics.drawable.Drawable r9 = r9.mutate()
        L57:
            int r7 = l.a2.getThemeAttrColor(r7, r8)
            android.graphics.PorterDuffColorFilter r7 = l.I.getPorterDuffColorFilter(r7, r1)
            r9.setColorFilter(r7)
            if (r0 == r2) goto L67
            r9.setAlpha(r0)
        L67:
            return r4
        L68:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: l.C1126H.tintDrawableUsingColorFilter(android.content.Context, int, android.graphics.drawable.Drawable):boolean");
    }
}
