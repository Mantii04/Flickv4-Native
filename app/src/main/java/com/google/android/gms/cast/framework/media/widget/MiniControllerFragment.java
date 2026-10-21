package com.google.android.gms.cast.framework.media.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.fragment.app.C;
import com.google.android.gms.cast.framework.R;
import com.google.android.gms.cast.framework.media.ImageHints;
import com.google.android.gms.cast.framework.media.uicontroller.UIMediaController;
import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.cast.zzml;

/* loaded from: classes.dex */
public class MiniControllerFragment extends C implements ControlButtonsContainer {

    /* renamed from: D0, reason: collision with root package name */
    public static final Logger f10202D0 = new Logger("MiniControllerFragment");

    /* renamed from: A0, reason: collision with root package name */
    public int f10203A0;

    /* renamed from: B0, reason: collision with root package name */
    public int f10204B0;

    /* renamed from: C0, reason: collision with root package name */
    public UIMediaController f10205C0;

    /* renamed from: f0, reason: collision with root package name */
    public boolean f10206f0;

    /* renamed from: g0, reason: collision with root package name */
    public int f10207g0;

    /* renamed from: h0, reason: collision with root package name */
    public int f10208h0;

    /* renamed from: i0, reason: collision with root package name */
    public TextView f10209i0;

    /* renamed from: j0, reason: collision with root package name */
    public int f10210j0;

    /* renamed from: k0, reason: collision with root package name */
    public int f10211k0;

    /* renamed from: l0, reason: collision with root package name */
    public int f10212l0;

    /* renamed from: m0, reason: collision with root package name */
    public int f10213m0;

    /* renamed from: n0, reason: collision with root package name */
    public int[] f10214n0;

    /* renamed from: o0, reason: collision with root package name */
    public final ImageView[] f10215o0 = new ImageView[3];

    /* renamed from: p0, reason: collision with root package name */
    public int f10216p0;

    /* renamed from: q0, reason: collision with root package name */
    public int f10217q0;

    /* renamed from: r0, reason: collision with root package name */
    public int f10218r0;

    /* renamed from: s0, reason: collision with root package name */
    public int f10219s0;

    /* renamed from: t0, reason: collision with root package name */
    public int f10220t0;

    /* renamed from: u0, reason: collision with root package name */
    public int f10221u0;

    /* renamed from: v0, reason: collision with root package name */
    public int f10222v0;

    /* renamed from: w0, reason: collision with root package name */
    public int f10223w0;

    /* renamed from: x0, reason: collision with root package name */
    public int f10224x0;

    /* renamed from: y0, reason: collision with root package name */
    public int f10225y0;

    /* renamed from: z0, reason: collision with root package name */
    public int f10226z0;

    public final void i(UIMediaController uIMediaController, RelativeLayout relativeLayout, int i2, int i7) {
        ImageView imageView = (ImageView) relativeLayout.findViewById(i2);
        int i8 = this.f10214n0[i7];
        if (i8 == R.id.cast_button_type_empty) {
            imageView.setVisibility(4);
            return;
        }
        if (i8 == R.id.cast_button_type_custom) {
            return;
        }
        if (i8 == R.id.cast_button_type_play_pause_toggle) {
            int i9 = this.f10217q0;
            int i10 = this.f10218r0;
            int i11 = this.f10219s0;
            if (this.f10216p0 == 1) {
                i9 = this.f10220t0;
                i10 = this.f10221u0;
                i11 = this.f10222v0;
            }
            Drawable zzc = zzs.zzc(getContext(), this.f10213m0, i9);
            Drawable zzc2 = zzs.zzc(getContext(), this.f10213m0, i10);
            Drawable zzc3 = zzs.zzc(getContext(), this.f10213m0, i11);
            imageView.setImageDrawable(zzc2);
            ProgressBar progressBar = new ProgressBar(getContext());
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams.addRule(8, i2);
            layoutParams.addRule(6, i2);
            layoutParams.addRule(5, i2);
            layoutParams.addRule(7, i2);
            layoutParams.addRule(15);
            progressBar.setLayoutParams(layoutParams);
            progressBar.setVisibility(8);
            Drawable indeterminateDrawable = progressBar.getIndeterminateDrawable();
            int i12 = this.f10212l0;
            if (i12 != 0 && indeterminateDrawable != null) {
                indeterminateDrawable.setColorFilter(i12, PorterDuff.Mode.SRC_IN);
            }
            relativeLayout.addView(progressBar);
            uIMediaController.bindImageViewToPlayPauseToggle(imageView, zzc, zzc2, zzc3, progressBar, true);
            return;
        }
        if (i8 == R.id.cast_button_type_skip_previous) {
            imageView.setImageDrawable(zzs.zzc(getContext(), this.f10213m0, this.f10223w0));
            imageView.setContentDescription(getResources().getString(R.string.cast_skip_prev));
            uIMediaController.bindViewToSkipPrev(imageView, 0);
            return;
        }
        if (i8 == R.id.cast_button_type_skip_next) {
            imageView.setImageDrawable(zzs.zzc(getContext(), this.f10213m0, this.f10224x0));
            imageView.setContentDescription(getResources().getString(R.string.cast_skip_next));
            uIMediaController.bindViewToSkipNext(imageView, 0);
            return;
        }
        if (i8 == R.id.cast_button_type_rewind_30_seconds) {
            imageView.setImageDrawable(zzs.zzc(getContext(), this.f10213m0, this.f10225y0));
            imageView.setContentDescription(getResources().getString(R.string.cast_rewind_30));
            uIMediaController.bindViewToRewind(imageView, 30000L);
        } else if (i8 == R.id.cast_button_type_forward_30_seconds) {
            imageView.setImageDrawable(zzs.zzc(getContext(), this.f10213m0, this.f10226z0));
            imageView.setContentDescription(getResources().getString(R.string.cast_forward_30));
            uIMediaController.bindViewToForward(imageView, 30000L);
        } else if (i8 == R.id.cast_button_type_mute_toggle) {
            imageView.setImageDrawable(zzs.zzc(getContext(), this.f10213m0, this.f10203A0));
            uIMediaController.bindImageViewToMuteToggle(imageView);
        } else if (i8 == R.id.cast_button_type_closed_caption) {
            imageView.setImageDrawable(zzs.zzc(getContext(), this.f10213m0, this.f10204B0));
            uIMediaController.bindViewToClosedCaption(imageView);
        }
    }

