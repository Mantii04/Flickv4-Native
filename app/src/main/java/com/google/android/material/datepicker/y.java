package com.google.android.material.datepicker;

import B4.ViewOnClickListenerC0038a;
import M.AbstractC0181p0;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.fragment.app.DialogInterfaceOnCancelListenerC0486y;
import com.google.android.material.R;
import com.google.android.material.internal.CheckableImageButton;
import f.AbstractC0876a;
import java.util.Calendar;
import java.util.Iterator;
import java.util.LinkedHashSet;
import org.apache.commons.lang3.StringUtils;
import s3.ViewOnTouchListenerC1640a;
import x3.AbstractC1834h;
import x3.T;

/* loaded from: classes2.dex */
public final class y<S> extends DialogInterfaceOnCancelListenerC0486y {

    /* renamed from: A0, reason: collision with root package name */
    public MaterialCalendar f12658A0;

    /* renamed from: B0, reason: collision with root package name */
    public int f12659B0;

    /* renamed from: C0, reason: collision with root package name */
    public CharSequence f12660C0;

    /* renamed from: D0, reason: collision with root package name */
    public boolean f12661D0;

    /* renamed from: E0, reason: collision with root package name */
    public int f12662E0;

    /* renamed from: F0, reason: collision with root package name */
    public int f12663F0;

    /* renamed from: G0, reason: collision with root package name */
    public CharSequence f12664G0;

    /* renamed from: H0, reason: collision with root package name */
    public int f12665H0;

    /* renamed from: I0, reason: collision with root package name */
    public CharSequence f12666I0;

    /* renamed from: J0, reason: collision with root package name */
    public int f12667J0;

    /* renamed from: K0, reason: collision with root package name */
    public CharSequence f12668K0;

    /* renamed from: L0, reason: collision with root package name */
    public int f12669L0;

    /* renamed from: M0, reason: collision with root package name */
    public CharSequence f12670M0;

    /* renamed from: N0, reason: collision with root package name */
    public TextView f12671N0;

    /* renamed from: O0, reason: collision with root package name */
    public CheckableImageButton f12672O0;

    /* renamed from: P0, reason: collision with root package name */
    public G3.j f12673P0;

    /* renamed from: Q0, reason: collision with root package name */
    public boolean f12674Q0;

    /* renamed from: R0, reason: collision with root package name */
    public CharSequence f12675R0;

    /* renamed from: S0, reason: collision with root package name */
    public CharSequence f12676S0;

    /* renamed from: v0, reason: collision with root package name */
    public final LinkedHashSet f12677v0;

    /* renamed from: w0, reason: collision with root package name */
    public final LinkedHashSet f12678w0;

    /* renamed from: x0, reason: collision with root package name */
    public int f12679x0;

    /* renamed from: y0, reason: collision with root package name */
    public I f12680y0;

    /* renamed from: z0, reason: collision with root package name */
    public C0750d f12681z0;

    public y() {
        new LinkedHashSet();
        new LinkedHashSet();
        this.f12677v0 = new LinkedHashSet();
        this.f12678w0 = new LinkedHashSet();
    }

    public static int k(Context context) {
        Resources resources = context.getResources();
        int dimensionPixelOffset = resources.getDimensionPixelOffset(R.dimen.mtrl_calendar_content_padding);
        Calendar b7 = M.b();
        b7.set(5, 1);
        Calendar a7 = M.a(b7);
        a7.get(2);
        a7.get(1);
        int maximum = a7.getMaximum(7);
        a7.getActualMaximum(5);
        a7.getTimeInMillis();
        return A.i.a(maximum, 1, resources.getDimensionPixelOffset(R.dimen.mtrl_calendar_month_horizontal_padding), (resources.getDimensionPixelSize(R.dimen.mtrl_calendar_day_width) * maximum) + (dimensionPixelOffset * 2));
    }

