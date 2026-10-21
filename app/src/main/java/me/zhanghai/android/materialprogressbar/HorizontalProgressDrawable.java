package me.zhanghai.android.materialprogressbar;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import me.zhanghai.android.materialprogressbar.internal.ThemeUtils;

/* loaded from: classes2.dex */
public class HorizontalProgressDrawable extends LayerDrawable implements IntrinsicPaddingDrawable, ShowTrackDrawable, TintableDrawable {
    private SingleHorizontalProgressDrawable mProgressDrawable;
    private int mSecondaryAlpha;
    private SingleHorizontalProgressDrawable mSecondaryProgressDrawable;
    private SingleHorizontalProgressDrawable mTrackDrawable;

    public HorizontalProgressDrawable(Context context) {
        super(new Drawable[]{new SingleHorizontalProgressDrawable(context), new SingleHorizontalProgressDrawable(context), new SingleHorizontalProgressDrawable(context)});
        setId(0, android.R.id.background);
        this.mTrackDrawable = (SingleHorizontalProgressDrawable) getDrawable(0);
        setId(1, android.R.id.secondaryProgress);
        this.mSecondaryProgressDrawable = (SingleHorizontalProgressDrawable) getDrawable(1);
        int round = Math.round(ThemeUtils.getFloatFromAttrRes(android.R.attr.disabledAlpha, context) * 255.0f);
        this.mSecondaryAlpha = round;
        this.mSecondaryProgressDrawable.setAlpha(round);
        this.mSecondaryProgressDrawable.setShowTrack(false);
        setId(2, android.R.id.progress);
        SingleHorizontalProgressDrawable singleHorizontalProgressDrawable = (SingleHorizontalProgressDrawable) getDrawable(2);
        this.mProgressDrawable = singleHorizontalProgressDrawable;
        singleHorizontalProgressDrawable.setShowTrack(false);
    }

    @Override // me.zhanghai.android.materialprogressbar.ShowTrackDrawable
    public boolean getShowTrack() {
        return this.mTrackDrawable.getShowTrack();
    }

    @Override // me.zhanghai.android.materialprogressbar.IntrinsicPaddingDrawable
    public boolean getUseIntrinsicPadding() {
        return this.mTrackDrawable.getUseIntrinsicPadding();
    }

    @Override // me.zhanghai.android.materialprogressbar.ShowTrackDrawable
    public void setShowTrack(boolean z6) {
        if (this.mTrackDrawable.getShowTrack() != z6) {
            this.mTrackDrawable.setShowTrack(z6);
            this.mSecondaryProgressDrawable.setAlpha(z6 ? this.mSecondaryAlpha : this.mSecondaryAlpha * 2);
        }
    }

    @Override // android.graphics.drawable.Drawable, me.zhanghai.android.materialprogressbar.TintableDrawable
    @SuppressLint({"NewApi"})
    public void setTint(int i2) {
        this.mTrackDrawable.setTint(i2);
        this.mSecondaryProgressDrawable.setTint(i2);
        this.mProgressDrawable.setTint(i2);
    }

    @Override // android.graphics.drawable.LayerDrawable, android.graphics.drawable.Drawable, me.zhanghai.android.materialprogressbar.TintableDrawable
    @SuppressLint({"NewApi"})
    public void setTintList(ColorStateList colorStateList) {
        this.mTrackDrawable.setTintList(colorStateList);
        this.mSecondaryProgressDrawable.setTintList(colorStateList);
        this.mProgressDrawable.setTintList(colorStateList);
    }

    @Override // android.graphics.drawable.Drawable, me.zhanghai.android.materialprogressbar.TintableDrawable
    @SuppressLint({"NewApi"})
    public void setTintMode(PorterDuff.Mode mode) {
        this.mTrackDrawable.setTintMode(mode);
        this.mSecondaryProgressDrawable.setTintMode(mode);
        this.mProgressDrawable.setTintMode(mode);
    }

    @Override // me.zhanghai.android.materialprogressbar.IntrinsicPaddingDrawable
    public void setUseIntrinsicPadding(boolean z6) {
        this.mTrackDrawable.setUseIntrinsicPadding(z6);
        this.mSecondaryProgressDrawable.setUseIntrinsicPadding(z6);
        this.mProgressDrawable.setUseIntrinsicPadding(z6);
    }
}