    @Override // androidx.fragment.app.C
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        UIMediaController uIMediaController = new UIMediaController(getActivity());
        this.f10205C0 = uIMediaController;
        View inflate = layoutInflater.inflate(R.layout.cast_mini_controller, viewGroup, false);
        inflate.setVisibility(8);
        uIMediaController.bindViewVisibilityToMediaSession(inflate, 8);
        RelativeLayout relativeLayout = (RelativeLayout) inflate.findViewById(R.id.container_current);
        int i2 = this.f10210j0;
        if (i2 != 0) {
            relativeLayout.setBackgroundResource(i2);
        }
        ImageView imageView = (ImageView) inflate.findViewById(R.id.icon_view);
        TextView textView = (TextView) inflate.findViewById(R.id.title_view);
        if (this.f10207g0 != 0) {
            textView.setTextAppearance(getActivity(), this.f10207g0);
        }
        TextView textView2 = (TextView) inflate.findViewById(R.id.subtitle_view);
        this.f10209i0 = textView2;
        if (this.f10208h0 != 0) {
            textView2.setTextAppearance(getActivity(), this.f10208h0);
        }
        ProgressBar progressBar = (ProgressBar) inflate.findViewById(R.id.progressBar);
        if (this.f10211k0 != 0) {
            ((LayerDrawable) progressBar.getProgressDrawable()).setColorFilter(this.f10211k0, PorterDuff.Mode.SRC_IN);
        }
        uIMediaController.bindTextViewToMetadataOfCurrentItem(textView, "com.google.android.gms.cast.metadata.TITLE");
        uIMediaController.bindTextViewToSmartSubtitle(this.f10209i0);
        uIMediaController.bindProgressBar(progressBar);
        uIMediaController.bindViewToLaunchExpandedController(relativeLayout);
        if (this.f10206f0) {
            uIMediaController.bindImageViewToImageOfCurrentItem(imageView, new ImageHints(2, getResources().getDimensionPixelSize(R.dimen.cast_mini_controller_icon_width), getResources().getDimensionPixelSize(R.dimen.cast_mini_controller_icon_height)), R.drawable.cast_album_art_placeholder);
        } else {
            imageView.setVisibility(8);
        }
        ImageView imageView2 = (ImageView) relativeLayout.findViewById(R.id.button_0);
        ImageView[] imageViewArr = this.f10215o0;
        imageViewArr[0] = imageView2;
        imageViewArr[1] = (ImageView) relativeLayout.findViewById(R.id.button_1);
        imageViewArr[2] = (ImageView) relativeLayout.findViewById(R.id.button_2);
        i(uIMediaController, relativeLayout, R.id.button_0, 0);
        i(uIMediaController, relativeLayout, R.id.button_1, 1);
        i(uIMediaController, relativeLayout, R.id.button_2, 2);
        return inflate;
    }

    @Override // androidx.fragment.app.C
    public void onDestroy() {
        UIMediaController uIMediaController = this.f10205C0;
        if (uIMediaController != null) {
            uIMediaController.dispose();
            this.f10205C0 = null;
        }
        super.onDestroy();
    }

    @Override // androidx.fragment.app.C
    public void onInflate(Context context, AttributeSet attributeSet, Bundle bundle) {
        super.onInflate(context, attributeSet, bundle);
        if (this.f10214n0 == null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.CastMiniController, R.attr.castMiniControllerStyle, R.style.CastMiniController);
            this.f10206f0 = obtainStyledAttributes.getBoolean(R.styleable.CastMiniController_castShowImageThumbnail, true);
            this.f10207g0 = obtainStyledAttributes.getResourceId(R.styleable.CastMiniController_castTitleTextAppearance, 0);
            this.f10208h0 = obtainStyledAttributes.getResourceId(R.styleable.CastMiniController_castSubtitleTextAppearance, 0);
            this.f10210j0 = obtainStyledAttributes.getResourceId(R.styleable.CastMiniController_castBackground, 0);
            int color = obtainStyledAttributes.getColor(R.styleable.CastMiniController_castProgressBarColor, 0);
            this.f10211k0 = color;
            this.f10212l0 = obtainStyledAttributes.getColor(R.styleable.CastMiniController_castMiniControllerLoadingIndicatorColor, color);
            this.f10213m0 = obtainStyledAttributes.getResourceId(R.styleable.CastMiniController_castButtonColor, 0);
            this.f10217q0 = obtainStyledAttributes.getResourceId(R.styleable.CastMiniController_castPlayButtonDrawable, 0);
            this.f10218r0 = obtainStyledAttributes.getResourceId(R.styleable.CastMiniController_castPauseButtonDrawable, 0);
            this.f10219s0 = obtainStyledAttributes.getResourceId(R.styleable.CastMiniController_castStopButtonDrawable, 0);
            this.f10220t0 = obtainStyledAttributes.getResourceId(R.styleable.CastMiniController_castPlayButtonDrawable, 0);
            this.f10221u0 = obtainStyledAttributes.getResourceId(R.styleable.CastMiniController_castPauseButtonDrawable, 0);
            this.f10222v0 = obtainStyledAttributes.getResourceId(R.styleable.CastMiniController_castStopButtonDrawable, 0);
            this.f10223w0 = obtainStyledAttributes.getResourceId(R.styleable.CastMiniController_castSkipPreviousButtonDrawable, 0);
            this.f10224x0 = obtainStyledAttributes.getResourceId(R.styleable.CastMiniController_castSkipNextButtonDrawable, 0);
            this.f10225y0 = obtainStyledAttributes.getResourceId(R.styleable.CastMiniController_castRewind30ButtonDrawable, 0);
            this.f10226z0 = obtainStyledAttributes.getResourceId(R.styleable.CastMiniController_castForward30ButtonDrawable, 0);
            this.f10203A0 = obtainStyledAttributes.getResourceId(R.styleable.CastMiniController_castMuteToggleButtonDrawable, 0);
            this.f10204B0 = obtainStyledAttributes.getResourceId(R.styleable.CastMiniController_castClosedCaptionsButtonDrawable, 0);
            int resourceId = obtainStyledAttributes.getResourceId(R.styleable.CastMiniController_castControlButtons, 0);
            if (resourceId != 0) {
                TypedArray obtainTypedArray = context.getResources().obtainTypedArray(resourceId);
                Preconditions.checkArgument(obtainTypedArray.length() == 3);
                this.f10214n0 = new int[obtainTypedArray.length()];
                for (int i2 = 0; i2 < obtainTypedArray.length(); i2++) {
                    this.f10214n0[i2] = obtainTypedArray.getResourceId(i2, 0);
                }
                obtainTypedArray.recycle();
                if (this.f10206f0) {
                    this.f10214n0[0] = R.id.cast_button_type_empty;
                }
                this.f10216p0 = 0;
                for (int i7 : this.f10214n0) {
                    if (i7 != R.id.cast_button_type_empty) {
                        this.f10216p0++;
                    }
                }
            } else {
                f10202D0.w("Unable to read attribute castControlButtons.", new Object[0]);
                int i8 = R.id.cast_button_type_empty;
                this.f10214n0 = new int[]{i8, i8, i8};
            }
            obtainStyledAttributes.recycle();
        }
        com.google.android.gms.internal.cast.zzo.zzd(zzml.CAF_MINI_CONTROLLER);
    }
}
