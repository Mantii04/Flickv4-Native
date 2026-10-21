package com.thebluealliance.spectrum;

import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.DialogInterfaceOnCancelListenerC0486y;
import e.r;
import n4.DialogInterfaceOnClickListenerC1418a;
import n4.b;
import n4.d;
import n4.e;

/* loaded from: classes2.dex */
public class a extends DialogInterfaceOnCancelListenerC0486y implements e {

    /* renamed from: C0, reason: collision with root package name */
    public d f13461C0;

    /* renamed from: v0, reason: collision with root package name */
    public CharSequence f13465v0;

    /* renamed from: w0, reason: collision with root package name */
    public CharSequence f13466w0;

    /* renamed from: x0, reason: collision with root package name */
    public CharSequence f13467x0;

    /* renamed from: y0, reason: collision with root package name */
    public int[] f13468y0;

    /* renamed from: z0, reason: collision with root package name */
    public int f13469z0 = -1;

    /* renamed from: A0, reason: collision with root package name */
    public int f13459A0 = -1;

    /* renamed from: B0, reason: collision with root package name */
    public boolean f13460B0 = true;

    /* renamed from: D0, reason: collision with root package name */
    public int f13462D0 = 0;

    /* renamed from: E0, reason: collision with root package name */
    public int f13463E0 = -1;

    /* renamed from: F0, reason: collision with root package name */
    public int f13464F0 = 0;

    @Override // androidx.fragment.app.DialogInterfaceOnCancelListenerC0486y, android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        super.onCancel(dialogInterface);
        d dVar = this.f13461C0;
        if (dVar != null) {
            dVar.onColorSelected(false, this.f13469z0);
        }
    }

    @Override // n4.e
    public void onColorSelected(int i2) {
        this.f13459A0 = i2;
        if (this.f13460B0) {
            d dVar = this.f13461C0;
            if (dVar != null) {
                dVar.onColorSelected(true, i2);
            }
            dismiss();
        }
    }

    @Override // androidx.fragment.app.DialogInterfaceOnCancelListenerC0486y, androidx.fragment.app.C
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Bundle arguments = getArguments();
        if (arguments == null || !arguments.containsKey("title")) {
            this.f13465v0 = getContext().getText(R.string.default_dialog_title);
        } else {
            this.f13465v0 = arguments.getCharSequence("title");
        }
        if (arguments == null || !arguments.containsKey("colors")) {
            this.f13468y0 = new int[]{-16777216};
        } else {
            this.f13468y0 = arguments.getIntArray("colors");
        }
        int[] iArr = this.f13468y0;
        if (iArr == null || iArr.length == 0) {
            throw new IllegalArgumentException("SpectrumDialog must be created with an array of colors");
        }
        if (arguments == null || !arguments.containsKey("selected_color")) {
            this.f13459A0 = this.f13468y0[0];
        } else {
            this.f13459A0 = arguments.getInt("selected_color");
        }
        if (arguments == null || !arguments.containsKey("origina_selected_color")) {
            this.f13469z0 = this.f13459A0;
        } else {
            this.f13469z0 = arguments.getInt("origina_selected_color");
        }
        if (arguments == null || !arguments.containsKey("should_dismiss_on_color_selected")) {
            this.f13460B0 = true;
        } else {
            this.f13460B0 = arguments.getBoolean("should_dismiss_on_color_selected");
        }
        if (arguments == null || !arguments.containsKey("positive_button_text")) {
            this.f13466w0 = getContext().getText(android.R.string.ok);
        } else {
            this.f13466w0 = arguments.getCharSequence("positive_button_text");
        }
        if (arguments == null || !arguments.containsKey("negative_button_text")) {
            this.f13467x0 = getContext().getText(android.R.string.cancel);
        } else {
            this.f13467x0 = arguments.getCharSequence("negative_button_text");
        }
        if (arguments != null && arguments.containsKey("border_width")) {
            this.f13462D0 = arguments.getInt("border_width");
        }
        if (arguments != null && arguments.containsKey("fixed_column_count")) {
            this.f13463E0 = arguments.getInt("fixed_column_count");
        }
        if (arguments != null && arguments.containsKey("theme_res_id")) {
            this.f13464F0 = arguments.getInt("theme_res_id");
        }
        if (bundle == null || !bundle.containsKey("selected_color")) {
            return;
        }
        this.f13459A0 = bundle.getInt("selected_color");
    }

    @Override // androidx.fragment.app.DialogInterfaceOnCancelListenerC0486y
    public Dialog onCreateDialog(Bundle bundle) {
        r rVar = this.f13464F0 != 0 ? new r(getContext(), this.f13464F0) : new r(getContext());
        rVar.setTitle(this.f13465v0);
        if (this.f13460B0) {
            rVar.setPositiveButton(null, null);
        } else {
            rVar.setPositiveButton(this.f13466w0, new DialogInterfaceOnClickListenerC1418a(this));
        }
        rVar.setNegativeButton(this.f13467x0, new b(this));
        View inflate = LayoutInflater.from(getContext()).inflate(R.layout.dialog_color_picker, (ViewGroup) null);
        SpectrumPalette spectrumPalette = (SpectrumPalette) inflate.findViewById(R.id.palette);
        spectrumPalette.setColors(this.f13468y0);
        spectrumPalette.setSelectedColor(this.f13459A0);
        spectrumPalette.setOnColorSelectedListener(this);
        int i2 = this.f13462D0;
        if (i2 != 0) {
            spectrumPalette.setOutlineWidth(i2);
        }
        int i7 = this.f13463E0;
        if (i7 > 0) {
            spectrumPalette.setFixedColumnCount(i7);
        }
        rVar.setView(inflate);
        return rVar.create();
    }

    @Override // androidx.fragment.app.DialogInterfaceOnCancelListenerC0486y, androidx.fragment.app.C
    public void onDestroyView() {
        super.onDestroyView();
        this.f13461C0 = null;
    }

    @Override // androidx.fragment.app.DialogInterfaceOnCancelListenerC0486y, androidx.fragment.app.C
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("selected_color", this.f13459A0);
    }

    public void setOnColorSelectedListener(d dVar) {
        this.f13461C0 = dVar;
    }
}
