package com.google.android.gms.cast.framework.media.widget;

import A.h;
import D.a;
import E.c;
import android.R;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.renderscript.Allocation;
import android.renderscript.RenderScript;
import android.renderscript.ScriptIntrinsicBlur;
import com.google.android.gms.cast.internal.Logger;

/* loaded from: classes.dex */
public final class zzs {

    /* renamed from: a, reason: collision with root package name */
    public static final Logger f10249a = new Logger("WidgetUtil");

    public static Drawable a(Context context, int i2, int i7, int i8, int i9) {
        int color;
        ColorStateList colorStateList;
        Drawable wrap = c.wrap(context.getResources().getDrawable(i7).mutate());
        c.setTintMode(wrap, PorterDuff.Mode.SRC_IN);
        if (i2 != 0) {
            colorStateList = h.getColorStateList(context, i2);
        } else {
            if (i8 != 0) {
                TypedArray obtainStyledAttributes = context.obtainStyledAttributes(new int[]{i8});
                color = obtainStyledAttributes.getColor(0, 0);
                obtainStyledAttributes.recycle();
            } else {
                color = h.getColor(context, i9);
            }
            colorStateList = new ColorStateList(new int[][]{new int[]{R.attr.state_enabled}, new int[]{-16842910}}, new int[]{color, a.setAlphaComponent(color, 128)});
        }
        c.setTintList(wrap, colorStateList);
        return wrap;
    }

    @TargetApi(17)
    public static Bitmap zza(Context context, Bitmap bitmap, float f3, float f7) {
        Logger logger = f10249a;
        logger.d("Begin blurring bitmap %s, original width = %d, original height = %d.", bitmap, Integer.valueOf(bitmap.getWidth()), Integer.valueOf(bitmap.getHeight()));
        int round = Math.round(bitmap.getWidth() * 0.25f);
        int round2 = Math.round(bitmap.getHeight() * 0.25f);
        Bitmap createScaledBitmap = Bitmap.createScaledBitmap(bitmap, round, round2, false);
        Bitmap createBitmap = Bitmap.createBitmap(round, round2, createScaledBitmap.getConfig());
        RenderScript create = RenderScript.create(context);
        Allocation createFromBitmap = Allocation.createFromBitmap(create, createScaledBitmap);
        Allocation createTyped = Allocation.createTyped(create, createFromBitmap.getType());
        ScriptIntrinsicBlur create2 = ScriptIntrinsicBlur.create(create, createFromBitmap.getElement());
        create2.setInput(createFromBitmap);
        create2.setRadius(7.5f);
        create2.forEach(createTyped);
        createTyped.copyTo(createBitmap);
        create.destroy();
        logger.d("End blurring bitmap %s, original width = %d, original height = %d.", createScaledBitmap, Integer.valueOf(round), Integer.valueOf(round2));
        return createBitmap;
    }

    public static Drawable zzb(Context context, int i2, int i7) {
        return a(context, i2, i7, 0, R.color.white);
    }

    public static Drawable zzc(Context context, int i2, int i7) {
        return a(context, i2, i7, R.attr.colorForeground, 0);
    }
}