    public static boolean l(Context context, int i2) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(C3.c.resolveOrThrow(context, R.attr.materialCalendarStyle, MaterialCalendar.class.getCanonicalName()), new int[]{i2});
        boolean z6 = obtainStyledAttributes.getBoolean(0, false);
        obtainStyledAttributes.recycle();
        return z6;
    }

    public String getHeaderText() {
        j();
        getContext();
        throw null;
    }

    public final void j() {
        if (getArguments().getParcelable("DATE_SELECTOR_KEY") != null) {
            throw new ClassCastException();
        }
    }

    @Override // androidx.fragment.app.DialogInterfaceOnCancelListenerC0486y, android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        Iterator it = this.f12677v0.iterator();
        while (it.hasNext()) {
            ((DialogInterface.OnCancelListener) it.next()).onCancel(dialogInterface);
        }
        super.onCancel(dialogInterface);
    }

    @Override // androidx.fragment.app.DialogInterfaceOnCancelListenerC0486y, androidx.fragment.app.C
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            bundle = getArguments();
        }
        this.f12679x0 = bundle.getInt("OVERRIDE_THEME_RES_ID");
        if (bundle.getParcelable("DATE_SELECTOR_KEY") != null) {
            throw new ClassCastException();
        }
        this.f12681z0 = (C0750d) bundle.getParcelable("CALENDAR_CONSTRAINTS_KEY");
        if (bundle.getParcelable("DAY_VIEW_DECORATOR_KEY") != null) {
            throw new ClassCastException();
        }
        this.f12659B0 = bundle.getInt("TITLE_TEXT_RES_ID_KEY");
        this.f12660C0 = bundle.getCharSequence("TITLE_TEXT_KEY");
        this.f12662E0 = bundle.getInt("INPUT_MODE_KEY");
        this.f12663F0 = bundle.getInt("POSITIVE_BUTTON_TEXT_RES_ID_KEY");
        this.f12664G0 = bundle.getCharSequence("POSITIVE_BUTTON_TEXT_KEY");
        this.f12665H0 = bundle.getInt("POSITIVE_BUTTON_CONTENT_DESCRIPTION_RES_ID_KEY");
        this.f12666I0 = bundle.getCharSequence("POSITIVE_BUTTON_CONTENT_DESCRIPTION_KEY");
        this.f12667J0 = bundle.getInt("NEGATIVE_BUTTON_TEXT_RES_ID_KEY");
        this.f12668K0 = bundle.getCharSequence("NEGATIVE_BUTTON_TEXT_KEY");
        this.f12669L0 = bundle.getInt("NEGATIVE_BUTTON_CONTENT_DESCRIPTION_RES_ID_KEY");
        this.f12670M0 = bundle.getCharSequence("NEGATIVE_BUTTON_CONTENT_DESCRIPTION_KEY");
        CharSequence charSequence = this.f12660C0;
        if (charSequence == null) {
            charSequence = requireContext().getResources().getText(this.f12659B0);
        }
        this.f12675R0 = charSequence;
        if (charSequence != null) {
            CharSequence[] split = TextUtils.split(String.valueOf(charSequence), StringUtils.LF);
            if (split.length > 1) {
                charSequence = split[0];
            }
        } else {
            charSequence = null;
        }
        this.f12676S0 = charSequence;
    }

    @Override // androidx.fragment.app.DialogInterfaceOnCancelListenerC0486y
    public final Dialog onCreateDialog(Bundle bundle) {
        Context requireContext = requireContext();
        requireContext();
        int i2 = this.f12679x0;
        if (i2 == 0) {
            j();
            throw null;
        }
        Dialog dialog = new Dialog(requireContext, i2);
        Context context = dialog.getContext();
        this.f12661D0 = l(context, android.R.attr.windowFullscreen);
        this.f12673P0 = new G3.j(context, null, R.attr.materialCalendarStyle, R.style.Widget_MaterialComponents_MaterialCalendar);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(null, R.styleable.MaterialCalendar, R.attr.materialCalendarStyle, R.style.Widget_MaterialComponents_MaterialCalendar);
        int color = obtainStyledAttributes.getColor(R.styleable.MaterialCalendar_backgroundTint, 0);
        obtainStyledAttributes.recycle();
        this.f12673P0.initializeElevationOverlay(context);
        this.f12673P0.setFillColor(ColorStateList.valueOf(color));
        this.f12673P0.setElevation(AbstractC0181p0.getElevation(dialog.getWindow().getDecorView()));
        return dialog;
    }

    @Override // androidx.fragment.app.C
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(this.f12661D0 ? R.layout.mtrl_picker_fullscreen : R.layout.mtrl_picker_dialog, viewGroup);
        Context context = inflate.getContext();
        if (this.f12661D0) {
            inflate.findViewById(R.id.mtrl_calendar_frame).setLayoutParams(new LinearLayout.LayoutParams(k(context), -2));
        } else {
            inflate.findViewById(R.id.mtrl_calendar_main_pane).setLayoutParams(new LinearLayout.LayoutParams(k(context), -1));
        }
        AbstractC0181p0.setAccessibilityLiveRegion((TextView) inflate.findViewById(R.id.mtrl_picker_header_selection_text), 1);
        this.f12672O0 = (CheckableImageButton) inflate.findViewById(R.id.mtrl_picker_header_toggle);
        this.f12671N0 = (TextView) inflate.findViewById(R.id.mtrl_picker_title_text);
        this.f12672O0.setTag("TOGGLE_BUTTON_TAG");
        CheckableImageButton checkableImageButton = this.f12672O0;
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{android.R.attr.state_checked}, AbstractC0876a.getDrawable(context, R.drawable.material_ic_calendar_black_24dp));
        stateListDrawable.addState(new int[0], AbstractC0876a.getDrawable(context, R.drawable.material_ic_edit_black_24dp));
        checkableImageButton.setImageDrawable(stateListDrawable);
        this.f12672O0.setChecked(this.f12662E0 != 0);
        AbstractC0181p0.setAccessibilityDelegate(this.f12672O0, null);
        CheckableImageButton checkableImageButton2 = this.f12672O0;
        this.f12672O0.setContentDescription(this.f12662E0 == 1 ? checkableImageButton2.getContext().getString(R.string.mtrl_picker_toggle_to_calendar_input_mode) : checkableImageButton2.getContext().getString(R.string.mtrl_picker_toggle_to_text_input_mode));
        this.f12672O0.setOnClickListener(new ViewOnClickListenerC0038a(this, 7));
        j();
        throw null;
    }

    @Override // androidx.fragment.app.DialogInterfaceOnCancelListenerC0486y, android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        Iterator it = this.f12678w0.iterator();
        while (it.hasNext()) {
            ((DialogInterface.OnDismissListener) it.next()).onDismiss(dialogInterface);
        }
        ViewGroup viewGroup = (ViewGroup) getView();
        if (viewGroup != null) {
            viewGroup.removeAllViews();
        }
        super.onDismiss(dialogInterface);
    }

    @Override // androidx.fragment.app.DialogInterfaceOnCancelListenerC0486y, androidx.fragment.app.C
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("OVERRIDE_THEME_RES_ID", this.f12679x0);
        bundle.putParcelable("DATE_SELECTOR_KEY", null);
        C0750d c0750d = this.f12681z0;
        C0748b c0748b = new C0748b();
        c0748b.f12621a = C0748b.f12619f;
        c0748b.f12622b = C0748b.f12620g;
        c0748b.f12625e = C0755i.from(Long.MIN_VALUE);
        c0748b.f12621a = c0750d.f12626b.f12586n;
        c0748b.f12622b = c0750d.f12627e.f12586n;
        c0748b.f12623c = Long.valueOf(c0750d.f12629j.f12586n);
        c0748b.f12624d = c0750d.f12630m;
        c0748b.f12625e = c0750d.f12628f;
        MaterialCalendar materialCalendar = this.f12658A0;
        C c7 = materialCalendar == null ? null : materialCalendar.f12604i0;
        if (c7 != null) {
            c0748b.setOpenAt(c7.f12586n);
        }
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", c0748b.build());
        bundle.putParcelable("DAY_VIEW_DECORATOR_KEY", null);
        bundle.putInt("TITLE_TEXT_RES_ID_KEY", this.f12659B0);
        bundle.putCharSequence("TITLE_TEXT_KEY", this.f12660C0);
        bundle.putInt("INPUT_MODE_KEY", this.f12662E0);
        bundle.putInt("POSITIVE_BUTTON_TEXT_RES_ID_KEY", this.f12663F0);
        bundle.putCharSequence("POSITIVE_BUTTON_TEXT_KEY", this.f12664G0);
        bundle.putInt("POSITIVE_BUTTON_CONTENT_DESCRIPTION_RES_ID_KEY", this.f12665H0);
        bundle.putCharSequence("POSITIVE_BUTTON_CONTENT_DESCRIPTION_KEY", this.f12666I0);
        bundle.putInt("NEGATIVE_BUTTON_TEXT_RES_ID_KEY", this.f12667J0);
        bundle.putCharSequence("NEGATIVE_BUTTON_TEXT_KEY", this.f12668K0);
        bundle.putInt("NEGATIVE_BUTTON_CONTENT_DESCRIPTION_RES_ID_KEY", this.f12669L0);
        bundle.putCharSequence("NEGATIVE_BUTTON_CONTENT_DESCRIPTION_KEY", this.f12670M0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v3, types: [androidx.fragment.app.C, com.google.android.material.datepicker.A] */
    @Override // androidx.fragment.app.DialogInterfaceOnCancelListenerC0486y, androidx.fragment.app.C
    public void onStart() {
        super.onStart();
        Window window = requireDialog().getWindow();
        if (this.f12661D0) {
            window.setLayout(-1, -1);
            window.setBackgroundDrawable(this.f12673P0);
            if (!this.f12674Q0) {
                View findViewById = requireView().findViewById(R.id.fullscreen_header);
                AbstractC1834h.applyEdgeToEdge(window, true, T.getBackgroundColor(findViewById), null);
                AbstractC0181p0.setOnApplyWindowInsetsListener(findViewById, new x(findViewById, findViewById.getLayoutParams().height, findViewById.getPaddingTop()));
                this.f12674Q0 = true;
            }
        } else {
            window.setLayout(-2, -2);
            int dimensionPixelOffset = getResources().getDimensionPixelOffset(R.dimen.mtrl_calendar_dialog_background_inset);
            Rect rect = new Rect(dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset);
            window.setBackgroundDrawable(new InsetDrawable((Drawable) this.f12673P0, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset));
            window.getDecorView().setOnTouchListener(new ViewOnTouchListenerC1640a(requireDialog(), rect));
        }
        requireContext();
        int i2 = this.f12679x0;
        if (i2 == 0) {
            j();
            throw null;
        }
        j();
        MaterialCalendar newInstance = MaterialCalendar.newInstance(null, i2, this.f12681z0, null);
        this.f12658A0 = newInstance;
        if (this.f12662E0 == 1) {
            j();
            C0750d c0750d = this.f12681z0;
            ?? a7 = new A();
            Bundle bundle = new Bundle();
            bundle.putInt("THEME_RES_ID_KEY", i2);
            bundle.putParcelable("DATE_SELECTOR_KEY", null);
            bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", c0750d);
            a7.setArguments(bundle);
            newInstance = a7;
        }
        this.f12680y0 = newInstance;
        this.f12671N0.setText((this.f12662E0 == 1 && getResources().getConfiguration().orientation == 2) ? this.f12676S0 : this.f12675R0);
        getHeaderText();
        j();
        requireContext();
        throw null;
    }

    @Override // androidx.fragment.app.DialogInterfaceOnCancelListenerC0486y, androidx.fragment.app.C
    public void onStop() {
        this.f12680y0.f12600f0.clear();
        super.onStop();
    }
}
